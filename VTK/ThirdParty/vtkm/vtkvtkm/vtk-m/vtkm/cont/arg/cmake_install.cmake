# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkvtkm/vtk-m/vtkm/cont/arg" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/ControlSignatureTagBase.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/Transport.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagArrayIn.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagArrayInOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagArrayOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagAtomicArray.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagBitField.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagCellSetIn.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagExecObject.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagKeyedValuesIn.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagKeyedValuesInOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagKeyedValuesOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagKeysIn.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagTopologyFieldIn.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagWholeArrayIn.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagWholeArrayInOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TransportTagWholeArrayOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheck.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagArrayIn.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagArrayInOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagArrayOut.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagAtomicArray.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagBitField.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagCellSet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagCellSetStructured.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagExecObject.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/TypeCheckTagKeys.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/cont/arg/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
