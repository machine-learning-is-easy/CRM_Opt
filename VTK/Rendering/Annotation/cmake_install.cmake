# Install script for directory: D:/pv/ParaView/VTK/Rendering/Annotation

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkRenderingAnnotation-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkRenderingAnnotation-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkRenderingAnnotation-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkRenderingAnnotation-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkAnnotatedCubeActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkArcPlotter.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkAxesActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkAxisActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkAxisActor2D.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkAxisFollower.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkBarChartActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkCaptionActor2D.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkConvexHull2D.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkCornerAnnotation.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkCubeAxesActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkCubeAxesActor2D.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkGraphAnnotationLayersFilter.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkLeaderActor2D.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkLegendBoxActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkLegendScaleActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkParallelCoordinatesActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkPieChartActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkPolarAxesActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkPolarAxesActor2D.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkProp3DAxisFollower.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkRadialGridActor2D.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkScalarBarActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkSpiderPlotActor.h"
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkXYPlotActor.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Rendering/Annotation/vtkScalarBarActorInternal.h"
    "D:/pv/build/VTK/Rendering/Annotation/vtkRenderingAnnotationModule.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/Rendering/Annotation/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
