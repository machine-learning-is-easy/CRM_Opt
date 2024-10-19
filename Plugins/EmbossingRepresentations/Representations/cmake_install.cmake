# Install script for directory: D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations/vtk/hierarchy/EmbossingRepresentations" TYPE FILE RENAME "vtkEmbossingRepresentations-hierarchy.txt" FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/vtk/hierarchy/EmbossingRepresentations/vtkEmbossingRepresentations-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/Debug/vtkEmbossingRepresentationsd.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/Release/vtkEmbossingRepresentations.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/MinSizeRel/vtkEmbossingRepresentations.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/RelWithDebInfo/vtkEmbossingRepresentations.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/Debug/vtkEmbossingRepresentationsd.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/Release/vtkEmbossingRepresentations.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/MinSizeRel/vtkEmbossingRepresentations.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/EmbossingRepresentations/RelWithDebInfo/vtkEmbossingRepresentations.dll")
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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapRepresentation.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLBumpMapMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLExtrusionMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionRepresentation.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapRepresentation.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLBumpMapMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLExtrusionMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionRepresentation.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapRepresentation.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLBumpMapMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLExtrusionMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionRepresentation.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkBumpMapRepresentation.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLBumpMapMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkOpenGLExtrusionMapperDelegator.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionMapper.h"
      "D:/pv/ParaView/Plugins/EmbossingRepresentations/Representations/vtkExtrusionRepresentation.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/EmbossingRepresentations/Representations/vtkEmbossingRepresentationsModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/EmbossingRepresentations/Representations/vtkEmbossingRepresentationsModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/EmbossingRepresentations/Representations/vtkEmbossingRepresentationsModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/EmbossingRepresentations/Representations/vtkEmbossingRepresentationsModule.h")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/Plugins/EmbossingRepresentations/Representations/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
