# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/107/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/107/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/valery3x/Study/AVS/Lab2/acs-spring-l2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug

# Include any dependencies generated for this target.
include units/CMakeFiles/units_run.dir/depend.make

# Include the progress variables for this target.
include units/CMakeFiles/units_run.dir/progress.make

# Include the compile flags for this target's objects.
include units/CMakeFiles/units_run.dir/flags.make

units/CMakeFiles/units_run.dir/test_decoder.cpp.o: units/CMakeFiles/units_run.dir/flags.make
units/CMakeFiles/units_run.dir/test_decoder.cpp.o: ../units/test_decoder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object units/CMakeFiles/units_run.dir/test_decoder.cpp.o"
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/units_run.dir/test_decoder.cpp.o -c /home/valery3x/Study/AVS/Lab2/acs-spring-l2/units/test_decoder.cpp

units/CMakeFiles/units_run.dir/test_decoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/units_run.dir/test_decoder.cpp.i"
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/valery3x/Study/AVS/Lab2/acs-spring-l2/units/test_decoder.cpp > CMakeFiles/units_run.dir/test_decoder.cpp.i

units/CMakeFiles/units_run.dir/test_decoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/units_run.dir/test_decoder.cpp.s"
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/valery3x/Study/AVS/Lab2/acs-spring-l2/units/test_decoder.cpp -o CMakeFiles/units_run.dir/test_decoder.cpp.s

units/CMakeFiles/units_run.dir/test_executor.cpp.o: units/CMakeFiles/units_run.dir/flags.make
units/CMakeFiles/units_run.dir/test_executor.cpp.o: ../units/test_executor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object units/CMakeFiles/units_run.dir/test_executor.cpp.o"
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/units_run.dir/test_executor.cpp.o -c /home/valery3x/Study/AVS/Lab2/acs-spring-l2/units/test_executor.cpp

units/CMakeFiles/units_run.dir/test_executor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/units_run.dir/test_executor.cpp.i"
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/valery3x/Study/AVS/Lab2/acs-spring-l2/units/test_executor.cpp > CMakeFiles/units_run.dir/test_executor.cpp.i

units/CMakeFiles/units_run.dir/test_executor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/units_run.dir/test_executor.cpp.s"
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/valery3x/Study/AVS/Lab2/acs-spring-l2/units/test_executor.cpp -o CMakeFiles/units_run.dir/test_executor.cpp.s

# Object files for target units_run
units_run_OBJECTS = \
"CMakeFiles/units_run.dir/test_decoder.cpp.o" \
"CMakeFiles/units_run.dir/test_executor.cpp.o"

# External object files for target units_run
units_run_EXTERNAL_OBJECTS =

units/units_run: units/CMakeFiles/units_run.dir/test_decoder.cpp.o
units/units_run: units/CMakeFiles/units_run.dir/test_executor.cpp.o
units/units_run: units/CMakeFiles/units_run.dir/build.make
units/units_run: units/CMakeFiles/units_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable units_run"
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/units_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
units/CMakeFiles/units_run.dir/build: units/units_run

.PHONY : units/CMakeFiles/units_run.dir/build

units/CMakeFiles/units_run.dir/clean:
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units && $(CMAKE_COMMAND) -P CMakeFiles/units_run.dir/cmake_clean.cmake
.PHONY : units/CMakeFiles/units_run.dir/clean

units/CMakeFiles/units_run.dir/depend:
	cd /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/valery3x/Study/AVS/Lab2/acs-spring-l2 /home/valery3x/Study/AVS/Lab2/acs-spring-l2/units /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units /home/valery3x/Study/AVS/Lab2/acs-spring-l2/cmake-build-debug/units/CMakeFiles/units_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : units/CMakeFiles/units_run.dir/depend

