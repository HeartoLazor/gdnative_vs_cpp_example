GDNative C++ Example
====================

This repository contains the example GDNative C++ library in support of this tutorial:
http://docs.godotengine.org/en/latest/tutorials/plugins/gdnative/gdnative-cpp-example.html

It is now based on the new NativeScript 1.1 Godot-cpp bindings library and will only work with Godot 3.1 and onwards.
Switch to the `3.0` branch to see the original NativeScript 1.0 version.

Hearto Changes
====================

Self contained windows vsproj 2017 project as example based on https://github.com/BastiaanOlij/gdnative_cpp_example

Setup:

	- copy godot-cpp repository files to godot-cpp folder (already copied 3.2 tag in this repository).
	- create a folder for gdnative cpp files (src in this example).
	- generate lib files running godot-cpp_windows_binding_generator.bat, only required when godot-cpp folder is updated.

For vsproj creation based in willnationsdev tutorial https://gist.github.com/willnationsdev/437eeaeea2e675c0bea53343f7ecd4cf:

	- Create a new Visual Studio project.
	- Name it and make sure it DOES NOT create a directory.
	- Select the folder we were working in.
	- Choose Visual C++ > Windows Desktop Wizard template.
	- Select options for both a dynamic library (.dll) and an empty project.
	- Once created, close Visual Studio and copy files inside the new directory to root project folder.

Structure Example:

	- .vs (hidden folder)
	- godot-cpp
	- lib
	- src
	- project_name.sln
	- project_name.vcx.proj
	- project_name.vcx.proj.filters
	- project_name.vcx.proj.user


Now open the vs project

Then select project_name project and go to "Project > Properties..." to open the project properties.

	(note that for the next step, for things that involve paths, it's advised that you use the "..." button on new entries to create records and after addition, make the path relative, example: C:\Git\godot_dll_test\godot-cpp\include\core > .\godot-cpp\include\core)

Ensure that you are on the x64 Debug or Release configurations at the top and make the following changes...

	VC++ Directories > Include Directories. Add 'project_name\godot-cpp\include', 'project_name\godot-cpp\include\gen', 'project_name\godot-cpp\include\core', and 'project_name\godot-cpp\godot_headers' to the list.
	VC++ Directories > Library Directories. Add 'project_name\lib'.
	VC++ Directories > Source Directories. Add 'project_name\src'.
	C/C++ > Linker > System. Subsystem = "Console (/SUBSYSTEM:CONSOLE)"
	C/C++ > Linker > Input. Add "godot-cpp.windows.debug.64.lib" (without quotes) for debug target and "godot-cpp.windows.release.64.lib" for release target to the Additional Dependencies parameter.

If you already had created src files, drag and drop them in header and source files directories at Visual Studio

Build and copy the dll from x64\Debug\project_name.dll or x64\Release\project_name.dll to demo\bin\project_name.dll