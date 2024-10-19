# Install script for directory: D:/pv/ParaView/VTK/Filters/Parallel

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkFiltersParallel-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkFiltersParallel-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkFiltersParallel-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkFiltersParallel-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkBlockDistribution.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkAdaptiveTemporalInterpolator.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkAggregateDataSetFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkAlignImageDataSetFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkAngularPeriodicFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkCollectGraph.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkCollectPolyData.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkCollectTable.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkCutMaterial.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkDistributedDataFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkDuplicatePolyData.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkExtractCTHPart.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkExtractPolyDataPiece.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkExtractUnstructuredGridPiece.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkExtractUserDefinedPiece.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkGenerateProcessIds.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkHyperTreeGridGenerateGlobalIds.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkHyperTreeGridGenerateProcessIds.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkHyperTreeGridGhostCellsGenerator.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPHyperTreeGridProbeFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkIntegrateAttributes.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPeriodicFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPCellDataToPointData.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPConvertToMultiBlockDataSet.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPExtractDataArraysOverTime.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPExtractExodusGlobalTemporalVariables.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPExtractSelectedArraysOverTime.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPieceRequestFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPieceScalars.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPipelineSize.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPKdTree.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPLinearExtrusionFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPMaskPoints.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPMergeArrays.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPOutlineCornerFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPOutlineFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPOutlineFilterInternals.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPPolyDataNormals.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPProbeFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPProjectSphereFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPReflectionFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPResampleFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPartitionBalancer.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkProcessIdScalars.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPSphereSource.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPTextureMapToSphere.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkPYoungsMaterialInterface.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkRectilinearGridOutlineFilter.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkRemoveGhosts.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkTransmitPolyDataPiece.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkTransmitRectilinearGridPiece.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkTransmitStructuredDataPiece.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkTransmitStructuredGridPiece.h"
    "D:/pv/ParaView/VTK/Filters/Parallel/vtkTransmitUnstructuredGridPiece.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/Filters/Parallel/vtkFiltersParallelModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/Filters/Parallel/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
