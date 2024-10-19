# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/ParaView")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkmstd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/thirdparty/optionparser/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/thirdparty/diy/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/thirdparty/lcl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/thirdparty/loguru/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/cuda/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/kokkos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/openmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/serial/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/tbb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/testlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/exec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/exec/cuda/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/exec/kokkos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/exec/openmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/exec/serial/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/exec/tbb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/worklet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/clean_grid/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/connected_components/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/vector_analysis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/mesh_info/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/multi_block/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/contour/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/geometry_refinement/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/entity_extraction/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/field_conversion/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/field_transform/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/flow/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/image_processing/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/resampling/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/uncertainty/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/zfp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/interop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/thirdparty/lodepng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/io/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/random/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/source/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/docs/users-guide/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkvtkm" TYPE FILE FILES "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/config/vtkm_config.mk")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkvtkm" TYPE FILE FILES "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/config/vtkm.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkvtkm" TYPE FILE RENAME "VTKmREADME.md" FILES "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/README.md")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkvtkm" TYPE FILE RENAME "VTKmLICENSE.txt" FILES "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm" TYPE FILE FILES
    "D:/pv/build/lib/cmake/paraview-5.13/vtk/vtkm/VTKmConfig.cmake"
    "D:/pv/build/lib/cmake/paraview-5.13/vtk/vtkm/VTKmConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm/cmake" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmCMakeBackports.cmake"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/FindTBB.cmake"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/patches/FindMPI.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm/cmake/3.15" TYPE FILE FILES "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/patches/3.15/FindMPI.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm/cmake" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmCPUVectorization.cmake"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmDetectCUDAVersion.cu"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmDeviceAdapters.cmake"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmDIYUtils.cmake"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmExportHeaderTemplate.h.in"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmRenderingContexts.cmake"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMake/VTKmWrappers.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm/VTKmTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm/VTKmTargets.cmake"
         "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMakeFiles/Export/31c045a90b78dbfae62c63d77f9f823e/VTKmTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm/VTKmTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm/VTKmTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm" TYPE FILE FILES "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMakeFiles/Export/31c045a90b78dbfae62c63d77f9f823e/VTKmTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/paraview-5.13/vtk/vtkm" TYPE FILE FILES "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/CMakeFiles/Export/31c045a90b78dbfae62c63d77f9f823e/VTKmTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/examples/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
