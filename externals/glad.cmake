cmake_minimum_required(VERSION 3.20)

project(glad)

message("---- Library ${PROJECT_NAME} ----")
FetchContent_Declare(
	${PROJECT_NAME}
	GIT_REPOSITORY https://github.com/Dav1dde/glad.git
	GIT_TAG        glad2
	GIT_PROGRESS   TRUE
	SOURCE_DIR     ${CMAKE_SOURCE_DIR}/externals/${PROJECT_NAME}
	SOURCE_SUBDIR  cmake # Necessary beacause glad CMakeLists.txt file isn't in repo main directory
)

FetchContent_MakeAvailable(${PROJECT_NAME})

glad_add_library(${PROJECT_NAME} STATIC 
	LOADER 
	REPRODUCIBLE 
	API gl:core=4.6
) 
