cmake_minimum_required(VERSION 3.0)
project(am-lang CXX)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_BUILD_TYPE "Release")
option(INTERPRETER_REPLICATE_SWITCH "Interpreter replicate switch" ON)
option(LINK_TIME_OPTIMIZATION       "Link Time Optimization"       ON)

set(SOURCES
    src/instruction.cpp
    src/interpreter.cpp
    src/lexer.cpp
    src/main.cpp
    src/parser.cpp
    src/utilities.cpp
)

configure_file(src/config.hpp.in ${PROJECT_BINARY_DIR}/src/config.hpp)
include_directories(${PROJECT_BINARY_DIR}/src)

add_executable(${PROJECT_NAME} ${SOURCES})

if(CMAKE_CXX_COMPILER_ID MATCHES Clang OR CMAKE_COMPILER_IS_GNUCXX)
    target_compile_options(${PROJECT_NAME} PRIVATE -std=c++17 -Wall -Wextra -fno-exceptions -fno-rtti -fno-stack-protector)
endif()

if(LINK_TIME_OPTIMIZATION AND (CMAKE_CXX_COMPILER_ID MATCHES Clang OR CMAKE_COMPILER_IS_GNUCXX))
    set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS -flto)
    target_compile_options(${PROJECT_NAME} PRIVATE -flto)
endif()
