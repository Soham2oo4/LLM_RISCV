# Install script for directory: /tools/toolchain/newlib/newlib/libc/include/sys

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
   "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_default_fcntl.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_intsup.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_locale.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_pthreadtypes.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_sigset.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_stdint.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_timespec.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_timeval.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_types.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/_tz_structs.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/cdefs.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/config.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/custom_file.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/dir.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/dirent.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/errno.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/fcntl.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/features.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/fenv.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/file.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/iconvnls.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/lock.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/mman.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/param.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/queue.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/reent.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/resource.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/sched.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/select.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/signal.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/stat.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/stdio.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/string.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/syslimits.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/time.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/timeb.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/times.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/timespec.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/tree.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/types.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/unistd.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/utime.h;/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys/wait.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys" TYPE FILE FILES
    "/tools/toolchain/newlib/newlib/libc/include/sys/_default_fcntl.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_intsup.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_locale.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_pthreadtypes.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_sigset.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_stdint.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_timespec.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_timeval.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/_tz_structs.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/config.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/custom_file.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/dir.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/dirent.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/errno.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/fcntl.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/features.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/fenv.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/file.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/iconvnls.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/lock.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/mman.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/param.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/queue.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/resource.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/sched.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/select.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/signal.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/stat.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/stdio.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/string.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/syslimits.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/time.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/timeb.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/times.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/timespec.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/tree.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/types.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/unistd.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/utime.h"
    "/tools/toolchain/newlib/newlib/libc/include/sys/wait.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include/sys")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/project/codasip_urisc_v/work/tmp/libs/newlib/install/include" TYPE DIRECTORY FILES "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/sys" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

