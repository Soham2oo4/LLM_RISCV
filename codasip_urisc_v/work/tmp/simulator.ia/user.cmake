
#[=======================================================================[.rst:
The following code expects code organization structure as follows:

model_root/
├─ simulator/
│  ├─ include/
│  │  ├─ user_component.h
│  ├─ user.cmake
│  ├─ user_component.cpp
#]=======================================================================]

# UNCOMENT AND MODIFY THE FOLLOWING CODE TO FORCE INCLUDES TO THE SOURCE FILES
# target_compile_options(${TARGET_NAME}
#     PRIVATE
#     $<$<CXX_COMPILER_ID:GNU,Clang>:-include user_component.h>
#     $<$<CXX_COMPILER_ID:MSVC>:/FI"user_component.h">
# )
# target_include_directories(${TARGET_NAME} PRIVATE "${CMAKE_CURRENT_LIST_DIR}/include")

# UNCOMENT AND MODIFY THE FOLLOWING CODE TO ADD PREPROCESSOR DEFINES
# target_compile_definitions(${TARGET_NAME} PRIVATE USER_DEFINITION1 USER_DEFINITION2)

# UNCOMENT AND MODIFY THE FOLLOWING CODE TO ADD A SOURCE FILE
# target_sources(${TARGET_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR}/user_component.cpp)

# UNCOMENT AND MODIFY THE FOLLOWING CODE TO ADD A LINK DEPENDENCIES
# target_link_libraries(${TARGET_NAME} PRIVATE "/home/user/work/codasip_simulator/lib/libm")
    