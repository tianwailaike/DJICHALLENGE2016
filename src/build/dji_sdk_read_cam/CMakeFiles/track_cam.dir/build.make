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
include dji_sdk_read_cam/CMakeFiles/track_cam.dir/depend.make

# Include the progress variables for this target.
include dji_sdk_read_cam/CMakeFiles/track_cam.dir/progress.make

# Include the compile flags for this target's objects.
include dji_sdk_read_cam/CMakeFiles/track_cam.dir/flags.make

dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o: dji_sdk_read_cam/CMakeFiles/track_cam.dir/flags.make
dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o: ../dji_sdk_read_cam/src/track_cam.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Documents/roswork/DJIChallenge2016_new/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_read_cam && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/track_cam.dir/src/track_cam.cpp.o -c /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_read_cam/src/track_cam.cpp

dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/track_cam.dir/src/track_cam.cpp.i"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_read_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_read_cam/src/track_cam.cpp > CMakeFiles/track_cam.dir/src/track_cam.cpp.i

dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/track_cam.dir/src/track_cam.cpp.s"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_read_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_read_cam/src/track_cam.cpp -o CMakeFiles/track_cam.dir/src/track_cam.cpp.s

dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.requires:
.PHONY : dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.requires

dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.provides: dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.requires
	$(MAKE) -f dji_sdk_read_cam/CMakeFiles/track_cam.dir/build.make dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.provides.build
.PHONY : dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.provides

dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.provides.build: dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o

# Object files for target track_cam
track_cam_OBJECTS = \
"CMakeFiles/track_cam.dir/src/track_cam.cpp.o"

# External object files for target track_cam
track_cam_EXTERNAL_OBJECTS =

devel/lib/dji_sdk_read_cam/track_cam: dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o
devel/lib/dji_sdk_read_cam/track_cam: dji_sdk_read_cam/CMakeFiles/track_cam.dir/build.make
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libcv_bridge.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_videostab.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_video.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_superres.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_stitching.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_photo.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_ocl.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_objdetect.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_ml.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_legacy.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_imgproc.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_highgui.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_gpu.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_flann.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_features2d.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_core.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_contrib.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libopencv_calib3d.so.2.4.8
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libimage_transport.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libmessage_filters.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libtinyxml.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libclass_loader.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/libPocoFoundation.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libdl.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libroslib.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libactionlib.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libroscpp.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/librosconsole.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/liblog4cxx.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/librostime.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
devel/lib/dji_sdk_read_cam/track_cam: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libboost_system.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libpthread.so
devel/lib/dji_sdk_read_cam/track_cam: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
devel/lib/dji_sdk_read_cam/track_cam: devel/lib/libdji_sdk_lib.a
devel/lib/dji_sdk_read_cam/track_cam: dji_sdk_read_cam/CMakeFiles/track_cam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../devel/lib/dji_sdk_read_cam/track_cam"
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_read_cam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/track_cam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dji_sdk_read_cam/CMakeFiles/track_cam.dir/build: devel/lib/dji_sdk_read_cam/track_cam
.PHONY : dji_sdk_read_cam/CMakeFiles/track_cam.dir/build

dji_sdk_read_cam/CMakeFiles/track_cam.dir/requires: dji_sdk_read_cam/CMakeFiles/track_cam.dir/src/track_cam.cpp.o.requires
.PHONY : dji_sdk_read_cam/CMakeFiles/track_cam.dir/requires

dji_sdk_read_cam/CMakeFiles/track_cam.dir/clean:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_read_cam && $(CMAKE_COMMAND) -P CMakeFiles/track_cam.dir/cmake_clean.cmake
.PHONY : dji_sdk_read_cam/CMakeFiles/track_cam.dir/clean

dji_sdk_read_cam/CMakeFiles/track_cam.dir/depend:
	cd /root/Documents/roswork/DJIChallenge2016_new/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Documents/roswork/DJIChallenge2016_new/src /root/Documents/roswork/DJIChallenge2016_new/src/dji_sdk_read_cam /root/Documents/roswork/DJIChallenge2016_new/src/build /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_read_cam /root/Documents/roswork/DJIChallenge2016_new/src/build/dji_sdk_read_cam/CMakeFiles/track_cam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dji_sdk_read_cam/CMakeFiles/track_cam.dir/depend

