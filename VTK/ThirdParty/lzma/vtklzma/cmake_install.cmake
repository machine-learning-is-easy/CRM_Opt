# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtklzma-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtklzma-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtklzma/src/liblzma/api" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/vtk_lzma_mangle.h"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtklzma/src/liblzma/api/lzma" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/base.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/bcj.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/block.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/check.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/container.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/delta.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/filter.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/hardware.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/index.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/index_hash.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/lzma12.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/stream_flags.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/version.h"
    "D:/pv/ParaView/VTK/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/vli.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/lzma/vtklzma/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
