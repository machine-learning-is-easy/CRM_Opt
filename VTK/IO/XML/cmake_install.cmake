# Install script for directory: D:/pv/ParaView/VTK/IO/XML

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkIOXML-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkIOXML-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkIOXML-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkIOXML-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/IO/XML/vtkRTXMLPolyDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLCompositeDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLCompositeDataWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLDataObjectWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLDataSetWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLFileReadTester.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLGenericDataObjectReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLHierarchicalBoxDataFileConverter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLHierarchicalBoxDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLHierarchicalBoxDataWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLHierarchicalDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLHyperTreeGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLHyperTreeGridWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLImageDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLImageDataWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLMultiBlockDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLMultiBlockDataWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLMultiGroupDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPDataObjectReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPHyperTreeGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPImageDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPPolyDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPRectilinearGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPStructuredDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPStructuredGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPTableReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPUnstructuredDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPUnstructuredGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPartitionedDataSetCollectionReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPartitionedDataSetReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPolyDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLPolyDataWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLRectilinearGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLRectilinearGridWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLStructuredDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLStructuredDataWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLStructuredGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLStructuredGridWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLTableReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLTableWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLUniformGridAMRReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLUniformGridAMRWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLUnstructuredDataReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLUnstructuredDataWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLUnstructuredGridReader.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLUnstructuredGridWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLWriter.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLWriterBase.h"
    "D:/pv/ParaView/VTK/IO/XML/vtkXMLWriterC.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/IO/XML/vtkIOXMLModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/IO/XML/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
