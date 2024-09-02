# CMake generated Testfile for 
# Source directory: D:/pv/paraview-superbuild/superbuild
# Build directory: D:/pv/pvsb/superbuild
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("D:/pv/pvsb/superbuild/superbuild_testing_trampoline.cmake")
add_test([=[cpack-paraview-ZIP]=] "C:/Program Files/CMake/bin/cmake.exe" "-Dname=paraview" "-Dcmake_generator=Ninja" "-Dcpack_generator=ZIP" "-Doutput_directory=D:/pv/pvsb" "-Dsource_directory=D:/pv/pvsb/cpack/paraview/ZIP" "-Dbuild_directory=D:/pv/pvsb/cpack/paraview/ZIP/build" "-P" "D:/pv/paraview-superbuild/superbuild/cmake/scripts/package_test.cmake")
set_tests_properties([=[cpack-paraview-ZIP]=] PROPERTIES  LABELS "ParaView" RESOURCE_LOCK "cpack" TIMEOUT "6400" WORKING_DIRECTORY "D:/pv/pvsb/cpack/paraview/ZIP/build" _BACKTRACE_TRIPLES "D:/pv/paraview-superbuild/superbuild/cmake/SuperbuildPackageMacros.cmake;85;add_test;D:/pv/paraview-superbuild/CMakeLists.txt;408;superbuild_add_extra_package_test;D:/pv/paraview-superbuild/superbuild/CMakeLists.txt;225;superbuild_add_packaging;D:/pv/paraview-superbuild/superbuild/CMakeLists.txt;0;")
add_test([=[cpack-paraview-WIX]=] "C:/Program Files/CMake/bin/cmake.exe" "-Dname=paraview" "-Dcmake_generator=Ninja" "-Dcpack_generator=WIX" "-Doutput_directory=D:/pv/pvsb" "-Dsource_directory=D:/pv/pvsb/cpack/paraview/WIX" "-Dbuild_directory=D:/pv/pvsb/cpack/paraview/WIX/build" "-P" "D:/pv/paraview-superbuild/superbuild/cmake/scripts/package_test.cmake")
set_tests_properties([=[cpack-paraview-WIX]=] PROPERTIES  LABELS "ParaView" RESOURCE_LOCK "cpack" TIMEOUT "6400" WORKING_DIRECTORY "D:/pv/pvsb/cpack/paraview/WIX/build" _BACKTRACE_TRIPLES "D:/pv/paraview-superbuild/superbuild/cmake/SuperbuildPackageMacros.cmake;85;add_test;D:/pv/paraview-superbuild/CMakeLists.txt;408;superbuild_add_extra_package_test;D:/pv/paraview-superbuild/superbuild/CMakeLists.txt;225;superbuild_add_packaging;D:/pv/paraview-superbuild/superbuild/CMakeLists.txt;0;")
subdirs("../tests")
