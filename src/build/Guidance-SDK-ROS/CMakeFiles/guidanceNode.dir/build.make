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
include Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/depend.make

# Include the progress variables for this target.
include Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/progress.make

# Include the compile flags for this target's objects.
include Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/flags.make

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/flags.make
Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o: ../Guidance-SDK-ROS/src/GuidanceNode.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/Guidance-SDK-ROS/src/GuidanceNode.cpp

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/Guidance-SDK-ROS/src/GuidanceNode.cpp > CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.i

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/Guidance-SDK-ROS/src/GuidanceNode.cpp -o CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.s

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.requires:
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.requires

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.provides: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.requires
	$(MAKE) -f Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/build.make Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.provides.build
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.provides

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.provides.build: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/flags.make
Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o: ../Guidance-SDK-ROS/src/DJI_utility.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/Guidance-SDK-ROS/src/DJI_utility.cpp

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/Guidance-SDK-ROS/src/DJI_utility.cpp > CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.i

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/Guidance-SDK-ROS/src/DJI_utility.cpp -o CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.s

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.requires:
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.requires

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.provides: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.requires
	$(MAKE) -f Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/build.make Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.provides.build
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.provides

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.provides.build: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o

# Object files for target guidanceNode
guidanceNode_OBJECTS = \
"CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o" \
"CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o"

# External object files for target guidanceNode
guidanceNode_EXTERNAL_OBJECTS =

devel/lib/guidance/guidanceNode: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o
devel/lib/guidance/guidanceNode: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o
devel/lib/guidance/guidanceNode: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/build.make
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/libroscpp.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/libcv_bridge.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_videostab.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_video.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_superres.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_stitching.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_photo.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_ocl.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_objdetect.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_ml.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_legacy.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_imgproc.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_highgui.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_gpu.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_flann.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_features2d.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_core.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_contrib.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_calib3d.so.2.4.8
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/librosconsole.so
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/guidance/guidanceNode: /usr/lib/liblog4cxx.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/librostime.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
devel/lib/guidance/guidanceNode: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libboost_system.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libpthread.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_videostab.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_video.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_superres.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_stitching.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_photo.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_ocl.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_objdetect.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_ml.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_legacy.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_imgproc.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_highgui.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_gpu.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_flann.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_features2d.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_core.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_contrib.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_calib3d.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_photo.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_legacy.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_video.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_objdetect.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_ml.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_calib3d.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_features2d.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_highgui.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_imgproc.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_flann.so.2.4.8
devel/lib/guidance/guidanceNode: /usr/lib/arm-linux-gnueabihf/libopencv_core.so.2.4.8
devel/lib/guidance/guidanceNode: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../devel/lib/guidance/guidanceNode"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/guidanceNode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/build: devel/lib/guidance/guidanceNode
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/build

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/requires: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/GuidanceNode.cpp.o.requires
Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/requires: Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/src/DJI_utility.cpp.o.requires
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/requires

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/clean:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS && $(CMAKE_COMMAND) -P CMakeFiles/guidanceNode.dir/cmake_clean.cmake
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/clean

Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/depend:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Documents/roswork/DJIChallenge2016_new/src /root/Documents/roswork/DJIChallenge2016_new/src/Guidance-SDK-ROS /root/Documents/roswork/DJIChallenge2016_new/src/build /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS /root/Documents/roswork/DJIChallenge2016_new/src/build/Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Guidance-SDK-ROS/CMakeFiles/guidanceNode.dir/depend

