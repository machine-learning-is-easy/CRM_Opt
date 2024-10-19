# Install script for directory: D:/pv/ParaView/Plugins/StreamingParticles/Particles

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtk/hierarchy/StreamingParticles" TYPE FILE RENAME "vtkStreamingParticles-hierarchy.txt" FILES "D:/pv/build/bin/paraview-5.13/plugins/StreamingParticles/vtk/hierarchy/StreamingParticles/vtkStreamingParticles-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
    "D:/pv/ParaView/Plugins/StreamingParticles/Particles/vtkPVRandomPointsStreamingSource.h"
    "D:/pv/ParaView/Plugins/StreamingParticles/Particles/vtkStreamingParticlesPriorityQueue.h"
    "D:/pv/ParaView/Plugins/StreamingParticles/Particles/vtkStreamingParticlesRepresentation.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/build/Plugins/StreamingParticles/Particles/vtkStreamingParticlesModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/Plugins/StreamingParticles/Particles/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
