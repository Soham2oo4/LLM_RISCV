link_directories(${CMAKE_BINARY_DIR}/lib/ ${CUSTOM_LIB_PATH}/ ${CODASIP_INSTALL}/lib/)

set(LLVM_EXPORTED_SYMBOL_FILE ${CMAKE_CURRENT_SOURCE_DIR}/gold.exports)

# link standard libraries statically
if (UNIX OR MINGW)
  if (NOT "${CMAKE_SYSTEM_NAME}" STREQUAL "Darwin")
    set(LINK_LIBS "-static-libgcc;-static-libstdc++")
  endif()
endif()

llvm_add_library(LLVMGengold MODULE gold-plugin.cpp LINK_LIBS ${LINK_LIBS} OUTPUT_NAME "LLVMgold")

set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${CMAKE_BINARY_DIR}/bin)

target_link_libraries(LLVMGengold PUBLIC LLVMLTO LLVMLinker LLVMPasses LLVMAggressiveInstCombine
    LLVMCodasipGenAsmParser LLVMCodasipGenDesc LLVMCodasipGenAsmPrinter LLVMCodasipGenCodeGen LLVMCodasipGenInfo LLVMExtractorCodeGen LLVMExtractorDesc LLVMExtractorInfo
    LLVMAsmPrinter LLVMipo LLVMIRReader LLVMAsmParser LLVMBitWriter LLVMSelectionDAG LLVMAnalysis LLVMMCParser LLVMCodeGen LLVMInstrumentation LLVMMIRParser
    LLVMScalarOpts LLVMInstCombine LLVMTransformUtils LLVMAnalysis LLVMTarget LLVMCore LLVMMC LLVMSupport LLVMDebugInfoCodeView LLVMCodasipMisc
    LLVMDebugInfoMSF LLVMDemangle LLVMVectorize LLVMBinaryFormat LLVMObject LLVMBitReader LLVMProfileData LLVMCodasipJumpThreading LLVMRemarks LLVMDebugInfoDWARF LLVMBitstreamReader)

add_dependencies(LLVMGengold LLVMCodasipGenCodeGen)

if (MSVC)
    target_link_libraries(LLVMGengold PUBLIC psapi imagehlp)
endif()

target_link_libraries(LLVMGengold PUBLIC CodasipTools::protectorl CodasipTools::utility)

# install to /lib
install(TARGETS LLVMGengold COMPONENT LLVMGengold LIBRARY DESTINATION "${CMAKE_INSTALL_PREFIX}/lib")
