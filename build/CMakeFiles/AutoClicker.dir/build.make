# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\Programming\C\Autoclicker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\Programming\C\Autoclicker\build

# Include any dependencies generated for this target.
include CMakeFiles/AutoClicker.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AutoClicker.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AutoClicker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AutoClicker.dir/flags.make

CMakeFiles/AutoClicker.dir/autoClicker.c.obj: CMakeFiles/AutoClicker.dir/flags.make
CMakeFiles/AutoClicker.dir/autoClicker.c.obj: F:/Programming/C/Autoclicker/autoClicker.c
CMakeFiles/AutoClicker.dir/autoClicker.c.obj: CMakeFiles/AutoClicker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:\Programming\C\Autoclicker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/AutoClicker.dir/autoClicker.c.obj"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/AutoClicker.dir/autoClicker.c.obj -MF CMakeFiles\AutoClicker.dir\autoClicker.c.obj.d -o CMakeFiles\AutoClicker.dir\autoClicker.c.obj -c F:\Programming\C\Autoclicker\autoClicker.c

CMakeFiles/AutoClicker.dir/autoClicker.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/AutoClicker.dir/autoClicker.c.i"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\Programming\C\Autoclicker\autoClicker.c > CMakeFiles\AutoClicker.dir\autoClicker.c.i

CMakeFiles/AutoClicker.dir/autoClicker.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/AutoClicker.dir/autoClicker.c.s"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\Programming\C\Autoclicker\autoClicker.c -o CMakeFiles\AutoClicker.dir\autoClicker.c.s

# Object files for target AutoClicker
AutoClicker_OBJECTS = \
"CMakeFiles/AutoClicker.dir/autoClicker.c.obj"

# External object files for target AutoClicker
AutoClicker_EXTERNAL_OBJECTS =

AutoClicker.exe: CMakeFiles/AutoClicker.dir/autoClicker.c.obj
AutoClicker.exe: CMakeFiles/AutoClicker.dir/build.make
AutoClicker.exe: CMakeFiles/AutoClicker.dir/linkLibs.rsp
AutoClicker.exe: CMakeFiles/AutoClicker.dir/objects1.rsp
AutoClicker.exe: CMakeFiles/AutoClicker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:\Programming\C\Autoclicker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable AutoClicker.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\AutoClicker.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AutoClicker.dir/build: AutoClicker.exe
.PHONY : CMakeFiles/AutoClicker.dir/build

CMakeFiles/AutoClicker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\AutoClicker.dir\cmake_clean.cmake
.PHONY : CMakeFiles/AutoClicker.dir/clean

CMakeFiles/AutoClicker.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\Programming\C\Autoclicker F:\Programming\C\Autoclicker F:\Programming\C\Autoclicker\build F:\Programming\C\Autoclicker\build F:\Programming\C\Autoclicker\build\CMakeFiles\AutoClicker.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/AutoClicker.dir/depend

