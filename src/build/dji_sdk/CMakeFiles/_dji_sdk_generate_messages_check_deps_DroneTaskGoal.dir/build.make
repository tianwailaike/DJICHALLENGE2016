# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/Documents/roswork/DJIChallenge2016_new/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Documents/roswork/DJIChallenge2016_new/src/build

# Utility rule file for _dji_sdk_generate_messages_check_deps_DroneTaskGoal.

# Include the progress variables for this target.
include dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/progress.make

dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && ../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/indigo/share/genmsg/cmake/../../../lib/genmsg/genmsg_check_deps.py dji_sdk /root/Documents/roswork/DJIChallenge2016_new/src/build/devel/share/dji_sdk/msg/DroneTaskGoal.msg 

_dji_sdk_generate_messages_check_deps_DroneTaskGoal: dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal
_dji_sdk_generate_messages_check_deps_DroneTaskGoal: dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/build.make
.PHONY : _dji_sdk_generate_messages_check_deps_DroneTaskGoal

# Rule to build all files generated by this target.
dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/build: _dji_sdk_generate_messages_check_deps_DroneTaskGoal
.PHONY : dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/build

dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/clean:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && $(CMAKE_COMMAND) -P CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/cmake_clean.cmake
.PHONY : dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/clean

dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/depend:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Documents/roswork/DJIChallenge2016_new/src /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk /root/Documents/roswork/DJIChallenge2016_new/src/build /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dji_sdk/CMakeFiles/_dji_sdk_generate_messages_check_deps_DroneTaskGoal.dir/depend

