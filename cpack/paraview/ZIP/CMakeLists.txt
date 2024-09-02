# This file is the top-level CMakeLists.txt file for the packaging step. It
# provides variables to the `.bundle.cmake` code such as project variables and
# the like.

cmake_minimum_required(VERSION "3.25")

# We need to explicitly state some form of language support. That is how CMake
# detects what compilers are being used, and therefore what
# InstallRequiredSystemLibraries should properly do. If we state NONE for
# languages we will fail to install any of the system libraries.
project("cpack-paraview")

# Keep the full output on CDash for future inspection.
message("CTEST_FULL_OUTPUT")

set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_MODULE_PATH "D:/pv/paraview-superbuild/projects/win32;D:/pv/paraview-superbuild/projects/common;D:/pv/paraview-superbuild/projects;D:/pv/paraview-superbuild/superbuild/projects/win32;D:/pv/paraview-superbuild/superbuild/projects/common;D:/pv/paraview-superbuild/superbuild/projects;D:/pv/paraview-superbuild/superbuild/cmake;D:/pv/paraview-superbuild/cmake;D:/pv/pvsb/superbuild/CMakeFiles/cmake")
set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/paraview-superbuild")
set(cpack_generator "ZIP")
set(superbuild_source_directory "D:/pv/paraview-superbuild")
set(superbuild_install_location "D:/pv/pvsb/install")
set(enabled_projects "cxx11;nlohmannjson;paraview")
foreach (project IN LISTS enabled_projects)
  set("${project}_enabled" TRUE)
  set("${project}_built_by_superbuild" TRUE)
endforeach ()
set(system_projects "cxx11")
foreach (project IN LISTS system_projects)
  set("USE_SYSTEM_${project}" TRUE)
  set("${project}_built_by_superbuild" FALSE)
endforeach ()
set("superbuild_python_version" "3.10")
set("paraview_always_package_scipy" "")
set("qt5_version" "5.12")
set("qt5_ENABLE_MULTIMEDIA" "")
set("mesa_USE_SWR" "")
set("mesa_SWR_ARCH" "")
set("nvidiaindex_SOURCE_SELECTION" "5.12")
set("ospray_SOURCE_SELECTION" "2.7.1")
set("PARAVIEW_PACKAGE_SUFFIX" "Windows-msvc2017-AMD64")
set("PARAVIEW_CATALYST_EDITION" "Full")
set("paraview_is_shared" "ON")
set("PARAVIEW_PACKAGE_FILE_NAME" "")
set("projects_with_plugins" "")

if (NOT DEFINED superbuild_bundle_default_component)
  set(superbuild_bundle_default_component "superbuild")
endif ()

include(SuperbuildInstallMacros)
include("paraview.bundle")

if (NOT DEFINED superbuild_bundle_system_libraries_destination)
  set(superbuild_bundle_system_libraries_destination "bin")
endif ()
if (NOT DEFINED superbuild_bundle_system_libraries_component)
  set(superbuild_bundle_system_libraries_component "superbuild")
endif ()
if (NOT superbuild_bundle_skip_system_libraries)
  set(CMAKE_INSTALL_SYSTEM_RUNTIME_DESTINATION "${superbuild_bundle_system_libraries_destination}")
  set(CMAKE_INSTALL_SYSTEM_RUNTIME_COMPONENT "${superbuild_bundle_system_libraries_component}")
  include(InstallRequiredSystemLibraries)
endif ()

include(CPack)
