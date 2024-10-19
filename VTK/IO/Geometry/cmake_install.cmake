# Install script for directory: D:/pv/ParaView/VTK/IO/Geometry

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkIOGeometry-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkIOGeometry-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkIOGeometry-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkIOGeometry-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkIOGeometry-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkIOGeometry-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkIOGeometry-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkIOGeometry-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkIOGeometry-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkIOGeometry-pv5.13.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/IO/Geometry/GLTFSampler.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkAVSucdReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkChacoReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFacetWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFLUENTReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGAMBITReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFDocumentLoader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFTexture.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkHoudiniPolyDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkIVWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMFIXReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOFFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOpenFOAMReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkParticleReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkProStarReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkPTSReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkTecplotReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkWindBladeReader.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/IO/Geometry/GLTFSampler.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkAVSucdReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkChacoReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFacetWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFLUENTReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGAMBITReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFDocumentLoader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFTexture.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkHoudiniPolyDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkIVWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMFIXReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOFFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOpenFOAMReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkParticleReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkProStarReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkPTSReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkTecplotReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkWindBladeReader.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/IO/Geometry/GLTFSampler.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkAVSucdReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkChacoReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFacetWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFLUENTReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGAMBITReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFDocumentLoader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFTexture.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkHoudiniPolyDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkIVWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMFIXReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOFFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOpenFOAMReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkParticleReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkProStarReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkPTSReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkTecplotReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkWindBladeReader.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/IO/Geometry/GLTFSampler.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkAVSucdReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkBYUWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkChacoReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFacetWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkFLUENTReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGAMBITReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFDocumentLoader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFTexture.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkGLTFWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkHoudiniPolyDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkIVWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMCubesWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkMFIXReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOBJWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOFFReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkOpenFOAMReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkParticleReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkProStarReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkPTSReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkSTLWriter.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkTecplotReader.h"
      "D:/pv/ParaView/VTK/IO/Geometry/vtkWindBladeReader.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Geometry/vtkIOGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Geometry/vtkIOGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Geometry/vtkIOGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Geometry/vtkIOGeometryModule.h")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/IO/Geometry/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
