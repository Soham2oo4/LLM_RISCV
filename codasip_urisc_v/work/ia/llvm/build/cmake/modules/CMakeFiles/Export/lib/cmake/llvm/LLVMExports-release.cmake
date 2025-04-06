#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LLVMCodasipGenCodeGen" for configuration "Release"
set_property(TARGET LLVMCodasipGenCodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipGenCodeGen PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenCodeGen.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipGenCodeGen )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipGenCodeGen "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenCodeGen.a" )

# Import target "LLVMCodasipGenAsmParser" for configuration "Release"
set_property(TARGET LLVMCodasipGenAsmParser APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipGenAsmParser PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenAsmParser.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipGenAsmParser )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipGenAsmParser "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenAsmParser.a" )

# Import target "LLVMCodasipGenDisassembler" for configuration "Release"
set_property(TARGET LLVMCodasipGenDisassembler APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipGenDisassembler PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenDisassembler.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipGenDisassembler )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipGenDisassembler "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenDisassembler.a" )

# Import target "LLVMCodasipGenAsmPrinter" for configuration "Release"
set_property(TARGET LLVMCodasipGenAsmPrinter APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipGenAsmPrinter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenAsmPrinter.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipGenAsmPrinter )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipGenAsmPrinter "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenAsmPrinter.a" )

# Import target "LLVMCodasipGenInfo" for configuration "Release"
set_property(TARGET LLVMCodasipGenInfo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipGenInfo PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenInfo.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipGenInfo )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipGenInfo "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenInfo.a" )

# Import target "LLVMCodasipGenDesc" for configuration "Release"
set_property(TARGET LLVMCodasipGenDesc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipGenDesc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenDesc.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipGenDesc )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipGenDesc "${_IMPORT_PREFIX}/lib/libLLVMCodasipGenDesc.a" )

# Import target "LLVMCodasipCustomModules" for configuration "Release"
set_property(TARGET LLVMCodasipCustomModules APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipCustomModules PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipCustomModules.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipCustomModules )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipCustomModules "${_IMPORT_PREFIX}/lib/libLLVMCodasipCustomModules.a" )

# Import target "codasip-llc" for configuration "Release"
set_property(TARGET codasip-llc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(codasip-llc PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/codasip_urisc_v-ia-llc"
  )

list(APPEND _IMPORT_CHECK_TARGETS codasip-llc )
list(APPEND _IMPORT_CHECK_FILES_FOR_codasip-llc "${_IMPORT_PREFIX}/bin/codasip_urisc_v-ia-llc" )

# Import target "codasip-llvm-mc" for configuration "Release"
set_property(TARGET codasip-llvm-mc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(codasip-llvm-mc PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/codasip_urisc_v-ia-llvm-mc"
  )

list(APPEND _IMPORT_CHECK_TARGETS codasip-llvm-mc )
list(APPEND _IMPORT_CHECK_FILES_FOR_codasip-llvm-mc "${_IMPORT_PREFIX}/bin/codasip_urisc_v-ia-llvm-mc" )

# Import target "codasip-llvm-objdump" for configuration "Release"
set_property(TARGET codasip-llvm-objdump APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(codasip-llvm-objdump PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/codasip_urisc_v-ia-llvm-objdump"
  )

list(APPEND _IMPORT_CHECK_TARGETS codasip-llvm-objdump )
list(APPEND _IMPORT_CHECK_FILES_FOR_codasip-llvm-objdump "${_IMPORT_PREFIX}/bin/codasip_urisc_v-ia-llvm-objdump" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
