# Install script for directory: D:/pv/ParaView/VTKExtensions/FiltersGeneral

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkPVVTKExtensionsFiltersGeneral-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkPVVTKExtensionsFiltersGeneral-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkPVVTKExtensionsFiltersGeneral-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkPVVTKExtensionsFiltersGeneral-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkAnnotateGlobalDataFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkAnnotateSelectionFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkAxisAlignedCutter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkCellIntegrator.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkConvertPolyhedraFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkEquivalenceSet.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkExtractScatterPlot.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkFlashContour.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkHierarchicalFractal.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkHybridProbeFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkImageSimpleSource.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkIntegrateFlowThroughSurface.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkIsoVolume.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkOMETIFFChannelCalculator.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPEquivalenceSet.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPlotEdges.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVArrayCalculator.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVClipClosedSurface.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVClipDataSet.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVConnectivityFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVContourFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVCutter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVDataSetAlgorithmSelectorFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVExtractComponent.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVExtractGhostCells.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVExtractVOI.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVGlyphFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVGradientFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVLinearExtrusionFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVMetaClipDataSet.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVMetaSliceDataSet.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVPlaneCutter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVTextSource.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVThreshold.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkPVTransposeTable.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkRectilinearGridConnectivity.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkRulerLineForInput.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkSliceAlongPolyPlane.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkSurfaceVectors.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkTimeStepProgressFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersGeneral/vtkTimeToTextConvertor.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTKExtensions/FiltersGeneral/vtkPVVTKExtensionsFiltersGeneralModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkPVVTKExtensionsFiltersGeneral" TYPE FILE FILES "D:/pv/ParaView/VTKExtensions/FiltersGeneral/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTKExtensions/FiltersGeneral/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
