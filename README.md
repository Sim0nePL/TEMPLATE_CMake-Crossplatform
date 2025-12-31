# TEMPLATE_CMake-Crossplatform
Template for CMake crossplatform projects.

**This template is created with `linux -> other` cross-compilation in mind but it should be easy to use it on different OS**

## Overview
This template natively supports: 
- Cross-compilation using CMake toolchains and compilers like [llvm-mingw](https://github.com/mstorsjo/llvm-mingw).
- Managing external dependencies via [CMake FetchContent](https://cmake.org/cmake/help/latest/module/FetchContent.html)

Clean project structure, easy for modifications.

## Examples
Examples contain `externals/` libraries setups.

Mainly to show `ContentFetch_Declare` declarations for other harder to setup libraries like [imgui](https://github.com/ocornut/imgui), [glad](https://github.com/Dav1dde/glad).

Each branch contains example:
- `main` branch for [spdlog](https://github.com/gabime/spdlog) library setup.
- `raylib` branch for [raylib](https://github.com/raysan5/raylib) library setup.
- `opengl` branch for [glfw](https://github.com/glfw/glfw), [glad](https://github.com/Dav1dde/glad), [imgui](https://github.com/ocornut/imgui) libraries setups.
