## Требования перед началом работы
1. Работа в Powershell 7+ (рекомендую с [terminal](https://github.com/microsoft/terminal))
2. Windows 10+ (рекомендовано)
3. Установленный winget (рекомендовано)

## 1. Установка зависимостей
### 1.1.1. Установка MSYS2
### 1.1.1. Установка вручную
Скачать с https://msys2.org/ и установить.
Желательно указать папку по умолчанию.
### 1.2. Установка через winget
`winget install MSYS2.MSYS2`
### 1.3. Установка компилятора, cmake, make
```
pacman -Syu
pacman -Su
pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-cmake make
```
(Если нет `pacman` - значит у вас нет в среде переменных (PATH) его, он обычно в `C:\msys64\usr\bin\pacman.exe`)
### 1.4. Проверка что всё установилось
```
g++ --version
cmake --version
make --version
```
### 1.5. Получение GLFW
Скачать с https://www.glfw.org/download
Положить куда-то в проект или в `C:\glfw\`
### 1.6. Получение ImGui (если нет в проекте `imgui`)
Скачать релиз с https://github.com/ocornut/imgui/releases/
Затем закинуть в папку проекта содержимое (файлы)
В `imgui` скопировать следующее:
```
imgui.h
imgui.cpp
imgui_internal.h
imstb_rectpack.h
imstb_textedit.h
imstb_truetype.h
imgui_draw.cpp
imgui_tables.cpp
imgui_widgets.cpp
backends/imgui_impl_opengl3.h
backends/imgui_impl_opengl3.cpp
backends/imgui_impl_glfw.h
backends/imgui_impl_glfw.cpp
```
## 2. Сборка
```
git clone git@github.com:mfuakirill/imgui_simpliest_example.git
cd imgui_simpliest_example
mkdir build && cd build
cmake .. -G "MinGW Makefiles"
mingw32-make.exe
```
