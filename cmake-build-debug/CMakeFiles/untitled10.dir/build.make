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
include CMakeFiles/untitled10.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/untitled10.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/untitled10.dir/flags.make

CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.obj: CMakeFiles/untitled10.dir/flags.make
CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.obj: ../rwmutex/rwmutex.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.obj"
	C:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\untitled10.dir\rwmutex\rwmutex.c.obj   -c C:\Users\Surface\CLionProjects\untitled9\rwmutex\rwmutex.c

CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.i"
	C:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Surface\CLionProjects\untitled9\rwmutex\rwmutex.c > CMakeFiles\untitled10.dir\rwmutex\rwmutex.c.i

CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.s"
	C:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Surface\CLionProjects\untitled9\rwmutex\rwmutex.c -o CMakeFiles\untitled10.dir\rwmutex\rwmutex.c.s

# Object files for target untitled10
untitled10_OBJECTS = \
"CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.obj"

# External object files for target untitled10
untitled10_EXTERNAL_OBJECTS =

untitled10.exe: CMakeFiles/untitled10.dir/rwmutex/rwmutex.c.obj
untitled10.exe: CMakeFiles/untitled10.dir/build.make
untitled10.exe: CMakeFiles/untitled10.dir/linklibs.rsp
untitled10.exe: CMakeFiles/untitled10.dir/objects1.rsp
untitled10.exe: CMakeFiles/untitled10.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable untitled10.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\untitled10.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/untitled10.dir/build: untitled10.exe

.PHONY : CMakeFiles/untitled10.dir/build

CMakeFiles/untitled10.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\untitled10.dir\cmake_clean.cmake
.PHONY : CMakeFiles/untitled10.dir/clean

CMakeFiles/untitled10.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Surface\CLionProjects\untitled9 C:\Users\Surface\CLionProjects\untitled9 C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug C:\Users\Surface\CLionProjects\untitled9\cmake-build-debug\CMakeFiles\untitled10.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/untitled10.dir/depend

