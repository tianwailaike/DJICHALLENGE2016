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

# Include any dependencies generated for this target.
include pid/CMakeFiles/controller.dir/depend.make

# Include the progress variables for this target.
include pid/CMakeFiles/controller.dir/progress.make

# Include the compile flags for this target's objects.
include pid/CMakeFiles/controller.dir/flags.make

pid/CMakeFiles/controller.dir/src/controller.cpp.o: pid/CMakeFiles/controller.dir/flags.make
pid/CMakeFiles/controller.dir/src/controller.cpp.o: ../pid/src/controller.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object pid/CMakeFiles/controller.dir/src/controller.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/pid && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/controller.dir/src/controller.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/pid/src/controller.cpp

pid/CMakeFiles/controller.dir/src/controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/controller.dir/src/controller.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/pid && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/pid/src/controller.cpp > CMakeFiles/controller.dir/src/controller.cpp.i

pid/CMakeFiles/controller.dir/src/controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/controller.dir/src/controller.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/pid && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/pid/src/controller.cpp -o CMakeFiles/controller.dir/src/controller.cpp.s

pid/CMakeFiles/controller.dir/src/controller.cpp.o.requires:
.PHONY : pid/CMakeFiles/controller.dir/src/controller.cpp.o.requires

pid/CMakeFiles/controller.dir/src/controller.cpp.o.provides: pid/CMakeFiles/controller.dir/src/controller.cpp.o.requires
	$(MAKE) -f pid/CMakeFiles/controller.dir/build.make pid/CMakeFiles/controller.dir/src/controller.cpp.o.provides.build
.PHONY : pid/CMakeFiles/controller.dir/src/controller.cpp.o.provides

pid/CMakeFiles/controller.dir/src/controller.cpp.o.provides.build: pid/CMakeFiles/controller.dir/src/controller.cpp.o

# Object files for target controller
controller_OBJECTS = \
"CMakeFiles/controller.dir/src/controller.cpp.o"

# External object files for target controller
controller_EXTERNAL_OBJECTS =

devel/lib/pid/controller: pid/CMakeFiles/controller.dir/src/controller.cpp.o
devel/lib/pid/controller: pid/CMakeFiles/controller.dir/build.make
devel/lib/pid/controller: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
devel/lib/pid/controller: /opt/ros/indigo/lib/libroscpp.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
devel/lib/pid/controller: /opt/ros/indigo/lib/librosconsole.so
devel/lib/pid/controller: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/pid/controller: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/pid/controller: /usr/lib/liblog4cxx.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
devel/lib/pid/controller: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/pid/controller: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/pid/controller: /opt/ros/indigo/lib/librostime.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
devel/lib/pid/controller: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libboost_system.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libpthread.so
devel/lib/pid/controller: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
devel/lib/pid/controller: pid/CMakeFiles/controller.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../devel/lib/pid/controller"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/pid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/controller.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pid/CMakeFiles/controller.dir/build: devel/lib/pid/controller
.PHONY : pid/CMakeFiles/controller.dir/build

pid/CMakeFiles/controller.dir/requires: pid/CMakeFiles/controller.dir/src/controller.cpp.o.requires
.PHONY : pid/CMakeFiles/controller.dir/requires

pid/CMakeFiles/controller.dir/clean:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/pid && $(CMAKE_COMMAND) -P CMakeFiles/controller.dir/cmake_clean.cmake
.PHONY : pid/CMakeFiles/controller.dir/clean

pid/CMakeFiles/controller.dir/depend:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Documents/roswork/DJIChallenge2016_new/src /root/Documents/roswork/DJIChallenge2016_new/src/pid /root/Documents/roswork/DJIChallenge2016_new/src/build /root/Documents/roswork/DJIChallenge2016_new/src/build/pid /root/Documents/roswork/DJIChallenge2016_new/src/build/pid/CMakeFiles/controller.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pid/CMakeFiles/controller.dir/depend

