# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/merlin/workspace/apps/gfx/atti-config

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/merlin/workspace/apps/gfx/atti-config/build

# Include any dependencies generated for this target.
include lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/progress.make

# Include the compile flags for this target's objects.
include lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o: ../lib/nanogui/ext/glfw/src/context.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o -MF CMakeFiles/glfw_objects.dir/context.c.o.d -o CMakeFiles/glfw_objects.dir/context.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/context.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/context.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/context.c > CMakeFiles/glfw_objects.dir/context.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/context.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/context.c -o CMakeFiles/glfw_objects.dir/context.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o: ../lib/nanogui/ext/glfw/src/init.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o -MF CMakeFiles/glfw_objects.dir/init.c.o.d -o CMakeFiles/glfw_objects.dir/init.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/init.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/init.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/init.c > CMakeFiles/glfw_objects.dir/init.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/init.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/init.c -o CMakeFiles/glfw_objects.dir/init.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o: ../lib/nanogui/ext/glfw/src/input.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o -MF CMakeFiles/glfw_objects.dir/input.c.o.d -o CMakeFiles/glfw_objects.dir/input.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/input.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/input.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/input.c > CMakeFiles/glfw_objects.dir/input.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/input.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/input.c -o CMakeFiles/glfw_objects.dir/input.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o: ../lib/nanogui/ext/glfw/src/monitor.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o -MF CMakeFiles/glfw_objects.dir/monitor.c.o.d -o CMakeFiles/glfw_objects.dir/monitor.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/monitor.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/monitor.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/monitor.c > CMakeFiles/glfw_objects.dir/monitor.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/monitor.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/monitor.c -o CMakeFiles/glfw_objects.dir/monitor.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.o: ../lib/nanogui/ext/glfw/src/vulkan.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.o -MF CMakeFiles/glfw_objects.dir/vulkan.c.o.d -o CMakeFiles/glfw_objects.dir/vulkan.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/vulkan.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/vulkan.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/vulkan.c > CMakeFiles/glfw_objects.dir/vulkan.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/vulkan.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/vulkan.c -o CMakeFiles/glfw_objects.dir/vulkan.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o: ../lib/nanogui/ext/glfw/src/window.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o -MF CMakeFiles/glfw_objects.dir/window.c.o.d -o CMakeFiles/glfw_objects.dir/window.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/window.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/window.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/window.c > CMakeFiles/glfw_objects.dir/window.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/window.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/window.c -o CMakeFiles/glfw_objects.dir/window.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o: ../lib/nanogui/ext/glfw/src/x11_init.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o -MF CMakeFiles/glfw_objects.dir/x11_init.c.o.d -o CMakeFiles/glfw_objects.dir/x11_init.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_init.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/x11_init.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_init.c > CMakeFiles/glfw_objects.dir/x11_init.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/x11_init.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_init.c -o CMakeFiles/glfw_objects.dir/x11_init.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o: ../lib/nanogui/ext/glfw/src/x11_monitor.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o -MF CMakeFiles/glfw_objects.dir/x11_monitor.c.o.d -o CMakeFiles/glfw_objects.dir/x11_monitor.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_monitor.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/x11_monitor.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_monitor.c > CMakeFiles/glfw_objects.dir/x11_monitor.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/x11_monitor.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_monitor.c -o CMakeFiles/glfw_objects.dir/x11_monitor.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o: ../lib/nanogui/ext/glfw/src/x11_window.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o -MF CMakeFiles/glfw_objects.dir/x11_window.c.o.d -o CMakeFiles/glfw_objects.dir/x11_window.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_window.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/x11_window.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_window.c > CMakeFiles/glfw_objects.dir/x11_window.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/x11_window.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/x11_window.c -o CMakeFiles/glfw_objects.dir/x11_window.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o: ../lib/nanogui/ext/glfw/src/xkb_unicode.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o -MF CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.d -o CMakeFiles/glfw_objects.dir/xkb_unicode.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/xkb_unicode.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/xkb_unicode.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/xkb_unicode.c > CMakeFiles/glfw_objects.dir/xkb_unicode.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/xkb_unicode.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/xkb_unicode.c -o CMakeFiles/glfw_objects.dir/xkb_unicode.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o: ../lib/nanogui/ext/glfw/src/posix_time.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o -MF CMakeFiles/glfw_objects.dir/posix_time.c.o.d -o CMakeFiles/glfw_objects.dir/posix_time.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/posix_time.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/posix_time.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/posix_time.c > CMakeFiles/glfw_objects.dir/posix_time.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/posix_time.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/posix_time.c -o CMakeFiles/glfw_objects.dir/posix_time.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.o: ../lib/nanogui/ext/glfw/src/posix_thread.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.o -MF CMakeFiles/glfw_objects.dir/posix_thread.c.o.d -o CMakeFiles/glfw_objects.dir/posix_thread.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/posix_thread.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/posix_thread.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/posix_thread.c > CMakeFiles/glfw_objects.dir/posix_thread.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/posix_thread.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/posix_thread.c -o CMakeFiles/glfw_objects.dir/posix_thread.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o: ../lib/nanogui/ext/glfw/src/glx_context.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o -MF CMakeFiles/glfw_objects.dir/glx_context.c.o.d -o CMakeFiles/glfw_objects.dir/glx_context.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/glx_context.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/glx_context.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/glx_context.c > CMakeFiles/glfw_objects.dir/glx_context.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/glx_context.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/glx_context.c -o CMakeFiles/glfw_objects.dir/glx_context.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.o: ../lib/nanogui/ext/glfw/src/egl_context.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.o -MF CMakeFiles/glfw_objects.dir/egl_context.c.o.d -o CMakeFiles/glfw_objects.dir/egl_context.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/egl_context.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/egl_context.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/egl_context.c > CMakeFiles/glfw_objects.dir/egl_context.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/egl_context.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/egl_context.c -o CMakeFiles/glfw_objects.dir/egl_context.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.o: ../lib/nanogui/ext/glfw/src/osmesa_context.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.o -MF CMakeFiles/glfw_objects.dir/osmesa_context.c.o.d -o CMakeFiles/glfw_objects.dir/osmesa_context.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/osmesa_context.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/osmesa_context.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/osmesa_context.c > CMakeFiles/glfw_objects.dir/osmesa_context.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/osmesa_context.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/osmesa_context.c -o CMakeFiles/glfw_objects.dir/osmesa_context.c.s

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o: ../lib/nanogui/ext/glfw/src/linux_joystick.c
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/merlin/workspace/apps/gfx/atti-config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o -MF CMakeFiles/glfw_objects.dir/linux_joystick.c.o.d -o CMakeFiles/glfw_objects.dir/linux_joystick.c.o -c /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/linux_joystick.c

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/linux_joystick.c.i"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/linux_joystick.c > CMakeFiles/glfw_objects.dir/linux_joystick.c.i

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/linux_joystick.c.s"
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src/linux_joystick.c -o CMakeFiles/glfw_objects.dir/linux_joystick.c.s

glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/vulkan.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/posix_thread.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/egl_context.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/osmesa_context.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o
glfw_objects: lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/build.make
.PHONY : glfw_objects

# Rule to build all files generated by this target.
lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/build: glfw_objects
.PHONY : lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/build

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/clean:
	cd /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw_objects.dir/cmake_clean.cmake
.PHONY : lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/clean

lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/depend:
	cd /home/merlin/workspace/apps/gfx/atti-config/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/merlin/workspace/apps/gfx/atti-config /home/merlin/workspace/apps/gfx/atti-config/lib/nanogui/ext/glfw/src /home/merlin/workspace/apps/gfx/atti-config/build /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src /home/merlin/workspace/apps/gfx/atti-config/build/lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/nanogui/ext/glfw/src/CMakeFiles/glfw_objects.dir/depend

