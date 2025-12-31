cmake_minimum_required(VERSION 3.20)

project(glfw)

message("---- Library ${PROJECT_NAME} ----")
FetchContent_Declare(
	${PROJECT_NAME}
	GIT_REPOSITORY https://github.com/glfw/glfw.git
	#	GIT_TAG        
	GIT_PROGRESS   TRUE
	SOURCE_DIR     ${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}
)

FetchContent_MakeAvailable(${PROJECT_NAME})

