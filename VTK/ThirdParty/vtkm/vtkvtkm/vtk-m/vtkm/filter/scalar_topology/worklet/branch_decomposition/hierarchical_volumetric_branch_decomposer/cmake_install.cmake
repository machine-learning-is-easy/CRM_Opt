# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/BranchEndComparator.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/BranchEndGlobalUpdateWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/CollapseBranchesPointerDoublingWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/CollapseBranchesWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/FindBestSupernodeWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/GetOuterEndWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/LocalBestUpDownByVolumeBestUpDownEdgeWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/LocalBestUpDownByVolumeInitSuperarcListWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/LocalBestUpDownByVolumeWorklet.h"
    "D:/pv/ParaView/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/SuperArcVolumetricComparatorIndirectGlobalIdComparator.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/vtkm/vtkvtkm/vtk-m/vtkm/filter/scalar_topology/worklet/branch_decomposition/hierarchical_volumetric_branch_decomposer/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
