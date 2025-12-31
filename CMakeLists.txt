cmake_minimum_required(VERSION 3.20)

project(
	TEMPLATE_CMake-Crossplatform
	LANGUAGES CXX
	VERSION 1.0.0
)

include(FetchContent)
set(FETCHCONTENT_QUIET FALSE)

set(CMAKE_BUILD_TYPE Debug)

set(CMAKE_EXECUTABLE_NAME "${CMAKE_PROJECT_NAME}_bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Externals
include("${CMAKE_SOURCE_DIR}/externals/spdlog.cmake")

# Executable
file(GLOB SOURCES "${CMAKE_SOURCE_DIR}/src/*.cpp")
add_executable(${CMAKE_EXECUTABLE_NAME} ${SOURCES})

target_link_libraries(${CMAKE_EXECUTABLE_NAME} PRIVATE spdlog)
