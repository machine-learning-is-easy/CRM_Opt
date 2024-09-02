# CMake generated Testfile for 
# Source directory: D:/pv/paraview-superbuild/tests
# Build directory: D:/pv/pvsb/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[extract-paraview-ZIP]=] "C:/Program Files/CMake/bin/cmake.exe" "-Dname:STRING=paraview" "-Dtest_dir:PATH=D:/pv/pvsb" "-Dbinary_glob:STRING=ParaView-5.12.0*-Windows-msvc2017-AMD64*.zip" "-Doutput_dir:PATH=D:/pv/pvsb/tests/paraview/test-extraction" "-P" "D:/pv/paraview-superbuild/superbuild/cmake/scripts/extract_test.cmake")
set_tests_properties([=[extract-paraview-ZIP]=] PROPERTIES  DEPENDS "cpack-paraview-ZIP" LABELS "ParaView" _BACKTRACE_TRIPLES "D:/pv/paraview-superbuild/superbuild/cmake/SuperbuildTestingMacros.cmake;42;add_test;D:/pv/paraview-superbuild/tests/paraview.test.cmake;36;superbuild_add_extract_test;D:/pv/paraview-superbuild/tests/paraview.test.cmake;0;;D:/pv/paraview-superbuild/tests/CMakeLists.txt;9;include;D:/pv/paraview-superbuild/tests/CMakeLists.txt;0;")
add_test([=[paraview-version-server]=] "D:/pv/pvsb/tests/paraview/test-extraction/bin/pvserver.exe" "--version")
set_tests_properties([=[paraview-version-server]=] PROPERTIES  DEPENDS "extract-paraview-ZIP" LABELS "ParaView" _BACKTRACE_TRIPLES "D:/pv/paraview-superbuild/tests/paraview.test.cmake;86;add_test;D:/pv/paraview-superbuild/tests/paraview.test.cmake;207;paraview_add_test;D:/pv/paraview-superbuild/tests/paraview.test.cmake;0;;D:/pv/paraview-superbuild/tests/CMakeLists.txt;9;include;D:/pv/paraview-superbuild/tests/CMakeLists.txt;0;")
