cmake_minimum_required(VERSION 3.4.3 FATAL_ERROR)

include(GNUInstallDirs)
list(APPEND CMAKE_MODULE_PATH "${TOOLS_DIR}/${CMAKE_INSTALL_LIBDIR}/cmake/CodasipTools")
include(CodasipStudioCommon)
include(CodasipBuildHelpers)
find_package(Clang REQUIRED CONFIG HINTS ${CMAKE_PREFIX_PATH} NO_DEFAULT_PATH)
find_package(Threads REQUIRED)
find_package(reflex REQUIRED CONFIG HINTS "${TOOLS_DIR}" NO_DEFAULT_PATH)
find_package(CodasipGenLLVM MODULE)
message(WARNING "Use target_link_directories instead link_directories.")
# Needed to find LLDB libraries
link_directories(${CODASIP_INSTALL}/lib/)

set(TARGET ${OUTPUT_PREFIX}lldb)

codasip_add_executable(
    ${TARGET}
    INSTALL_TYPE "STANDARD"
    SOURCES dummy.cpp
)
codasip_add_executable(
    lldb-mi
    INSTALL_TYPE "STANDARD"
    SOURCES dummy.cpp
)

# LLDB has hardcoded target liblldb inside their build system
if(WIN32)
    set(DEBUGGER_LIBS liblldb)
else()
    set(DEBUGGER_LIBS lldb)
endif()

set(DEBUGGER_LIBS
    # LLDB
    ${DEBUGGER_LIBS}
    lldbDataFormatters
    lldbInitialization
    lldbExpression
    lldbTarget
    lldbBreakpoint
    lldbCore
    lldbSymbol
    lldbCommands
    lldbInterpreter
    lldbCommands
    lldbPluginCPlusPlusLanguage
    lldbPluginCPPRuntime
    lldbPluginObjCLanguage
    lldbPluginMemoryHistoryASan
    lldbPluginScriptInterpreterNone
    lldbPluginClangCommon
    lldbPluginSymbolFileDWARF
    lldbPluginExpressionParserClang
    lldbPluginObjectFileCodal
    lldbPluginSymbolFileCodal
    lldbPluginSymbolFileSymtab
    lldbPluginSymbolFilePDB
    lldbPluginSymbolFileNativePDB
    lldbPluginSymbolFileBreakpad
    lldbPluginSymbolVendorELF
    lldbPluginUnwindAssemblyInstEmulation
    lldbPluginObjectFileELF
    lldbPluginObjectFileBreakpad
    lldbPluginAppleObjCRuntime
    lldbPluginObjCRuntime
    lldbPluginCXXItaniumABI
    lldbPluginDisassemblerLLVM
    lldbPluginProcessElfCore
    lldbPluginDynamicLoaderWindowsDYLD
    lldbPluginDynamicLoaderPosixDYLD
    lldbPluginDynamicLoaderStatic
    lldbPluginInstrumentationRuntimeASan
    lldbPluginInstrumentationRuntimeTSan
    lldbPluginInstrumentationRuntimeUBSan
    lldbPluginInstrumentationRuntimeMainThreadChecker
    lldbPluginObjectFileJIT
    lldbPluginPlatformGDB
    lldbPluginProcessGDBRemote
    lldbPluginPlatformLinux
    lldbPluginPlatformPOSIX
    lldbPluginObjectFileMachO
    lldbPluginSymbolVendorMacOSX
    lldbPluginObjectContainerMachOArchive
)

# Windows and Mingw
if(WIN32)
    set(DEBUGGER_LIBS ${DEBUGGER_LIBS} lldbPluginPlatformWindows lldbPluginProcessWindowsCommon)
elseif("${CMAKE_SYSTEM_NAME}" STREQUAL "Darwin")
    set(DEBUGGER_LIBS ${DEBUGGER_LIBS} lldbPluginPlatformMacOSX lldbHostMacOSXObjCXX)
else()
    set(DEBUGGER_LIBS ${DEBUGGER_LIBS} lldbPluginProcessPOSIX)
endif()

set(DEBUGGER_LIBS
    ${DEBUGGER_LIBS}
    lldbPluginABIStandalone_codasip
    lldbPluginPlatformCodasipSimulator
    lldbCodasipSimulatorProcess
    lldbPluginProcessUtility
    lldbDataFormatters
    lldbHost
    lldbCodasip
    lldbBase
    lldbUtility
    # CLANG
    clangCodeGen
    clangRewrite
    # LLVM, note LLVMCodasip* libraries build from the model should be linked first
    LLVMCodasipGenAsmParser
    LLVMCodasipGenAsmPrinter
    LLVMCodasipGenCodeGen
    LLVMCodasipGenDisassembler
    LLVMCodasipGenDesc
    LLVMAsmPrinter
    LLVMMCDisassembler
    LLVMDebugInfoPDB
    LLVMExtractorCodeGen
    LLVMInterpreter
    LLVMOption
    LLVMCoverage
    LLVMMCJIT
    # Tools
    CodasipTools::protectorl
)

if(WIN32)
    set(DEBUGGER_LIBS ${DEBUGGER_LIBS} ws2_32 Version Rpcrt4)
endif()

# LLDB uses wmain on MSVC
if(MSVC)
    set_target_properties(${TARGET} PROPERTIES LINK_FLAGS "/ENTRY:wmainCRTStartup")
endif()

if(MSVC)
    target_link_libraries(${TARGET} PRIVATE lldbarch ${DEBUGGER_LIBS} psapi)
    target_link_libraries(lldb-mi PRIVATE lldbmiarch ${DEBUGGER_LIBS} psapi)
elseif("${CMAKE_SYSTEM_NAME}" STREQUAL "Darwin")
    target_link_libraries(${TARGET} PRIVATE lldbarch ${DEBUGGER_LIBS} "-framework Foundation -framework CoreFoundation -framework CoreServices -framework Security -lxml2 -lncurses -ledit -lcompression")
    target_link_libraries(lldb-mi PRIVATE lldbmiarch ${DEBUGGER_LIBS} "-framework Foundation -framework CoreFoundation -framework CoreServices -framework Security -lxml2 -lncurses -ledit -lcompression")
elseif(UNIX)
    # will be fixed with LLDB build reworked as LLVM and CLANG build
    target_link_libraries(${TARGET} PRIVATE -Wl,--start-group lldbarch ${DEBUGGER_LIBS} edit -Wl,--end-group)
    target_link_libraries(lldb-mi PRIVATE -Wl,--start-group lldbmiarch ${DEBUGGER_LIBS} edit -Wl,--end-group)
else()
    target_link_libraries(${TARGET} PRIVATE -Wl,--start-group lldbarch ${DEBUGGER_LIBS} -Wl,--end-group)
    target_link_libraries(lldb-mi PRIVATE -Wl,--start-group lldbmiarch ${DEBUGGER_LIBS} -Wl,--end-group)
endif()

# move debugger to destination with prefixed name
set_target_properties(${TARGET} PROPERTIES OUTPUT_NAME ${OUTPUT_PREFIX}lldb)
set_target_properties(lldb-mi PROPERTIES OUTPUT_NAME ${OUTPUT_PREFIX}lldb-mi)
