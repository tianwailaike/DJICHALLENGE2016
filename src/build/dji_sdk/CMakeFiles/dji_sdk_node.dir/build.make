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
include dji_sdk/CMakeFiles/dji_sdk_node.dir/depend.make

# Include the progress variables for this target.
include dji_sdk/CMakeFiles/dji_sdk_node.dir/progress.make

# Include the compile flags for this target's objects.
include dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o: ../dji_sdk/src/dji_sdk_node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/dji_sdk_node.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/dji_sdk_node.cpp > CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/dji_sdk_node.cpp -o CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o: ../dji_sdk/src/modules/dji_sdk_node_actions.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_actions.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_actions.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_actions.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o: ../dji_sdk/src/modules/dji_sdk_node_services.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_services.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_services.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_services.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o: ../dji_sdk/src/modules/dji_sdk_node_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_main.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_main.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_main.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o: ../dji_sdk/src/modules/dji_sdk_node_mission.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_mission.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_mission.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk/src/modules/dji_sdk_node_mission.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o

# Object files for target dji_sdk_node
dji_sdk_node_OBJECTS = \
"CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o"

# External object files for target dji_sdk_node
dji_sdk_node_EXTERNAL_OBJECTS =

devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o
devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o
devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o
devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o
devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o
devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libactionlib.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libroscpp.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librosconsole.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/liblog4cxx.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librostime.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_system.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libpthread.so
devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
devel/lib/dji_sdk/dji_sdk_node: devel/lib/libdji_sdk_lib.a
devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../devel/lib/dji_sdk/dji_sdk_node"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dji_sdk_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dji_sdk/CMakeFiles/dji_sdk_node.dir/build: devel/lib/dji_sdk/dji_sdk_node
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/build

dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/clean:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk && $(CMAKE_COMMAND) -P CMakeFiles/dji_sdk_node.dir/cmake_clean.cmake
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/clean

dji_sdk/CMakeFiles/dji_sdk_node.dir/depend:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Documents/roswork/DJIChallenge2016_new/src /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk /root/Documents/roswork/DJIChallenge2016_new/src/build /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk/CMakeFiles/dji_sdk_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/depend
