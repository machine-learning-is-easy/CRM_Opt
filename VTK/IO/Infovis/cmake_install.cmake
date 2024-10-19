# Install script for directory: D:/pv/ParaView/VTK/IO/Infovis

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkIOInfovis-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkIOInfovis-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkIOInfovis-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkIOInfovis-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/IO/Infovis/vtkBiomTableReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkChacoGraphReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkDelimitedTextReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkDIMACSGraphReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkDIMACSGraphWriter.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkFixedWidthTextReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkISIReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkMultiNewickTreeReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkNewickTreeReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkNewickTreeWriter.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkPhyloXMLTreeReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkPhyloXMLTreeWriter.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkRISReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkTemporalDelimitedTextReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkTulipReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkXGMLReader.h"
    "D:/pv/ParaView/VTK/IO/Infovis/vtkXMLTreeReader.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/IO/Infovis/vtkIOInfovisModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkIOInfovis" TYPE FILE FILES "D:/pv/ParaView/VTK/IO/Infovis/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/IO/Infovis/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
