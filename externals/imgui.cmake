cmake_minimum_required(VERSION 3.20)

project(imgui)

message("---- Library ${PROJECT_NAME} ----")
FetchContent_Declare(
	${PROJECT_NAME}
	GIT_REPOSITORY https://github.com/ocornut/imgui.git
	#	GIT_TAG        
	GIT_PROGRESS   TRUE
	SOURCE_DIR     ${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}
)

FetchContent_MakeAvailable(${PROJECT_NAME})

file(GLOB SOURCES "${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}/*.cpp")

add_library(${PROJECT_NAME} STATIC 
	${SOURCES}
	"${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}/backends/imgui_impl_glfw.cpp"
	"${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}/backends/imgui_impl_opengl3.cpp"
)

target_include_directories(${PROJECT_NAME} PUBLIC 
	"${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}"
	"${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}/backends"
)
