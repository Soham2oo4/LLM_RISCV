link_directories(${CMAKE_BINARY_DIR}/lib/ ${CUSTOM_LIB_PATH}/ ${CODASIP_INSTALL}/lib/)

add_codasip_llvm_tool(llvm-mc dummy.cpp)

set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${CMAKE_BINARY_DIR}/bin)

target_link_libraries(codasip-llvm-mc PRIVATE mcarch LLVMCodasipGenAsmParser LLVMCodasipGenDesc LLVMCodasipGenAsmPrinter LLVMCodasipGenCodeGen LLVMCodasipGenDisassembler LLVMCodasipGenInfo LLVMExtractorDesc LLVMExtractorInfo
    LLVMSelectionDAG LLVMCodeGen LLVMCodasipMisc LLVMScalarOpts LLVMProfileData LLVMTransformUtils LLVMAnalysis LLVMMCParser LLVMMC LLVMCore LLVMRemarks LLVMTarget LLVMSupport LLVMDemangle LLVMDebugInfoDWARF
    LLVMBitstreamReader)

if (MSVC)
    target_link_libraries(codasip-llvm-mc PRIVATE psapi imagehlp)
endif()

target_link_libraries(codasip-llvm-mc PRIVATE CodasipTools::protectorl CodasipTools::utility)
