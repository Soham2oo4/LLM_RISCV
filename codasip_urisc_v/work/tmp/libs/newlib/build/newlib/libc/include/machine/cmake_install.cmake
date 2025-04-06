# Install script for directory: /tools/toolchain/newlib/newlib/libc/include/machine

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/project/codasip_urisc_v/work/ia/sdk/bin/codasip_urisc_v-ia-llvm-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/_arc4random.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/_default_types.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/_endian.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/_time.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/_types.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/ansi.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/endian.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/fastmath.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/ieeefp.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/malloc.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/param.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/setjmp-dj.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/setjmp.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/stdlib.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/termios.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/time.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine/types.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine" TYPE FILE FILES
    "/tools/toolchain/newlib/newlib/libc/include/machine/_arc4random.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/_endian.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/_time.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/_types.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/ansi.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/endian.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/fastmath.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/ieeefp.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/malloc.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/param.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/setjmp-dj.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/setjmp.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/stdlib.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/termios.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/time.h"
    "/tools/toolchain/newlib/newlib/libc/include/machine/types.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/machine")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include" TYPE DIRECTORY FILES "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/machine" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

