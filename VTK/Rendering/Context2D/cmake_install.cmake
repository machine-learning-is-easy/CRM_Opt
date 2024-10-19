# Install script for directory: D:/pv/ParaView/VTK/Rendering/Context2D

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkRenderingContext2D-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkRenderingContext2D-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkRenderingContext2D-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkRenderingContext2D-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkRenderingContext2D-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkRenderingContext2D-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkRenderingContext2D-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkRenderingContext2D-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkRenderingContext2D-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkRenderingContext2D-pv5.13.dll")
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
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextBufferId.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBlockItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBrush.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextActor.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextClip.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextKeyEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMapper2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMouseEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextScene.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextTransform.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkImageItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkLabeledContourPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkMarkerUtilities.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPen.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPropItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkTooltipItem.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextBufferId.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBlockItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBrush.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextActor.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextClip.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextKeyEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMapper2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMouseEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextScene.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextTransform.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkImageItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkLabeledContourPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkMarkerUtilities.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPen.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPropItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkTooltipItem.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextBufferId.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBlockItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBrush.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextActor.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextClip.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextKeyEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMapper2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMouseEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextScene.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextTransform.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkImageItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkLabeledContourPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkMarkerUtilities.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPen.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPropItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkTooltipItem.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextBufferId.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkAbstractContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBlockItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkBrush.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContext3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextActor.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextClip.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextDevice3D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextKeyEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMapper2D.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextMouseEvent.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextScene.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkContextTransform.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkImageItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkLabeledContourPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkMarkerUtilities.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPen.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPolyDataItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkPropItem.h"
      "D:/pv/ParaView/VTK/Rendering/Context2D/vtkTooltipItem.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/Context2D/vtkRenderingContext2DModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/Context2D/vtkRenderingContext2DModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/Context2D/vtkRenderingContext2DModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Rendering/Context2D/vtkRenderingContext2DModule.h")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Rendering/Context2D/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
