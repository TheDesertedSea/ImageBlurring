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
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur

# Include any dependencies generated for this target.
include CMakeFiles/median_blur.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/median_blur.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/median_blur.dir/flags.make

CMakeFiles/median_blur.dir/src/main.cpp.o: CMakeFiles/median_blur.dir/flags.make
CMakeFiles/median_blur.dir/src/main.cpp.o: src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/median_blur.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/median_blur.dir/src/main.cpp.o -c /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/src/main.cpp

CMakeFiles/median_blur.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/median_blur.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/src/main.cpp > CMakeFiles/median_blur.dir/src/main.cpp.i

CMakeFiles/median_blur.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/median_blur.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/src/main.cpp -o CMakeFiles/median_blur.dir/src/main.cpp.s

CMakeFiles/median_blur.dir/src/main.cpp.o.requires:
.PHONY : CMakeFiles/median_blur.dir/src/main.cpp.o.requires

CMakeFiles/median_blur.dir/src/main.cpp.o.provides: CMakeFiles/median_blur.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/median_blur.dir/build.make CMakeFiles/median_blur.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/median_blur.dir/src/main.cpp.o.provides

CMakeFiles/median_blur.dir/src/main.cpp.o.provides.build: CMakeFiles/median_blur.dir/src/main.cpp.o

CMakeFiles/median_blur.dir/src/kernel.cpp.o: CMakeFiles/median_blur.dir/flags.make
CMakeFiles/median_blur.dir/src/kernel.cpp.o: src/kernel.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/median_blur.dir/src/kernel.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/median_blur.dir/src/kernel.cpp.o -c /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/src/kernel.cpp

CMakeFiles/median_blur.dir/src/kernel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/median_blur.dir/src/kernel.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/src/kernel.cpp > CMakeFiles/median_blur.dir/src/kernel.cpp.i

CMakeFiles/median_blur.dir/src/kernel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/median_blur.dir/src/kernel.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/src/kernel.cpp -o CMakeFiles/median_blur.dir/src/kernel.cpp.s

CMakeFiles/median_blur.dir/src/kernel.cpp.o.requires:
.PHONY : CMakeFiles/median_blur.dir/src/kernel.cpp.o.requires

CMakeFiles/median_blur.dir/src/kernel.cpp.o.provides: CMakeFiles/median_blur.dir/src/kernel.cpp.o.requires
	$(MAKE) -f CMakeFiles/median_blur.dir/build.make CMakeFiles/median_blur.dir/src/kernel.cpp.o.provides.build
.PHONY : CMakeFiles/median_blur.dir/src/kernel.cpp.o.provides

CMakeFiles/median_blur.dir/src/kernel.cpp.o.provides.build: CMakeFiles/median_blur.dir/src/kernel.cpp.o

# Object files for target median_blur
median_blur_OBJECTS = \
"CMakeFiles/median_blur.dir/src/main.cpp.o" \
"CMakeFiles/median_blur.dir/src/kernel.cpp.o"

# External object files for target median_blur
median_blur_EXTERNAL_OBJECTS =

median_blur: CMakeFiles/median_blur.dir/src/main.cpp.o
median_blur: CMakeFiles/median_blur.dir/src/kernel.cpp.o
median_blur: CMakeFiles/median_blur.dir/build.make
median_blur: /usr/lib64/libopencv_calib3d.so
median_blur: /usr/lib64/libopencv_contrib.so
median_blur: /usr/lib64/libopencv_core.so
median_blur: /usr/lib64/libopencv_features2d.so
median_blur: /usr/lib64/libopencv_flann.so
median_blur: /usr/lib64/libopencv_highgui.so
median_blur: /usr/lib64/libopencv_imgproc.so
median_blur: /usr/lib64/libopencv_legacy.so
median_blur: /usr/lib64/libopencv_ml.so
median_blur: /usr/lib64/libopencv_objdetect.so
median_blur: /usr/lib64/libopencv_photo.so
median_blur: /usr/lib64/libopencv_stitching.so
median_blur: /usr/lib64/libopencv_superres.so
median_blur: /usr/lib64/libopencv_ts.so
median_blur: /usr/lib64/libopencv_video.so
median_blur: /usr/lib64/libopencv_videostab.so
median_blur: CMakeFiles/median_blur.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable median_blur"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/median_blur.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/median_blur.dir/build: median_blur
.PHONY : CMakeFiles/median_blur.dir/build

CMakeFiles/median_blur.dir/requires: CMakeFiles/median_blur.dir/src/main.cpp.o.requires
CMakeFiles/median_blur.dir/requires: CMakeFiles/median_blur.dir/src/kernel.cpp.o.requires
.PHONY : CMakeFiles/median_blur.dir/requires

CMakeFiles/median_blur.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/median_blur.dir/cmake_clean.cmake
.PHONY : CMakeFiles/median_blur.dir/clean

CMakeFiles/median_blur.dir/depend:
	cd /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur /afs/andrew.cmu.edu/usr16/tingruiz/private/18645/labs/project/18645-blurring/median_blur/CMakeFiles/median_blur.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/median_blur.dir/depend

