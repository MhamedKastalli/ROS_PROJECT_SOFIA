# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/kastalli/Documents/ROS_PROJECT_SOFIA/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kastalli/Documents/ROS_PROJECT_SOFIA/build

# Include any dependencies generated for this target.
include octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/depend.make

# Include the progress variables for this target.
include octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/progress.make

# Include the compile flags for this target's objects.
include octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/flags.make

octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.o: octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/flags.make
octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.o: /home/kastalli/Documents/ROS_PROJECT_SOFIA/src/octomap_mapping/octomap_server/src/octomap_server_static.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kastalli/Documents/ROS_PROJECT_SOFIA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.o"
	cd /home/kastalli/Documents/ROS_PROJECT_SOFIA/build/octomap_mapping/octomap_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.o -c /home/kastalli/Documents/ROS_PROJECT_SOFIA/src/octomap_mapping/octomap_server/src/octomap_server_static.cpp

octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.i"
	cd /home/kastalli/Documents/ROS_PROJECT_SOFIA/build/octomap_mapping/octomap_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kastalli/Documents/ROS_PROJECT_SOFIA/src/octomap_mapping/octomap_server/src/octomap_server_static.cpp > CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.i

octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.s"
	cd /home/kastalli/Documents/ROS_PROJECT_SOFIA/build/octomap_mapping/octomap_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kastalli/Documents/ROS_PROJECT_SOFIA/src/octomap_mapping/octomap_server/src/octomap_server_static.cpp -o CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.s

# Object files for target octomap_server_static
octomap_server_static_OBJECTS = \
"CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.o"

# External object files for target octomap_server_static
octomap_server_static_EXTERNAL_OBJECTS =

/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/src/octomap_server_static.cpp.o
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/build.make
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/liboctomap_server.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/liboctomap.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/liboctomath.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libpcl_ros_filter.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libpcl_ros_tf.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_kdtree.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_search.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_features.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_filters.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_ml.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_segmentation.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_surface.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosbag.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosbag_storage.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroslz4.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtopic_tools.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_common.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_octree.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_io.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkChartsCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkInfovisCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libfreetype.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libz.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingSources-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersHybrid-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingColor-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingGeneral-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libjpeg.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpng.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libtiff.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingVolume-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOXML-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libexpat.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkViewsCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL2-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/liboctomap_ros.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/liboctomap.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/liboctomath.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtf.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtf2_ros.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libactionlib.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libmessage_filters.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtf2.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libnodeletlib.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libbondcpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libclass_loader.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libdl.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroslib.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librospack.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroscpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosconsole.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librostime.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libcpp_common.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libpcl_ros_filter.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libpcl_ros_tf.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_kdtree.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_search.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_features.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_filters.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_ml.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_segmentation.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_surface.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosbag.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosbag_storage.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroslz4.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtopic_tools.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_common.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_octree.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpcl_io.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkChartsCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkInfovisCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libfreetype.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libz.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingSources-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkFiltersHybrid-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingColor-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingGeneral-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libjpeg.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpng.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libtiff.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingVolume-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOXML-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libexpat.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkViewsCore-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL2-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1p.1
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/liboctomap_ros.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtf.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtf2_ros.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libactionlib.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libmessage_filters.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libtf2.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libnodeletlib.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libbondcpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libclass_loader.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libdl.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroslib.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librospack.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroscpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosconsole.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/librostime.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /opt/ros/noetic/lib/libcpp_common.so
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static: octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kastalli/Documents/ROS_PROJECT_SOFIA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static"
	cd /home/kastalli/Documents/ROS_PROJECT_SOFIA/build/octomap_mapping/octomap_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/octomap_server_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/build: /home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/octomap_server/octomap_server_static

.PHONY : octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/build

octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/clean:
	cd /home/kastalli/Documents/ROS_PROJECT_SOFIA/build/octomap_mapping/octomap_server && $(CMAKE_COMMAND) -P CMakeFiles/octomap_server_static.dir/cmake_clean.cmake
.PHONY : octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/clean

octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/depend:
	cd /home/kastalli/Documents/ROS_PROJECT_SOFIA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kastalli/Documents/ROS_PROJECT_SOFIA/src /home/kastalli/Documents/ROS_PROJECT_SOFIA/src/octomap_mapping/octomap_server /home/kastalli/Documents/ROS_PROJECT_SOFIA/build /home/kastalli/Documents/ROS_PROJECT_SOFIA/build/octomap_mapping/octomap_server /home/kastalli/Documents/ROS_PROJECT_SOFIA/build/octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : octomap_mapping/octomap_server/CMakeFiles/octomap_server_static.dir/depend

