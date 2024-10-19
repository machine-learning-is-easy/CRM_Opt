# Install script for directory: D:/pv/ParaView/VTK/Rendering/SceneGraph

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkRenderingSceneGraph-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkRenderingSceneGraph-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkRenderingSceneGraph-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkRenderingSceneGraph-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkRenderingSceneGraph-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkRenderingSceneGraph-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkRenderingSceneGraph-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkRenderingSceneGraph-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkRenderingSceneGraph-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkRenderingSceneGraph-pv5.13.dll")
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
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkActorNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkCameraNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkLightNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkPolyDataMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkRendererNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNodeFactory.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkWindowNode.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkActorNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkCameraNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkLightNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkPolyDataMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkRendererNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNodeFactory.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkWindowNode.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkActorNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkCameraNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkLightNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkPolyDataMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkRendererNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNodeFactory.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkWindowNode.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkActorNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkCameraNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkLightNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkPolyDataMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkRendererNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkViewNodeFactory.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeMapperNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkVolumeNode.h"
      "D:/pv/ParaView/VTK/Rendering/SceneGraph/vtkWindowNode.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/SceneGraph/vtkRenderingSceneGraphModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/SceneGraph/vtkRenderingSceneGraphModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/SceneGraph/vtkRenderingSceneGraphModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/SceneGraph/vtkRenderingSceneGraphModule.h")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Rendering/SceneGraph/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
