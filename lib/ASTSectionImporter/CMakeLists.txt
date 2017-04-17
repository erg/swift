add_cxx_library(swiftASTSectionImporter STATIC
  ASTSectionImporter.cpp
  LINK_LIBRARIES swiftBasic
  LLVM_COMPONENT_DEPENDS core)

