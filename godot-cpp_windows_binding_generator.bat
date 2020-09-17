cd godot-cpp
call scons platform=windows target=debug bits=64 generate_bindings=yes -j4
call scons platform=windows target=release bits=64 generate_bindings=yes -j4
cd ..
if not exist "lib" mkdir lib
copy godot-cpp\bin\libgodot-cpp.windows.debug.64.lib lib\godot-cpp.windows.debug.64.lib
copy godot-cpp\bin\libgodot-cpp.windows.release.64.lib lib\godot-cpp.windows.release.64.lib
pause