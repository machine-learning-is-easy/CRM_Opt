# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtktoken-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtktoken-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/token" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/Compiler.h"
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/Hash.h"
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/Singletons.h"
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/Token.h"
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/Type.h"
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/TypeContainer.h"
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/Manager.h"
    "D:/pv/build/VTK/ThirdParty/token/vtktoken/token/Options.h"
    "D:/pv/build/VTK/ThirdParty/token/vtktoken/token/CxxABIConfigure.h"
    "D:/pv/build/VTK/ThirdParty/token/vtktoken/token/Exports.h"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/token/json" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/json/jsonToken.h"
    "D:/pv/ParaView/VTK/ThirdParty/token/vtktoken/token/json/jsonManager.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/build/VTK/ThirdParty/token/vtktoken/token/testing/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/token/vtktoken/token/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
