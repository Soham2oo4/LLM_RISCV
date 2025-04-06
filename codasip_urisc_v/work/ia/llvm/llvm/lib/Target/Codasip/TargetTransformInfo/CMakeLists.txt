# Codasip s.r.o.
#
# CONFIDENTIAL
#
# Copyright 2020 Codasip s.r.o.
#
# All Rights Reserved.
# This file is part of the Codasip Studio product. No part of the Studio product, including this
# file, may be use, copied, modified, or distributed except in accordance with the terms contained
# in Codasip license agreement under which you obtained this file.

find_package(LLVM REQUIRED CONFIG HINTS "${TOOLS_DIR}" NO_DEFAULT_PATH)

# link standard libraries statically
if (UNIX OR MINGW)
  if (NOT "${CMAKE_SYSTEM_NAME}" STREQUAL "Darwin")
    set(LINK_LIBS "-static-libgcc;-static-libstdc++")
  endif()
endif()

llvm_add_library(
    codasip-tti
    MODULE
    CodasipTTI.cpp
    
    CodasipGenTargetTransformInfo.cpp
    
    LINK_LIBS
    ${LINK_LIBS}
)

set_target_properties(
    codasip-tti
    PROPERTIES
        OUTPUT_NAME "${OUTPUT_PREFIX}tti"
)

target_link_libraries(
    codasip-tti
    PRIVATE
        "$<$<PLATFORM_ID:Windows>:LLVMCodeGen>"
)

target_include_directories(
    codasip-tti
    PRIVATE
        "${LLVM_INCLUDE_DIRS}"
)

# install to /bin
install(TARGETS codasip-tti COMPONENT codasip-tti LIBRARY DESTINATION "${CMAKE_INSTALL_PREFIX}/bin")
