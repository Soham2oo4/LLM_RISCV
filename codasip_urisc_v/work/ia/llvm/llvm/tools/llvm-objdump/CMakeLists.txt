link_directories(${CMAKE_BINARY_DIR}/lib/ ${CUSTOM_LIB_PATH}/ ${CODASIP_INSTALL}/lib/)

add_codasip_llvm_tool(llvm-objdump dummy.cpp)

set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${CMAKE_BINARY_DIR}/bin)

target_link_libraries(codasip-llvm-objdump PRIVATE objdumparch LLVMCodasipGenDesc LLVMCodasipGenAsmPrinter LLVMCodasipGenCodeGen LLVMCodasipGenDisassembler LLVMCodasipGenInfo LLVMCodasipObjectFile LLVMExtractorDesc LLVMExtractorInfo
    LLVMSelectionDAG LLVMCodeGen LLVMCodasipMisc LLVMSymbolize LLVMDebugInfoDWARF LLVMDebugInfoPDB LLVMDebugInfoMSF LLVMDebugInfoCodeView LLVMScalarOpts LLVMProfileData LLVMTransformUtils LLVMAnalysis
    LLVMObject LLVMBitReader LLVMMCParser LLVMMC LLVMCore LLVMRemarks LLVMTarget LLVMSupport LLVMDemangle LLVMBitstreamReader)

if (MSVC)
    target_link_libraries(codasip-llvm-objdump PRIVATE psapi imagehlp)
endif()

target_link_libraries(codasip-llvm-objdump PRIVATE CodasipTools::protectorl CodasipTools::utility)
