# Install script for directory: D:/pv/paraview-superbuild/superbuild

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/paraview-superbuild")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "install" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY "D:/pv/pvsb/cpack/paraview/ZIP/install")
  execute_process(
    COMMAND "C:/Program Files/CMake/bin/cmake.exe"
            "-DCMAKE_INSTALL_PREFIX:PATH=C:/Program Files (x86)/paraview-superbuild"
            "-Dsuperbuild_is_install_target:BOOL=ON"
            "D:/pv/pvsb/cpack/paraview/ZIP"
    RESULT_VARIABLE   res
    WORKING_DIRECTORY "D:/pv/pvsb/cpack/paraview/ZIP/install")

  if (res)
    message(FATAL_ERROR "Failed to configure the paraview/ZIP package.")
  endif ()

  execute_process(
    COMMAND "C:/Program Files/CMake/bin/cmake.exe"
            --build "D:/pv/pvsb/cpack/paraview/ZIP/install"
            --target install
    RESULT_VARIABLE res)

  if (res)
    message(FATAL_ERROR "Failed to install the paraview/ZIP package.")
  endif ()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/pvsb/tests/cmake_install.cmake")
endif()

