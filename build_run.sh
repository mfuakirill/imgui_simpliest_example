root=$(pwd)
mkdir build; cd build
cmake .. -G "MinGW Makefiles" -DCMAKE_C_COMPILER=C:/mingw64/bin/gcc.exe -DCMAKE_CXX_COMPILER=C:/mingw64/bin/g++.exe \
&& mingw32-make.exe \
&& ./imgui_example_claude.exe
cd $root
