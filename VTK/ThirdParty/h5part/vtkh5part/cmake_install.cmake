# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkh5part-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkh5part-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkh5part/src" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5BlockErrors.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5Block.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5BlockPrivate.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5BlockReadWrite.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5BlockTypes.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5MultiBlockErrors.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5MultiBlock.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5MultiBlockPrivate.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5MultiBlockReadWrite.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5MultiBlockTypes.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5PartAttrib.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5PartErrors.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5PartF.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5Part.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5PartPrivate.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/H5PartTypes.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/Underscore.h"
    "D:/pv/ParaView/VTK/ThirdParty/h5part/vtkh5part/src/vtk_h5part_mangle.h"
    "D:/pv/build/VTK/ThirdParty/h5part/vtkh5part/src/vtkh5part_export.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/h5part/vtkh5part/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
