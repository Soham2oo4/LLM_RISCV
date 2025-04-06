#
# Codasip s.r.o.
#
# CONFIDENTIAL
#
# Copyright 2022 Codasip s.r.o.
#
# All Rights Reserved.
#
# NOTICE: All information contained in this file, is and shall remain the property of
# Codasip s.r.o. and its suppliers, if any.
#
# The intellectual and technical concepts contained herein are confidential and proprietary to
# Codasip s.r.o. and are protected by trade secret and copyright law.  In addition, elements of the
# technical concepts may be patent pending.
#
# This file is part of the Codasip Studio product. No part of the Studio product, including this
# file, may be use, copied, modified, or distributed except in accordance with the terms contained
# in Codasip license agreement under which you obtained this file.
#

cmake_minimum_required (VERSION 3.9.1)

# specify the cross compiler
set(CMAKE_C_COMPILER "${CROSS_PREFIX}clang")
if(WIN32)
    set(CMAKE_C_COMPILER "${CMAKE_C_COMPILER}.exe")
endif()
set(CMAKE_ASM_COMPILER "${CMAKE_C_COMPILER}")
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_AR "${CROSS_PREFIX}llvm-ar" CACHE FILEPATH "Archiver")
set(CMAKE_RANLIB "${CROSS_PREFIX}ranlib" CACHE FILEPATH "Archive indexer")

project(HAL LANGUAGES C)

# preprocessor header for OPTION_*
set(INCLUDE_LIST "" CACHE FILEPATH "List of include files forced as input for target sources")
foreach(file ${INCLUDE_LIST})
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -include \"${file}\"")
    set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -include \"${file}\"")
endforeach()

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -save-temps")

# user part
add_library(hal
    lib/cache.c
    lib/csr.c
    lib/dcache.c
    lib/icache.c
    lib/interrupt.c
)

target_include_directories(hal PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

# install library
install(TARGETS hal ARCHIVE DESTINATION ${INSTALL_DIR})
# install includes
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION ${INSTALL_DIR_INCLUDE}/hal FILES_MATCHING PATTERN *.h)
