# Install script for directory: D:/pv/ParaView/Remoting/ServerManager

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkRemotingServerManager-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkRemotingServerManager-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkRemotingServerManager-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkRemotingServerManager-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIVectorPropertyTemplate.txx"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMRangeDomainTemplate.txx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMMessageMinimal.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkLoadStateOptions.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkRemoteWriterHelper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVCatalystChannelInformation.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVCatalystSessionCore.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVDataMover.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVFilePathEncodingHelper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVMultiClientsInformation.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVProxyDefinitionIterator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVSessionBase.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVSessionCore.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVSessionCoreInterpreterHelper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkPVSessionServer.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIArraySelectionProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSICollaborationManager.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSICompoundSourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIDataArrayProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIDataArraySelectionProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIDirectoryProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIDoubleMapProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIDoubleVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIIdTypeVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIIndexSelectionProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIInputProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIIntVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIMetaReaderProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIMultiplexerSourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIObject.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIProxyDefinitionManager.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIProxyProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSISourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIStringVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSITimeLabelProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSITimeRangeProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSITimeStepsProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIWriterProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMAMRLevelsDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMArrayListDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMArrayRangeDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMArraySelectionDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMBooleanDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMBoundsDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMCollaborationManager.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMCompositeTreeDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMCompoundProxyDefinitionLoader.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMCompoundSourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMCompoundSourceProxyDefinitionBuilder.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMCoreUtilities.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDataAssemblyDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDataAssemblyListDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDataExtractWriterProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDataSourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDataTypeDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDataTypeQueryDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDeserializer.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDeserializerProtobuf.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDeserializerXML.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDeserializerXMLCache.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDimensionsDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDirectoryProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDiscreteDoubleDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDocumentation.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDomainIterator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDoubleMapProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDoubleMapPropertyIterator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDoubleRangeDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMDoubleVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMEnumerationDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMExtentDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMExtractsController.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMExtractTriggerProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMExtractWriterProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMFieldDataDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMFileListDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMFileUtilities.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMFixedTypeDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMIdTypeVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMIndexSelectionDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMInputArrayDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMInputFileNameDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMInputProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMIntRangeDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMIntVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMLink.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMLoadStateOptionsProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMMapProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMMessage.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMMultiplexerSourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMMultiplexerInputDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMNamedPropertyIterator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMNullProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMNumberOfComponentsDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMObject.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMOrderedPropertyIterator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMOutputPort.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMParaViewPipelineController.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPipelineState.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPluginLoaderProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPluginManager.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPropertyGroup.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPropertyHelper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPropertyIterator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPropertyLink.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPropertyModificationUndoElement.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyDefinitionManager.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyGroupDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyInitializationHelper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyIterator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyLink.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyListDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyLocator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyManager.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyManagerUtilities.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxyProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMProxySelectionModel.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPSWriterProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMPWriterProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMReaderFactory.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMReaderReloadHelper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMRegistrationNamesDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMRemoteObject.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMRemoteObjectUpdateUndoElement.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSelectionQueryDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSelfGeneratingSourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMServerStateLocator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSession.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSessionClient.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSessionObject.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSessionProxyManager.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSettings.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSettingsProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMSourceProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMStateLoader.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMStateLocator.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMStateVersionController.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMStringListDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMStringVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMTimeKeeper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMTimeKeeperProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMTimeStepIndexDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMTimeStepsDomain.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMTrace.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMUncheckedPropertyHelper.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMUndoElement.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMUndoStack.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMUndoStackBuilder.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMVectorProperty.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMWriterFactory.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMWriterProxy.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSIVectorPropertyTemplate.h"
    "D:/pv/ParaView/Remoting/ServerManager/vtkSMRangeDomainTemplate.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/Remoting/ServerManager/vtkRemotingServerManagerModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/Remoting/ServerManager/vtkPVMessage.pb.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/Remoting/ServerManager/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
