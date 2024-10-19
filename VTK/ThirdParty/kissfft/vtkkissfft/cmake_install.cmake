# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkkissfft-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkkissfft-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkkissfft" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/kiss_fft_exports.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/_kiss_fft_guts.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/kiss_fft.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/vtkkissfft_fft.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/vtk_kiss_fft_mangle.h"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkkissfft/tools" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/tools/kfc.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/tools/kiss_fftnd.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/tools/kiss_fftndr.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/tools/kiss_fftr.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/tools/vtkkissfft_fftnd.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/tools/vtkkissfft_fftndr.h"
    "D:/pv/ParaView/VTK/ThirdParty/kissfft/vtkkissfft/tools/vtkkissfft_fftr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/kissfft/vtkkissfft/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
