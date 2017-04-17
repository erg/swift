include(TableGen)

# This needs to be a macro since tablegen (which is a function) needs to set
# variables in its parent scope.
macro(swift_tablegen)
  tablegen(SWIFT ${ARGN})
endmacro()

# This needs to be a macro since add_public_tablegen_target (which is a
# function) needs to set variables in its parent scope.
macro(swift_add_public_tablegen_target target)
  add_public_tablegen_target(${target})
endmacro()


function(find_swift_tablegen)
  find_program(SWIFT_TABLEGEN_EXE "llvm-tblgen" "${SWIFT_NATIVE_LLVM_TOOLS_PATH}"
    NO_DEFAULT_PATH)
  if ("${SWIFT_TABLEGEN_EXE}" STREQUAL "SWIFT_TABLEGEN_EXE-NOTFOUND")
    message(FATAL_ERROR "Failed to find tablegen in ${SWIFT_NATIVE_LLVM_TOOLS_PATH}")
  endif()
endfunction()

find_swift_tablegen()