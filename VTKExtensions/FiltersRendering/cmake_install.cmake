# Install script for directory: D:/pv/ParaView/VTKExtensions/FiltersRendering

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkPVVTKExtensionsFiltersRendering-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkPVVTKExtensionsFiltersRendering-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkPVVTKExtensionsFiltersRendering-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkPVVTKExtensionsFiltersRendering-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkAbstractChartExporter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkAllToNRedistributeCompositePolyData.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkAllToNRedistributePolyData.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkBalancedRedistributePolyData.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkBlockDeliveryPreprocessor.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkClientServerMoveData.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkCSVExporter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkDataTabulator.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkImageCompressor.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkImageTransparencyFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkLZ4Compressor.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkMarkSelectedRows.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkMPIMoveData.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkNetworkImageSource.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkOrderedCompositeDistributor.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkPlotlyJsonExporter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkPVGeometryFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkRedistributePolyData.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkResampledAMRImageSource.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkSelectionDeliveryFilter.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkSortedTableStreamer.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkSquirtCompressor.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkVolumeRepresentationPreprocessor.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkWeightedRedistributePolyData.h"
    "D:/pv/ParaView/VTKExtensions/FiltersRendering/vtkZlibImageCompressor.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTKExtensions/FiltersRendering/vtkPVVTKExtensionsFiltersRenderingModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkPVVTKExtensionsFiltersRendering" TYPE FILE FILES "D:/pv/ParaView/VTKExtensions/FiltersRendering/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTKExtensions/FiltersRendering/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
