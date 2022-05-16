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
CMAKE_SOURCE_DIR = /mnt/c/Users/ebnand/Downloads/aefork2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004

# Utility rule file for doc_latex.

# Include the progress variables for this target.
include doc/CMakeFiles/doc_latex.dir/progress.make

doc/CMakeFiles/doc_latex: doc_src/types.rst
doc/CMakeFiles/doc_latex: doc_src/common.rst
doc/CMakeFiles/doc_latex: doc_src/util.rst
doc/CMakeFiles/doc_latex: doc_src/statuscodes.rst
doc/CMakeFiles/doc_latex: doc_src/types_generated.rst
doc/CMakeFiles/doc_latex: doc_src/server.rst
doc/CMakeFiles/doc_latex: doc_src/client_subscriptions.rst
doc/CMakeFiles/doc_latex: doc_src/client.rst
doc/CMakeFiles/doc_latex: doc_src/client_highlevel.rst
doc/CMakeFiles/doc_latex: doc_src/plugin_log.rst
doc/CMakeFiles/doc_latex: doc_src/plugin_network.rst
doc/CMakeFiles/doc_latex: doc_src/plugin_accesscontrol.rst
doc/CMakeFiles/doc_latex: doc_src/services.rst
doc/CMakeFiles/doc_latex: doc_src/nodestore.rst
doc/CMakeFiles/doc_latex: doc_src/plugin_pubsub_connection.rst
doc/CMakeFiles/doc_latex: doc_src/pubsub.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_datatypes.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_firststeps.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_variable.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_variabletype.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_datasource.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_events.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_alarms_conditions.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_monitoreditems.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_object.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_server_method.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_client_firststeps.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_pubsub_publish.rst
doc/CMakeFiles/doc_latex: doc_src/tutorial_pubsub_subscribe.rst
doc/CMakeFiles/doc_latex: doc_src/pubsub_TSN_publisher.rst
doc/CMakeFiles/doc_latex: doc_src/pubsub_TSN_loopback.rst
doc/CMakeFiles/doc_latex: doc_src/pubsub_nodeset_rt_publisher.rst
doc/CMakeFiles/doc_latex: doc_src/pubsub_nodeset_rt_subscriber.rst
doc/CMakeFiles/doc_latex: doc_src/building.rst
doc/CMakeFiles/doc_latex: doc_src/building_arch.rst
doc/CMakeFiles/doc_latex: doc_src/index.rst
doc/CMakeFiles/doc_latex: doc_src/installing.rst
doc/CMakeFiles/doc_latex: doc_src/internal.rst
doc/CMakeFiles/doc_latex: doc_src/nodeset_compiler.rst
doc/CMakeFiles/doc_latex: doc_src/nodeset_compiler_pump.png
doc/CMakeFiles/doc_latex: doc_src/open62541.png
doc/CMakeFiles/doc_latex: doc_src/open62541_html.png
doc/CMakeFiles/doc_latex: doc_src/protocol.rst
doc/CMakeFiles/doc_latex: doc_src/toc.rst
doc/CMakeFiles/doc_latex: doc_src/tutorials.rst
doc/CMakeFiles/doc_latex: doc_src/ua-wireshark-pubsub.png
doc/CMakeFiles/doc_latex: doc_src/ua-wireshark.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building LaTeX sources for documentation with Sphinx"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/sphinx-build -b latex /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_latex

doc_src/types.rst: ../tools/c2rst.py
doc_src/types.rst: ../include/open62541/types.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ../doc_src/types.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/types.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/types.rst

doc_src/common.rst: ../tools/c2rst.py
doc_src/common.rst: ../include/open62541/common.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating ../doc_src/common.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/common.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/common.rst

doc_src/util.rst: ../tools/c2rst.py
doc_src/util.rst: ../include/open62541/util.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating ../doc_src/util.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/util.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/util.rst

doc_src/statuscodes.rst: ../tools/c2rst.py
doc_src/statuscodes.rst: src_generated/open62541/statuscodes.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating ../doc_src/statuscodes.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/src_generated/open62541/statuscodes.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/statuscodes.rst

doc_src/types_generated.rst: ../tools/c2rst.py
doc_src/types_generated.rst: src_generated/open62541/types_generated.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating ../doc_src/types_generated.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/src_generated/open62541/types_generated.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/types_generated.rst

doc_src/server.rst: ../tools/c2rst.py
doc_src/server.rst: ../include/open62541/server.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating ../doc_src/server.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/server.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/server.rst

doc_src/client_subscriptions.rst: ../tools/c2rst.py
doc_src/client_subscriptions.rst: ../include/open62541/client_subscriptions.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Generating ../doc_src/client_subscriptions.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/client_subscriptions.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/client_subscriptions.rst

doc_src/client.rst: ../tools/c2rst.py
doc_src/client.rst: ../include/open62541/client.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Generating ../doc_src/client.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/client.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/client.rst

doc_src/client_highlevel.rst: ../tools/c2rst.py
doc_src/client_highlevel.rst: ../include/open62541/client_highlevel.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Generating ../doc_src/client_highlevel.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/client_highlevel.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/client_highlevel.rst

