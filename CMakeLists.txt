cmake_minimum_required(VERSION 3.10)
project(imgui_example_claude)

set(CMAKE_CXX_STANDARD 17)

# Path to your GLFW folder
set(GLFW_DIR "C:/Users/user/Desktop/DEV/imgui_example/glfw-3.4.bin.WIN64/")

include_directories(
    imgui/
    ${GLFW_DIR}/include
)

add_executable(imgui_example_claude WIN32
    main.cpp
    imgui/imgui.cpp
    imgui/imgui_draw.cpp
    imgui/imgui_tables.cpp
    imgui/imgui_widgets.cpp
    imgui/imgui_impl_opengl3.cpp
    imgui/imgui_impl_glfw.cpp
)

target_link_libraries(imgui_example_claude
    ${GLFW_DIR}/lib-mingw-w64/libglfw3.a
    opengl32
    gdi32
    dwmapi
)
