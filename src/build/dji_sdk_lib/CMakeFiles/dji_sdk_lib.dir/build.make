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
include dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/depend.make

# Include the progress variables for this target.
include dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/progress.make

# Include the compile flags for this target's objects.
include dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o: ../dji_sdk_lib/src/DJI_HardDriver.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_HardDriver.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_HardDriver.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_HardDriver.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o: ../dji_sdk_lib/src/DJI_App.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_App.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_App.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_App.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o: ../dji_sdk_lib/src/DJI_Camera.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Camera.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Camera.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Camera.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o: ../dji_sdk_lib/src/DJI_Mission.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Mission.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Mission.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Mission.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o: ../dji_sdk_lib/src/DJI_HotPoint.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_HotPoint.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_HotPoint.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_HotPoint.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o: ../dji_sdk_lib/src/DJI_WayPoint.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_WayPoint.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_WayPoint.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_WayPoint.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o: ../dji_sdk_lib/src/DJI_Memory.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Memory.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Memory.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Memory.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o: ../dji_sdk_lib/src/DJI_Link.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Link.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Link.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Link.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o: ../dji_sdk_lib/src/DJI_API.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_API.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_API.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_API.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o: ../dji_sdk_lib/src/DJI_Codec.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Codec.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Codec.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Codec.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o: ../dji_sdk_lib/src/DJI_Follow.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Follow.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Follow.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Follow.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o: ../dji_sdk_lib/src/DJI_VirtualRC.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_VirtualRC.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_VirtualRC.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_VirtualRC.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/flags.make
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o: ../dji_sdk_lib/src/DJI_Flight.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Flight.cpp

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Flight.cpp > CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.i

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib/src/DJI_Flight.cpp -o CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.s

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.requires:
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.provides: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.requires
	$(MAKE) -f dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.provides.build
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.provides

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.provides.build: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o

# Object files for target dji_sdk_lib
dji_sdk_lib_OBJECTS = \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o" \
"CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o"

# External object files for target dji_sdk_lib
dji_sdk_lib_EXTERNAL_OBJECTS =

devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build.make
devel/lib/libdji_sdk_lib.a: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../devel/lib/libdji_sdk_lib.a"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && $(CMAKE_COMMAND) -P CMakeFiles/dji_sdk_lib.dir/cmake_clean_target.cmake
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dji_sdk_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build: devel/lib/libdji_sdk_lib.a
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/build

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HardDriver.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_App.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Camera.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Mission.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_HotPoint.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_WayPoint.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Memory.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Link.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_API.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Codec.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Follow.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_VirtualRC.cpp.o.requires
dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires: dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/src/DJI_Flight.cpp.o.requires
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/requires

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/clean:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib && $(CMAKE_COMMAND) -P CMakeFiles/dji_sdk_lib.dir/cmake_clean.cmake
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/clean

dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/depend:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Documents/roswork/DJIChallenge2016_new/src /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_lib /root/Documents/roswork/DJIChallenge2016_new/src/build /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dji_sdk_lib/CMakeFiles/dji_sdk_lib.dir/depend

