# Install script for directory: D:/pv/ParaView/Remoting/Views

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkRemotingViews-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkRemotingViews-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkRemotingViews-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkRemotingViews-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/Remoting/Views/vtkStreamingPriorityQueue.h"
    "D:/pv/ParaView/Remoting/Views/vtk2DWidgetRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtk3DWidgetRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkProtractorRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkAMROutlineRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkAMRStreamingPriorityQueue.h"
    "D:/pv/ParaView/Remoting/Views/vtkAMRStreamingVolumeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkBoundingRectContextDevice2D.h"
    "D:/pv/ParaView/Remoting/Views/vtkCaveSynchronizedRenderers.h"
    "D:/pv/ParaView/Remoting/Views/vtkCellGridRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkChartRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkChartSelectionRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkChartTextRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkChartLogoRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkChartWarning.h"
    "D:/pv/ParaView/Remoting/Views/vtkCompositeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkContext2DScalarBarActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkDataLabelRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkFeatureEdgesRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkGeometryRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkGeometryRepresentationWithFaces.h"
    "D:/pv/ParaView/Remoting/Views/vtkGeometrySliceRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkGlyph3DRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkGridAxes2DActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkGridAxes3DActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkGridAxesHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkGridAxesPlane2DActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkHyperTreeGridRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkImageSliceRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkImageVolumeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkLogoSourceRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkMoleculeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkMultiSliceContextItem.h"
    "D:/pv/ParaView/Remoting/Views/vtkOrderedCompositingHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkOutlineRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVAxesActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVAxesWidget.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVBoxChartRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVCameraCollection.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVCenterAxesActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVClientServerSynchronizedRenderers.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVComparativeAnimationCue.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVComparativeView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVCompositeOrthographicSliceRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVCompositeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVContextInteractorStyle.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVContextView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVContextViewDataDeliveryManager.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVDataDeliveryManager.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVDataRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVDataRepresentationPipeline.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVDefaultPass.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVDiscretizableColorTransferFunction.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVDisplaySizedImplicitPlaneRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVEncodeSelectionForServer.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVFrustumActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVGridAxes3DActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVGridAxes3DRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVHardwareSelector.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVHistogramChartRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVImageChartRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVImageSliceMapper.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVImplicitCylinderRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVImplicitPlaneRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVInteractiveViewLinkRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVIOSettings.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVLODActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVLODVolume.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVLastSelectionInformation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVLight.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVLogoSource.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVMaterialLibrary.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVMultiSliceView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVOpenGLInformation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVOrthographicSliceView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVParallelCoordinatesRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVPlotMatrixRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVPlotMatrixView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVPlotTime.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVProcessWindow.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVProminentValuesInformation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRayCastPickingHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRenderView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRenderViewDataDeliveryManager.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRenderViewSettings.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRenderViewWithEDL.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRenderingCapabilitiesInformation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRepresentedArrayListSettings.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVRepresentedDataInformation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVScalarBarActor.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVScalarBarRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVSelectionInformation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVStreamingPiecesInformation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVSynchronizedRenderer.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVTransferFunction2D.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVTransferFunction2DBox.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPVXYChartView.h"
    "D:/pv/ParaView/Remoting/Views/vtkPointGaussianRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkPolarAxesRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkProgressBarSourceRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkQuartileChartRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkRulerSourceRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkSIImageTextureProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSIPVRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSIUnstructuredGridVolumeRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMBoxRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMCameraLink.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMCameraProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMChartRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMChartSeriesListDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMChartSeriesSelectionDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMChartUseIndexForAxisDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMCinemaVolumetricImageExtractWriterProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMColorMapEditorHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMComparativeAnimationCueProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMComparativeAnimationCueUndoElement.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMComparativeViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMContextViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMContextItemWidgetProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMDataDeliveryManagerProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMDisplaySizedImplicitPlaneRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMImageExtractWriterProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMImplicitPlaneRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMLightProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMMaterialDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMMaterialLibraryProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMMultiSliceViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMNew2DWidgetRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMNewWidgetRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMNewWidgetRepresentationProxyAbstract.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMOrthographicSliceViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMPVMoleculeRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMPVRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMParaViewPipelineControllerWithRendering.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMPlotMatrixViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMPlotlyJsonExtractWriterProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMRangedTransferFunctionDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMRecolorableImageExtractWriterProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMRenderViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMRendererDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMRepresentationTypeDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMRepresentedArrayListDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMSaveScreenshotProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMScalarBarWidgetRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMSelectionHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMSelectionLink.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMSpreadSheetRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMSpreadSheetViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMTextWidgetRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMTransferFunction2DProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMTransferFunctionManager.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMTransferFunctionPresets.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMTransferFunctionProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMUtilities.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMViewLayoutProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMViewLink.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMViewProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMViewProxyInteractorHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMViewResolutionDomain.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMWidgetRepresentationProxy.h"
    "D:/pv/ParaView/Remoting/Views/vtkSMXYChartRepresentationInitializationHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkSelectionRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkSpreadSheetRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkSpreadSheetView.h"
    "D:/pv/ParaView/Remoting/Views/vtkStructuredGridVolumeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkSurfaceLICRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkTextSourceRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkThreeSliceFilter.h"
    "D:/pv/ParaView/Remoting/Views/vtkTilesHelper.h"
    "D:/pv/ParaView/Remoting/Views/vtkTransferFunctionBoxItem.h"
    "D:/pv/ParaView/Remoting/Views/vtkTransferFunctionChartHistogram2D.h"
    "D:/pv/ParaView/Remoting/Views/vtkUnstructuredGridVolumeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkViewLayout.h"
    "D:/pv/ParaView/Remoting/Views/vtkVolumeRepresentation.h"
    "D:/pv/ParaView/Remoting/Views/vtkXYChartRepresentation.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/Remoting/Views/vtkRemotingViewsModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkRemotingViews" TYPE FILE FILES "D:/pv/ParaView/Remoting/Views/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/Remoting/Views/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
