# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/christian/Documents/cpp/PAA2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/christian/Documents/cpp/PAA2/build/Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/Aktiekurs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Aktiekurs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Aktiekurs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Aktiekurs.dir/flags.make

CMakeFiles/Aktiekurs.dir/main.cpp.o: CMakeFiles/Aktiekurs.dir/flags.make
CMakeFiles/Aktiekurs.dir/main.cpp.o: ../../main.cpp
CMakeFiles/Aktiekurs.dir/main.cpp.o: CMakeFiles/Aktiekurs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/christian/Documents/cpp/PAA2/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Aktiekurs.dir/main.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Aktiekurs.dir/main.cpp.o -MF CMakeFiles/Aktiekurs.dir/main.cpp.o.d -o CMakeFiles/Aktiekurs.dir/main.cpp.o -c /home/christian/Documents/cpp/PAA2/main.cpp

CMakeFiles/Aktiekurs.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Aktiekurs.dir/main.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/christian/Documents/cpp/PAA2/main.cpp > CMakeFiles/Aktiekurs.dir/main.cpp.i

CMakeFiles/Aktiekurs.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Aktiekurs.dir/main.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/christian/Documents/cpp/PAA2/main.cpp -o CMakeFiles/Aktiekurs.dir/main.cpp.s

CMakeFiles/Aktiekurs.dir/DateTime.cpp.o: CMakeFiles/Aktiekurs.dir/flags.make
CMakeFiles/Aktiekurs.dir/DateTime.cpp.o: ../../DateTime.cpp
CMakeFiles/Aktiekurs.dir/DateTime.cpp.o: CMakeFiles/Aktiekurs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/christian/Documents/cpp/PAA2/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Aktiekurs.dir/DateTime.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Aktiekurs.dir/DateTime.cpp.o -MF CMakeFiles/Aktiekurs.dir/DateTime.cpp.o.d -o CMakeFiles/Aktiekurs.dir/DateTime.cpp.o -c /home/christian/Documents/cpp/PAA2/DateTime.cpp

CMakeFiles/Aktiekurs.dir/DateTime.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Aktiekurs.dir/DateTime.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/christian/Documents/cpp/PAA2/DateTime.cpp > CMakeFiles/Aktiekurs.dir/DateTime.cpp.i

CMakeFiles/Aktiekurs.dir/DateTime.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Aktiekurs.dir/DateTime.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/christian/Documents/cpp/PAA2/DateTime.cpp -o CMakeFiles/Aktiekurs.dir/DateTime.cpp.s

CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o: CMakeFiles/Aktiekurs.dir/flags.make
CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o: ../../TradeInfo.cpp
CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o: CMakeFiles/Aktiekurs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/christian/Documents/cpp/PAA2/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o -MF CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o.d -o CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o -c /home/christian/Documents/cpp/PAA2/TradeInfo.cpp

CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/christian/Documents/cpp/PAA2/TradeInfo.cpp > CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.i

CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/christian/Documents/cpp/PAA2/TradeInfo.cpp -o CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.s

CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o: CMakeFiles/Aktiekurs.dir/flags.make
CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o: ../../TradeLoader.cpp
CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o: CMakeFiles/Aktiekurs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/christian/Documents/cpp/PAA2/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o -MF CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o.d -o CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o -c /home/christian/Documents/cpp/PAA2/TradeLoader.cpp

CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/christian/Documents/cpp/PAA2/TradeLoader.cpp > CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.i

CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/christian/Documents/cpp/PAA2/TradeLoader.cpp -o CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.s

CMakeFiles/Aktiekurs.dir/Stock.cpp.o: CMakeFiles/Aktiekurs.dir/flags.make
CMakeFiles/Aktiekurs.dir/Stock.cpp.o: ../../Stock.cpp
CMakeFiles/Aktiekurs.dir/Stock.cpp.o: CMakeFiles/Aktiekurs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/christian/Documents/cpp/PAA2/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Aktiekurs.dir/Stock.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Aktiekurs.dir/Stock.cpp.o -MF CMakeFiles/Aktiekurs.dir/Stock.cpp.o.d -o CMakeFiles/Aktiekurs.dir/Stock.cpp.o -c /home/christian/Documents/cpp/PAA2/Stock.cpp

CMakeFiles/Aktiekurs.dir/Stock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Aktiekurs.dir/Stock.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/christian/Documents/cpp/PAA2/Stock.cpp > CMakeFiles/Aktiekurs.dir/Stock.cpp.i

CMakeFiles/Aktiekurs.dir/Stock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Aktiekurs.dir/Stock.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/christian/Documents/cpp/PAA2/Stock.cpp -o CMakeFiles/Aktiekurs.dir/Stock.cpp.s

# Object files for target Aktiekurs
Aktiekurs_OBJECTS = \
"CMakeFiles/Aktiekurs.dir/main.cpp.o" \
"CMakeFiles/Aktiekurs.dir/DateTime.cpp.o" \
"CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o" \
"CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o" \
"CMakeFiles/Aktiekurs.dir/Stock.cpp.o"

# External object files for target Aktiekurs
Aktiekurs_EXTERNAL_OBJECTS =

Aktiekurs: CMakeFiles/Aktiekurs.dir/main.cpp.o
Aktiekurs: CMakeFiles/Aktiekurs.dir/DateTime.cpp.o
Aktiekurs: CMakeFiles/Aktiekurs.dir/TradeInfo.cpp.o
Aktiekurs: CMakeFiles/Aktiekurs.dir/TradeLoader.cpp.o
Aktiekurs: CMakeFiles/Aktiekurs.dir/Stock.cpp.o
Aktiekurs: CMakeFiles/Aktiekurs.dir/build.make
Aktiekurs: CMakeFiles/Aktiekurs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/christian/Documents/cpp/PAA2/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Aktiekurs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Aktiekurs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Aktiekurs.dir/build: Aktiekurs
.PHONY : CMakeFiles/Aktiekurs.dir/build

CMakeFiles/Aktiekurs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Aktiekurs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Aktiekurs.dir/clean

CMakeFiles/Aktiekurs.dir/depend:
	cd /home/christian/Documents/cpp/PAA2/build/Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/christian/Documents/cpp/PAA2 /home/christian/Documents/cpp/PAA2 /home/christian/Documents/cpp/PAA2/build/Desktop-Debug /home/christian/Documents/cpp/PAA2/build/Desktop-Debug /home/christian/Documents/cpp/PAA2/build/Desktop-Debug/CMakeFiles/Aktiekurs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Aktiekurs.dir/depend

