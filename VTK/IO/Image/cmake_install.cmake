# Install script for directory: D:/pv/ParaView/VTK/IO/Image

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkIOImage-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkIOImage-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkIOImage-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkIOImage-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/IO/Image/vtkBMPReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkBMPWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkDEMReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkDICOMImageReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkGESignaReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkHDRReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageExport.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageImport.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageImportExecutive.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageReader2.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageReader2Collection.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageReader2Factory.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkImageWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkJPEGReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkJPEGWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkJSONImageWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkMedicalImageProperties.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkMedicalImageReader2.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkMetaImageReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkMetaImageWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkMRCReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkNIFTIImageHeader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkNIFTIImageReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkNIFTIImageWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkNrrdReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkOMETIFFReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkPNGReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkPNGWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkPNMReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkPNMWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkPostScriptWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkSEPReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkSLCReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkTGAReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkTIFFReader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkTIFFWriter.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkVolume16Reader.h"
    "D:/pv/ParaView/VTK/IO/Image/vtkVolumeReader.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/IO/Image/vtkIOImageModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/IO/Image/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
