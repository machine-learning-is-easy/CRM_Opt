# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/pv/pvsb/superbuild/paraview/src"
  "D:/pv/pvsb/superbuild/paraview/build"
  "D:/pv/pvsb/install"
  "D:/pv/pvsb/superbuild/paraview/tmp"
  "D:/pv/pvsb/superbuild/paraview/stamp"
  "D:/pv/pvsb/downloads"
  "D:/pv/pvsb/superbuild/paraview/stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
  file(MAKE_DIRECTORY "D:/pv/pvsb/superbuild/paraview/stamp/${subDir}")
endforeach()
