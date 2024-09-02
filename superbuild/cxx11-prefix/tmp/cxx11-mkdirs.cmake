# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/pv/pvsb/superbuild/cxx11-prefix/src/cxx11"
  "D:/pv/pvsb/superbuild/cxx11-prefix/src/cxx11-build"
  "D:/pv/pvsb/install"
  "D:/pv/pvsb/superbuild/cxx11-prefix/tmp"
  "D:/pv/pvsb/superbuild/cxx11-prefix/src/cxx11-stamp"
  "D:/pv/pvsb/superbuild/cxx11-prefix/src"
  "D:/pv/pvsb/superbuild/cxx11-prefix/src/cxx11-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
  file(MAKE_DIRECTORY "D:/pv/pvsb/superbuild/cxx11-prefix/src/cxx11-stamp/${subDir}")
endforeach()