doc_src/plugin_log.rst: ../tools/c2rst.py
doc_src/plugin_log.rst: ../include/open62541/plugin/log.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Generating ../doc_src/plugin_log.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/plugin/log.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/plugin_log.rst

doc_src/plugin_network.rst: ../tools/c2rst.py
doc_src/plugin_network.rst: ../include/open62541/plugin/network.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Generating ../doc_src/plugin_network.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/plugin/network.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/plugin_network.rst

doc_src/plugin_accesscontrol.rst: ../tools/c2rst.py
doc_src/plugin_accesscontrol.rst: ../include/open62541/plugin/accesscontrol.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Generating ../doc_src/plugin_accesscontrol.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/plugin/accesscontrol.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/plugin_accesscontrol.rst

doc_src/services.rst: ../tools/c2rst.py
doc_src/services.rst: ../src/server/ua_services.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Generating ../doc_src/services.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/src/server/ua_services.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/services.rst

doc_src/nodestore.rst: ../tools/c2rst.py
doc_src/nodestore.rst: ../include/open62541/plugin/nodestore.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Generating ../doc_src/nodestore.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/plugin/nodestore.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/nodestore.rst

doc_src/plugin_pubsub_connection.rst: ../tools/c2rst.py
doc_src/plugin_pubsub_connection.rst: ../include/open62541/plugin/pubsub.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Generating ../doc_src/plugin_pubsub_connection.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/plugin/pubsub.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/plugin_pubsub_connection.rst

doc_src/pubsub.rst: ../tools/c2rst.py
doc_src/pubsub.rst: ../include/open62541/server_pubsub.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Generating ../doc_src/pubsub.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/include/open62541/server_pubsub.h /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/pubsub.rst

doc_src/tutorial_datatypes.rst: ../tools/c2rst.py
doc_src/tutorial_datatypes.rst: ../examples/tutorial_datatypes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Generating ../doc_src/tutorial_datatypes.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_datatypes.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_datatypes.rst

doc_src/tutorial_server_firststeps.rst: ../tools/c2rst.py
doc_src/tutorial_server_firststeps.rst: ../examples/tutorial_server_firststeps.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Generating ../doc_src/tutorial_server_firststeps.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_firststeps.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_firststeps.rst

doc_src/tutorial_server_variable.rst: ../tools/c2rst.py
doc_src/tutorial_server_variable.rst: ../examples/tutorial_server_variable.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Generating ../doc_src/tutorial_server_variable.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_variable.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_variable.rst

doc_src/tutorial_server_variabletype.rst: ../tools/c2rst.py
doc_src/tutorial_server_variabletype.rst: ../examples/tutorial_server_variabletype.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Generating ../doc_src/tutorial_server_variabletype.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_variabletype.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_variabletype.rst

doc_src/tutorial_server_datasource.rst: ../tools/c2rst.py
doc_src/tutorial_server_datasource.rst: ../examples/tutorial_server_datasource.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Generating ../doc_src/tutorial_server_datasource.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_datasource.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_datasource.rst

doc_src/tutorial_server_events.rst: ../tools/c2rst.py
doc_src/tutorial_server_events.rst: ../examples/tutorial_server_events.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Generating ../doc_src/tutorial_server_events.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_events.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_events.rst

doc_src/tutorial_server_alarms_conditions.rst: ../tools/c2rst.py
doc_src/tutorial_server_alarms_conditions.rst: ../examples/tutorial_server_alarms_conditions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Generating ../doc_src/tutorial_server_alarms_conditions.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_alarms_conditions.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_alarms_conditions.rst

doc_src/tutorial_server_monitoreditems.rst: ../tools/c2rst.py
doc_src/tutorial_server_monitoreditems.rst: ../examples/tutorial_server_monitoreditems.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Generating ../doc_src/tutorial_server_monitoreditems.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_monitoreditems.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_monitoreditems.rst

doc_src/tutorial_server_object.rst: ../tools/c2rst.py
doc_src/tutorial_server_object.rst: ../examples/tutorial_server_object.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_26) "Generating ../doc_src/tutorial_server_object.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_object.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_object.rst

doc_src/tutorial_server_method.rst: ../tools/c2rst.py
doc_src/tutorial_server_method.rst: ../examples/tutorial_server_method.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_27) "Generating ../doc_src/tutorial_server_method.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_server_method.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_server_method.rst

doc_src/tutorial_client_firststeps.rst: ../tools/c2rst.py
doc_src/tutorial_client_firststeps.rst: ../examples/tutorial_client_firststeps.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_28) "Generating ../doc_src/tutorial_client_firststeps.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/tutorial_client_firststeps.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_client_firststeps.rst

doc_src/tutorial_pubsub_publish.rst: ../tools/c2rst.py
doc_src/tutorial_pubsub_publish.rst: ../examples/pubsub/tutorial_pubsub_publish.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_29) "Generating ../doc_src/tutorial_pubsub_publish.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/pubsub/tutorial_pubsub_publish.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_pubsub_publish.rst

