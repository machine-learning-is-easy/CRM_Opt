# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

set(quiet "")
set(script_dir "D:/pv/paraview-superbuild/superbuild/cmake/patches/ExternalProject")
include(${script_dir}/captured_process_setup.cmake)

# Make file names absolute:
#
get_filename_component(filename "D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz" ABSOLUTE)
get_filename_component(directory "D:/pv/pvsb/superbuild/nlohmannjson/src" ABSOLUTE)

_ep_message_quiet_capture(STATUS "extracting...
     src='${filename}'
     dst='${directory}'"
)

if(NOT EXISTS "${filename}")
  _ep_message_quiet_capture(FATAL_ERROR
    "File to extract does not exist: '${filename}'"
  )
endif()

# Prepare a space for extracting:
#
set(i 1234)
while(EXISTS "${directory}/../ex-nlohmannjson${i}")
  math(EXPR i "${i} + 1")
endwhile()
set(ut_dir "${directory}/../ex-nlohmannjson${i}")
file(MAKE_DIRECTORY "${ut_dir}")

# Extract it:
#
_ep_message_quiet_capture(STATUS "extracting... [tar xfz]")
execute_process(COMMAND ${CMAKE_COMMAND} -E tar xfz ${filename}
  WORKING_DIRECTORY ${ut_dir}
  RESULT_VARIABLE rv
  ${capture_output}
)
_ep_accumulate_captured_output()

if(NOT rv EQUAL 0)
  _ep_message_quiet_capture(STATUS "extracting... [error clean up]")
  file(REMOVE_RECURSE "${ut_dir}")
  _ep_message_quiet_capture(FATAL_ERROR "Extract of '${filename}' failed")
endif()

# Analyze what came out of the tar file:
#
_ep_message_quiet_capture(STATUS "extracting... [analysis]")
file(GLOB contents "${ut_dir}/*")
list(REMOVE_ITEM contents "${ut_dir}/.DS_Store")
list(LENGTH contents n)
if(NOT n EQUAL 1 OR NOT IS_DIRECTORY "${contents}")
  set(contents "${ut_dir}")
endif()

# Move "the one" directory to the final directory:
#
_ep_message_quiet_capture(STATUS "extracting... [rename]")
file(REMOVE_RECURSE ${directory})
get_filename_component(contents ${contents} ABSOLUTE)
file(RENAME ${contents} ${directory})

# Clean up:
#
_ep_message_quiet_capture(STATUS "extracting... [clean up]")
file(REMOVE_RECURSE "${ut_dir}")

_ep_message_quiet_capture(STATUS "extracting... done")
