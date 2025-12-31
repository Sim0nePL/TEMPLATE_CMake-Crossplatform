cmake_minimum_required(VERSION 3.20)

project(raylib)

message("---- Library ${PROJECT_NAME} ----")
FetchContent_Declare(
	${PROJECT_NAME}
	GIT_REPOSITORY https://github.com/raysan5/raylib.git
	# GIT_TAG        5.5
	GIT_PROGRESS   TRUE
	SOURCE_DIR     ${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}
)

FetchContent_MakeAvailable(${PROJECT_NAME})

