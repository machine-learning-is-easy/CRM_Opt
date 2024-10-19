# Install script for directory: D:/pv/ParaView/VTK/Filters/Points

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkFiltersPoints-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkFiltersPoints-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkFiltersPoints-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkFiltersPoints-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Filters/Points/vtkBoundedPointSource.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkConnectedPointsFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkConvertToPointCloud.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkDensifyPointCloudFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkEllipsoidalGaussianKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkEuclideanClusterExtraction.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkExtractEnclosedPoints.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkExtractHierarchicalBins.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkExtractPointCloudPiece.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkExtractPoints.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkExtractSurface.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkFitImplicitFunction.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkGaussianKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkGeneralizedKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkHierarchicalBinningFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkInterpolationKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkLinearKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkMaskPointsFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPCACurvatureEstimation.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPCANormalEstimation.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPointCloudFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPointDensityFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPointInterpolator.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPointInterpolator2D.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPointOccupancyFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPointSmoothingFilter.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkPoissonDiskSampler.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkProbabilisticVoronoiKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkProjectPointsToPlane.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkRadiusOutlierRemoval.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkSPHCubicKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkSPHInterpolator.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkSPHKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkSPHQuarticKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkSPHQuinticKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkShepardKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkSignedDistance.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkStatisticalOutlierRemoval.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkUnsignedDistance.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkVoronoiKernel.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkVoxelGrid.h"
    "D:/pv/ParaView/VTK/Filters/Points/vtkWendlandQuinticKernel.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/Filters/Points/vtkFiltersPointsModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/Filters/Points/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
