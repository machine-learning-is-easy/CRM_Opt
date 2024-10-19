# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkvtkm/vtk-m/vtkm/filter/density_estimate" TYPE FILE FILES "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/include/vtkm/filter/density_estimate/vtkm_filter_density_estimate_export.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkvtkm/vtk-m/vtkm/filter/density_estimate" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/ContinuousScatterPlot.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/Entropy.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/Histogram.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/NDEntropy.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/NDHistogram.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/ParticleDensityBase.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/ParticleDensityCloudInCell.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/ParticleDensityNearestGridPoint.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/Statistics.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkm_filter_density_estimate-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkm_filter_density_estimate-pv5.13.dll")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/worklet/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/density_estimate/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
