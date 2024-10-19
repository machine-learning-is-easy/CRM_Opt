# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/IsAttachementPointPredicate.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/IsAscendingDecorator.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/IsAttachementPointNeededPredicate.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/AttachmentSuperparentAndIndexComparator.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/AttachmentIdsEqualComparator.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/SetFirstAttachmentPointInRoundWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/UpdateHyperstructureSetHyperarcsAndNodesWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/UpdateHyperstructureSetSuperchildrenWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/FindSuperparentForNecessaryNodesWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/CopyBaseRegularStructureWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/SetSuperparentSetDecorator.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/AttachmentAndSupernodeComparator.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/ResizeArraysBuildNewSupernodeIdsWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/CreateSuperarcsWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/HierarchicalAugmenterInOutData.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/contourtree_distributed/hierarchical_augmenter/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
