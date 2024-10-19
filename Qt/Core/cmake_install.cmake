# Install script for directory: D:/pv/ParaView/Qt/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/pqCore-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/pqCore-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/Qt/Core/pqQVTKWidgetBase.h"
    "D:/pv/build/Qt/Core/pqQtConfig.h"
    "D:/pv/ParaView/Qt/Core/pqAnimationCue.h"
    "D:/pv/ParaView/Qt/Core/pqAnimationScene.h"
    "D:/pv/ParaView/Qt/Core/pqAnnotationsModel.h"
    "D:/pv/ParaView/Qt/Core/pqApplicationCore.h"
    "D:/pv/ParaView/Qt/Core/pqAutoStartInterface.h"
    "D:/pv/ParaView/Qt/Core/pqBoxChartView.h"
    "D:/pv/ParaView/Qt/Core/pqCameraWidgetViewLink.h"
    "D:/pv/ParaView/Qt/Core/pqCheckBoxDelegate.h"
    "D:/pv/ParaView/Qt/Core/pqCollaborationEventPlayer.h"
    "D:/pv/ParaView/Qt/Core/pqCollaborationManager.h"
    "D:/pv/ParaView/Qt/Core/pqComparativeContextView.h"
    "D:/pv/ParaView/Qt/Core/pqComparativeRenderView.h"
    "D:/pv/ParaView/Qt/Core/pqComparativeXYBarChartView.h"
    "D:/pv/ParaView/Qt/Core/pqComparativeXYChartView.h"
    "D:/pv/ParaView/Qt/Core/pqContextView.h"
    "D:/pv/ParaView/Qt/Core/pqCoreConfiguration.h"
    "D:/pv/ParaView/Qt/Core/pqCoreInit.h"
    "D:/pv/ParaView/Qt/Core/pqCoreTestUtility.h"
    "D:/pv/ParaView/Qt/Core/pqCoreUtilities.h"
    "D:/pv/ParaView/Qt/Core/pqDataRepresentation.h"
    "D:/pv/ParaView/Qt/Core/pqExtractor.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialog.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialogEventPlayer.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialogEventTranslator.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialogFavoriteModel.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialogFilter.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialogLocationModel.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialogModel.h"
    "D:/pv/ParaView/Qt/Core/pqFileDialogRecentDirsModel.h"
    "D:/pv/ParaView/Qt/Core/pqFileUtilitiesEventPlayer.h"
    "D:/pv/ParaView/Qt/Core/pqFlatTreeViewEventPlayer.h"
    "D:/pv/ParaView/Qt/Core/pqFlatTreeViewEventTranslator.h"
    "D:/pv/ParaView/Qt/Core/pqGraphLayoutStrategyInterface.h"
    "D:/pv/ParaView/Qt/Core/pqIconListModel.h"
    "D:/pv/ParaView/Qt/Core/pqIconSettings.h"
    "D:/pv/ParaView/Qt/Core/pqImageUtil.h"
    "D:/pv/ParaView/Qt/Core/pqInteractiveViewLink.h"
    "D:/pv/ParaView/Qt/Core/pqInterfaceTracker.h"
    "D:/pv/ParaView/Qt/Core/pqKeyEventFilter.h"
    "D:/pv/ParaView/Qt/Core/pqKeySequences.h"
    "D:/pv/ParaView/Qt/Core/pqLinkedObjectInterface.h"
    "D:/pv/ParaView/Qt/Core/pqLinkedObjectQTextEdit.h"
    "D:/pv/ParaView/Qt/Core/pqLinkViewWidget.h"
    "D:/pv/ParaView/Qt/Core/pqLinksModel.h"
    "D:/pv/ParaView/Qt/Core/pqLogViewerWidget.h"
    "D:/pv/ParaView/Qt/Core/pqMainWindowEventManager.h"
    "D:/pv/ParaView/Qt/Core/pqMenuReactionUtils.h"
    "D:/pv/ParaView/Qt/Core/pqModalShortcut.h"
    "D:/pv/ParaView/Qt/Core/pqMultiSliceAxisWidget.h"
    "D:/pv/ParaView/Qt/Core/pqMultiSliceView.h"
    "D:/pv/ParaView/Qt/Core/pqNonEditableStyledItemDelegate.h"
    "D:/pv/ParaView/Qt/Core/pqObjectBuilder.h"
    "D:/pv/ParaView/Qt/Core/pqOutputPort.h"
    "D:/pv/ParaView/Qt/Core/pqOutputWidget.h"
    "D:/pv/ParaView/Qt/Core/pqParallelCoordinatesChartView.h"
    "D:/pv/ParaView/Qt/Core/pqPipelineFilter.h"
    "D:/pv/ParaView/Qt/Core/pqPipelineRepresentation.h"
    "D:/pv/ParaView/Qt/Core/pqPipelineSource.h"
    "D:/pv/ParaView/Qt/Core/pqPlotMatrixView.h"
    "D:/pv/ParaView/Qt/Core/pqPluginLocationInterface.h"
    "D:/pv/ParaView/Qt/Core/pqPluginManager.h"
    "D:/pv/ParaView/Qt/Core/pqProgressManager.h"
    "D:/pv/ParaView/Qt/Core/pqPropertyLinks.h"
    "D:/pv/ParaView/Qt/Core/pqPropertyLinksConnection.h"
    "D:/pv/ParaView/Qt/Core/pqPropertyManager.h"
    "D:/pv/ParaView/Qt/Core/pqProxy.h"
    "D:/pv/ParaView/Qt/Core/pqProxyModifiedStateUndoElement.h"
    "D:/pv/ParaView/Qt/Core/pqProxySelection.h"
    "D:/pv/ParaView/Qt/Core/pqQVTKWidget.h"
    "D:/pv/ParaView/Qt/Core/pqQVTKWidgetEventPlayer.h"
    "D:/pv/ParaView/Qt/Core/pqQVTKWidgetEventTranslator.h"
    "D:/pv/ParaView/Qt/Core/pqRecentlyUsedResourceLoaderInterface.h"
    "D:/pv/ParaView/Qt/Core/pqRecentlyUsedResourcesList.h"
    "D:/pv/ParaView/Qt/Core/pqRenderView.h"
    "D:/pv/ParaView/Qt/Core/pqRenderViewBase.h"
    "D:/pv/ParaView/Qt/Core/pqRepresentation.h"
    "D:/pv/ParaView/Qt/Core/pqSMAdaptor.h"
    "D:/pv/ParaView/Qt/Core/pqSMProxy.h"
    "D:/pv/ParaView/Qt/Core/pqScalarBarRepresentation.h"
    "D:/pv/ParaView/Qt/Core/pqScalarsToColors.h"
    "D:/pv/ParaView/Qt/Core/pqServer.h"
    "D:/pv/ParaView/Qt/Core/pqServerConfiguration.h"
    "D:/pv/ParaView/Qt/Core/pqServerConfigurationCollection.h"
    "D:/pv/ParaView/Qt/Core/pqServerManagerModel.h"
    "D:/pv/ParaView/Qt/Core/pqServerManagerModelInterface.h"
    "D:/pv/ParaView/Qt/Core/pqServerManagerModelItem.h"
    "D:/pv/ParaView/Qt/Core/pqServerManagerObserver.h"
    "D:/pv/ParaView/Qt/Core/pqServerResource.h"
    "D:/pv/ParaView/Qt/Core/pqSettings.h"
    "D:/pv/ParaView/Qt/Core/pqSignalsBlocker.h"
    "D:/pv/ParaView/Qt/Core/pqSpreadSheetView.h"
    "D:/pv/ParaView/Qt/Core/pqSpreadSheetViewModel.h"
    "D:/pv/ParaView/Qt/Core/pqSpreadSheetViewSelectionModel.h"
    "D:/pv/ParaView/Qt/Core/pqSpreadSheetViewWidget.h"
    "D:/pv/ParaView/Qt/Core/pqStandardServerManagerModelInterface.h"
    "D:/pv/ParaView/Qt/Core/pqTextLinker.h"
    "D:/pv/ParaView/Qt/Core/pqTimeKeeper.h"
    "D:/pv/ParaView/Qt/Core/pqTreeLayoutStrategyInterface.h"
    "D:/pv/ParaView/Qt/Core/pqUndoStack.h"
    "D:/pv/ParaView/Qt/Core/pqView.h"
    "D:/pv/ParaView/Qt/Core/pqXMLEventObserver.h"
    "D:/pv/ParaView/Qt/Core/pqXMLEventSource.h"
    "D:/pv/ParaView/Qt/Core/pqXMLUtil.h"
    "D:/pv/ParaView/Qt/Core/pqXYBarChartView.h"
    "D:/pv/ParaView/Qt/Core/pqXYChartView.h"
    "D:/pv/ParaView/Qt/Core/pqXYHistogramChartView.h"
    "D:/pv/ParaView/Qt/Core/vtkPVGUIPluginInterface.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/Qt/Core/pqCoreModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/Qt/Core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
