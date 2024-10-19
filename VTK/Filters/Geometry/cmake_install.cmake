# Install script for directory: D:/pv/ParaView/VTK/Filters/Geometry

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkFiltersGeometry-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkFiltersGeometry-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkFiltersGeometry-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkFiltersGeometry-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkFiltersGeometry-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkFiltersGeometry-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkFiltersGeometry-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkFiltersGeometry-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkFiltersGeometry-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkFiltersGeometry-pv5.13.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAbstractGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAttributeSmoothingFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkCompositeDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetRegionSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkExplicitStructuredGridSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkHierarchicalDataSetGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataToUniformGrid.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkLinearToQuadraticCellsFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkMarkBoundaryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkProjectSphereFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRecoverGeometryWireframe.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredPointsGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkUnstructuredGridGeometryFilter.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAbstractGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAttributeSmoothingFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkCompositeDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetRegionSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkExplicitStructuredGridSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkHierarchicalDataSetGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataToUniformGrid.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkLinearToQuadraticCellsFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkMarkBoundaryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkProjectSphereFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRecoverGeometryWireframe.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredPointsGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkUnstructuredGridGeometryFilter.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAbstractGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAttributeSmoothingFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkCompositeDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetRegionSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkExplicitStructuredGridSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkHierarchicalDataSetGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataToUniformGrid.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkLinearToQuadraticCellsFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkMarkBoundaryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkProjectSphereFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRecoverGeometryWireframe.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredPointsGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkUnstructuredGridGeometryFilter.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAbstractGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkAttributeSmoothingFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkCompositeDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetRegionSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkDataSetSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkExplicitStructuredGridSurfaceFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkHierarchicalDataSetGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkImageDataToUniformGrid.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkLinearToQuadraticCellsFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkMarkBoundaryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkProjectSphereFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRecoverGeometryWireframe.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkRectilinearGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredAMRNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridConnectivity.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredGridPartitioner.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredNeighbor.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkStructuredPointsGeometryFilter.h"
      "D:/pv/ParaView/VTK/Filters/Geometry/vtkUnstructuredGridGeometryFilter.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Filters/Geometry/vtkFiltersGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Filters/Geometry/vtkFiltersGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Filters/Geometry/vtkFiltersGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Filters/Geometry/vtkFiltersGeometryModule.h")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkFiltersGeometry" TYPE FILE FILES "D:/pv/ParaView/VTK/Filters/Geometry/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Filters/Geometry/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
