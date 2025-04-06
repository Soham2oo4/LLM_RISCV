cmake_minimum_required(VERSION 3.4.3 FATAL_ERROR)
project("iSimulator_codasip_testbench" LANGUAGES CXX)

add_definitions(-D__IA_MODEL__)

include(GNUInstallDirs)
list(APPEND CMAKE_MODULE_PATH "${TOOLS_DIR}/${CMAKE_INSTALL_LIBDIR}/cmake/CodasipTools")
include("/home/project/codasip_urisc_v/work/tmp/simulator.ia/codasip_testbench_files.cmake")
include(isimulator)
