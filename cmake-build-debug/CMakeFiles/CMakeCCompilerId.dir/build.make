# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Surface\CLionProjects\untitled9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CMakeCCompilerId.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CMakeCCompilerId.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CMakeCCompilerId.dir/flags.make

CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.obj: CMakeFiles/CMakeCCompilerId.dir/flags.make
CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.obj: CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.obj"
	C:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CMakeCCompilerId.dir\CMakeFiles\3.17.3\CompilerIdC\CMakeCCompilerId.c.obj   -c C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles\3.17.3\CompilerIdC\CMakeCCompilerId.c

CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.i"
	C:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles\3.17.3\CompilerIdC\CMakeCCompilerId.c > CMakeFiles\CMakeCCompilerId.dir\CMakeFiles\3.17.3\CompilerIdC\CMakeCCompilerId.c.i

CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.s"
	C:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles\3.17.3\CompilerIdC\CMakeCCompilerId.c -o CMakeFiles\CMakeCCompilerId.dir\CMakeFiles\3.17.3\CompilerIdC\CMakeCCompilerId.c.s

# Object files for target CMakeCCompilerId
CMakeCCompilerId_OBJECTS = \
"CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.obj"

# External object files for target CMakeCCompilerId
CMakeCCompilerId_EXTERNAL_OBJECTS =

CMakeCCompilerId.exe: CMakeFiles/CMakeCCompilerId.dir/CMakeFiles/3.17.3/CompilerIdC/CMakeCCompilerId.c.obj
CMakeCCompilerId.exe: CMakeFiles/CMakeCCompilerId.dir/build.make
CMakeCCompilerId.exe: CMakeFiles/CMakeCCompilerId.dir/linklibs.rsp
CMakeCCompilerId.exe: CMakeFiles/CMakeCCompilerId.dir/objects1.rsp
CMakeCCompilerId.exe: CMakeFiles/CMakeCCompilerId.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable CMakeCCompilerId.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CMakeCCompilerId.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CMakeCCompilerId.dir/build: CMakeCCompilerId.exe

.PHONY : CMakeFiles/CMakeCCompilerId.dir/build

CMakeFiles/CMakeCCompilerId.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CMakeCCompilerId.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CMakeCCompilerId.dir/clean

CMakeFiles/CMakeCCompilerId.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Surface\CLionProjects\untitled9 C:\Users\Surface\CLionProjects\untitled9 C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles\CMakeCCompilerId.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CMakeCCompilerId.dir/depend

