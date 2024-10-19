# Install script for directory: D:/pv/ParaView/VTK/Imaging/Hybrid

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkImagingHybrid-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkImagingHybrid-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkImagingHybrid-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkImagingHybrid-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkBooleanTexture.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkCheckerboardSplatter.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkFastSplatter.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkGaussianSplatter.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkImageCursor3D.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkImageRectilinearWipe.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkImageToPoints.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkPointLoad.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkSampleFunction.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkShepardMethod.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkSliceCubes.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkSurfaceReconstructionFilter.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkTriangularTexture.h"
    "D:/pv/ParaView/VTK/Imaging/Hybrid/vtkVoxelModeller.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/Imaging/Hybrid/vtkImagingHybridModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/Imaging/Hybrid/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
