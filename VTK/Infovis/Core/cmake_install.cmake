# Install script for directory: D:/pv/ParaView/VTK/Infovis/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkInfovisCore-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkInfovisCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkInfovisCore-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkInfovisCore-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Infovis/Core/vtkAddMembershipArray.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkAdjacencyMatrixToEdgeTable.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkArrayNorm.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkArrayToTable.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkCollapseGraph.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkCollapseVerticesByArray.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkContinuousScatterplot.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkDataObjectToTable.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkDotProductSimilarity.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkEdgeCenters.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkExpandSelectedGraph.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkExtractSelectedGraph.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkExtractSelectedTree.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkGenerateIndexArray.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkGraphHierarchicalBundleEdges.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkGroupLeafVertices.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkKCoreDecomposition.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkMergeColumns.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkMergeGraphs.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkMergeTables.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkMutableGraphHelper.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkNetworkHierarchy.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkPipelineGraphSource.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkPruneTreeFilter.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkRandomGraphSource.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkReduceTable.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkRemoveHiddenData.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkRemoveIsolatedVertices.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkSparseArrayToTable.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkStreamGraph.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkStringToCategory.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkStringToNumeric.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTableToArray.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTableToGraph.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTableToSparseArray.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTableToTreeFilter.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkThresholdGraph.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkThresholdTable.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTransferAttributes.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTransposeMatrix.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTreeDifferenceFilter.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTreeFieldAggregator.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkTreeLevelsFilter.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkVertexDegree.h"
    "D:/pv/ParaView/VTK/Infovis/Core/vtkWordCloud.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/Infovis/Core/vtkInfovisCoreModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkInfovisCore" TYPE FILE FILES "D:/pv/ParaView/VTK/Infovis/Core/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/Infovis/Core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
