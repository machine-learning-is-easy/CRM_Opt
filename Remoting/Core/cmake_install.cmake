# Install script for directory: D:/pv/ParaView/Remoting/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkRemotingCore-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkRemotingCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkRemotingCore-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkRemotingCore-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/Remoting/Core/vtkReservedRemoteObjectIds.h"
    "D:/pv/ParaView/Remoting/Core/vtkCompositeMultiProcessController.h"
    "D:/pv/ParaView/Remoting/Core/vtkDisplayConfiguration.h"
    "D:/pv/ParaView/Remoting/Core/vtkMPIMToNSocketConnection.h"
    "D:/pv/ParaView/Remoting/Core/vtkMPIMToNSocketConnectionPortInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkNetworkAccessManager.h"
    "D:/pv/ParaView/Remoting/Core/vtkPResourceFileLocator.h"
    "D:/pv/ParaView/Remoting/Core/vtkProcessModule.h"
    "D:/pv/ParaView/Remoting/Core/vtkProcessModuleConfiguration.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVAlgorithmPortsInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVArrayInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVClassNameInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVDataAssemblyInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVDataInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVDataSetAttributesInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVDataSizeInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVDisableStackTraceSignalHandler.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVDynamicInitializerPluginInterface.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVEnableStackTraceSignalHandler.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVEnvironmentInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVEnvironmentInformationHelper.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVFileInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVFileInformationHelper.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVLogInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVMemoryUseInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVPlugin.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVPluginLoader.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVPluginsInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVPluginTracker.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVProgressHandler.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVPythonInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVPythonModule.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVPythonPluginInterface.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVServerInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVServerManagerPluginInterface.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVSession.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVSystemConfigInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVSystemInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVTemporalDataInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkPVTimerInformation.h"
    "D:/pv/ParaView/Remoting/Core/vtkRemotingCoreConfiguration.h"
    "D:/pv/ParaView/Remoting/Core/vtkSession.h"
    "D:/pv/ParaView/Remoting/Core/vtkSessionIterator.h"
    "D:/pv/ParaView/Remoting/Core/vtkTCPNetworkAccessManager.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/build/Remoting/Core/vtkPVConfig.h"
    "D:/pv/build/Remoting/Core/vtkRemotingCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkRemotingCore" TYPE FILE FILES "D:/pv/ParaView/Remoting/Core/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/Remoting/Core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
