# Install script for directory: D:/pv/ParaView/VTK/IO/Legacy

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkIOLegacy-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkIOLegacy-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkIOLegacy-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkIOLegacy-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/IO/Legacy/vtkCompositeDataReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkCompositeDataWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkDataObjectReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkDataObjectWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkDataReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkDataSetReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkDataSetWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkDataWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkGenericDataObjectReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkGenericDataObjectWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkGraphReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkGraphWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkLegacyCellGridReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkLegacyCellGridWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkPixelExtentIO.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkPolyDataReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkPolyDataWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkRectilinearGridReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkRectilinearGridWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkSimplePointsReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkSimplePointsWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkStructuredGridReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkStructuredGridWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkStructuredPointsReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkStructuredPointsWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkTableReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkTableWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkTreeReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkTreeWriter.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkUnstructuredGridReader.h"
    "D:/pv/ParaView/VTK/IO/Legacy/vtkUnstructuredGridWriter.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/IO/Legacy/vtkIOLegacyModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/IO/Legacy/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
