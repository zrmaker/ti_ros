# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ece561/Projects/ti_ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ece561/Projects/ti_ros/build

# Utility rule file for clean_test_results_serial.

# Include the progress variables for this target.
include serial/tests/CMakeFiles/clean_test_results_serial.dir/progress.make

serial/tests/CMakeFiles/clean_test_results_serial:
	cd /home/ece561/Projects/ti_ros/build/serial/tests && /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/ece561/Projects/ti_ros/build/test_results/serial

clean_test_results_serial: serial/tests/CMakeFiles/clean_test_results_serial
clean_test_results_serial: serial/tests/CMakeFiles/clean_test_results_serial.dir/build.make

.PHONY : clean_test_results_serial

# Rule to build all files generated by this target.
serial/tests/CMakeFiles/clean_test_results_serial.dir/build: clean_test_results_serial

.PHONY : serial/tests/CMakeFiles/clean_test_results_serial.dir/build

serial/tests/CMakeFiles/clean_test_results_serial.dir/clean:
	cd /home/ece561/Projects/ti_ros/build/serial/tests && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_serial.dir/cmake_clean.cmake
.PHONY : serial/tests/CMakeFiles/clean_test_results_serial.dir/clean

serial/tests/CMakeFiles/clean_test_results_serial.dir/depend:
	cd /home/ece561/Projects/ti_ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ece561/Projects/ti_ros/src /home/ece561/Projects/ti_ros/src/serial/tests /home/ece561/Projects/ti_ros/build /home/ece561/Projects/ti_ros/build/serial/tests /home/ece561/Projects/ti_ros/build/serial/tests/CMakeFiles/clean_test_results_serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial/tests/CMakeFiles/clean_test_results_serial.dir/depend