doc_src/tutorial_pubsub_subscribe.rst: ../tools/c2rst.py
doc_src/tutorial_pubsub_subscribe.rst: ../examples/pubsub/tutorial_pubsub_subscribe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_30) "Generating ../doc_src/tutorial_pubsub_subscribe.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/pubsub/tutorial_pubsub_subscribe.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/tutorial_pubsub_subscribe.rst

doc_src/pubsub_TSN_publisher.rst: ../tools/c2rst.py
doc_src/pubsub_TSN_publisher.rst: ../examples/pubsub_realtime/pubsub_TSN_publisher.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_31) "Generating ../doc_src/pubsub_TSN_publisher.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/pubsub_realtime/pubsub_TSN_publisher.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/pubsub_TSN_publisher.rst

doc_src/pubsub_TSN_loopback.rst: ../tools/c2rst.py
doc_src/pubsub_TSN_loopback.rst: ../examples/pubsub_realtime/pubsub_TSN_loopback.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_32) "Generating ../doc_src/pubsub_TSN_loopback.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/pubsub_realtime/pubsub_TSN_loopback.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/pubsub_TSN_loopback.rst

doc_src/pubsub_nodeset_rt_publisher.rst: ../tools/c2rst.py
doc_src/pubsub_nodeset_rt_publisher.rst: ../examples/pubsub_realtime/nodeset/pubsub_nodeset_rt_publisher.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_33) "Generating ../doc_src/pubsub_nodeset_rt_publisher.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/pubsub_realtime/nodeset/pubsub_nodeset_rt_publisher.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/pubsub_nodeset_rt_publisher.rst

doc_src/pubsub_nodeset_rt_subscriber.rst: ../tools/c2rst.py
doc_src/pubsub_nodeset_rt_subscriber.rst: ../examples/pubsub_realtime/nodeset/pubsub_nodeset_rt_subscriber.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/CMakeFiles --progress-num=$(CMAKE_PROGRESS_34) "Generating ../doc_src/pubsub_nodeset_rt_subscriber.rst"
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && /usr/bin/python3.8 /mnt/c/Users/ebnand/Downloads/aefork2/tools/c2rst.py /mnt/c/Users/ebnand/Downloads/aefork2/examples/pubsub_realtime/nodeset/pubsub_nodeset_rt_subscriber.c /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc_src/pubsub_nodeset_rt_subscriber.rst

doc_latex: doc/CMakeFiles/doc_latex
doc_latex: doc_src/types.rst
doc_latex: doc_src/common.rst
doc_latex: doc_src/util.rst
doc_latex: doc_src/statuscodes.rst
doc_latex: doc_src/types_generated.rst
doc_latex: doc_src/server.rst
doc_latex: doc_src/client_subscriptions.rst
doc_latex: doc_src/client.rst
doc_latex: doc_src/client_highlevel.rst
doc_latex: doc_src/plugin_log.rst
doc_latex: doc_src/plugin_network.rst
doc_latex: doc_src/plugin_accesscontrol.rst
doc_latex: doc_src/services.rst
doc_latex: doc_src/nodestore.rst
doc_latex: doc_src/plugin_pubsub_connection.rst
doc_latex: doc_src/pubsub.rst
doc_latex: doc_src/tutorial_datatypes.rst
doc_latex: doc_src/tutorial_server_firststeps.rst
doc_latex: doc_src/tutorial_server_variable.rst
doc_latex: doc_src/tutorial_server_variabletype.rst
doc_latex: doc_src/tutorial_server_datasource.rst
doc_latex: doc_src/tutorial_server_events.rst
doc_latex: doc_src/tutorial_server_alarms_conditions.rst
doc_latex: doc_src/tutorial_server_monitoreditems.rst
doc_latex: doc_src/tutorial_server_object.rst
doc_latex: doc_src/tutorial_server_method.rst
doc_latex: doc_src/tutorial_client_firststeps.rst
doc_latex: doc_src/tutorial_pubsub_publish.rst
doc_latex: doc_src/tutorial_pubsub_subscribe.rst
doc_latex: doc_src/pubsub_TSN_publisher.rst
doc_latex: doc_src/pubsub_TSN_loopback.rst
doc_latex: doc_src/pubsub_nodeset_rt_publisher.rst
doc_latex: doc_src/pubsub_nodeset_rt_subscriber.rst
doc_latex: doc/CMakeFiles/doc_latex.dir/build.make

.PHONY : doc_latex

# Rule to build all files generated by this target.
doc/CMakeFiles/doc_latex.dir/build: doc_latex

.PHONY : doc/CMakeFiles/doc_latex.dir/build

doc/CMakeFiles/doc_latex.dir/clean:
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc && $(CMAKE_COMMAND) -P CMakeFiles/doc_latex.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/doc_latex.dir/clean

doc/CMakeFiles/doc_latex.dir/depend:
	cd /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/ebnand/Downloads/aefork2 /mnt/c/Users/ebnand/Downloads/aefork2/doc /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004 /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc /mnt/c/Users/ebnand/Downloads/aefork2/cmake-build-debug-wsl-ubuntu2004/doc/CMakeFiles/doc_latex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/doc_latex.dir/depend

