# Install script for directory: D:/pv/ParaView/VTK/Charts/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkChartsCore-hierarchy.txt" FILES "D:/pv/build/lib/vtk/hierarchy/ParaView/vtkChartsCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkChartsCore-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkChartsCore-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Charts/Core/vtkAxis.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkAxisExtended.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkCategoryLegend.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChart.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartBox.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartHistogram2D.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartLegend.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartMatrix.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartParallelCoordinates.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartPie.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartXY.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkChartXYZ.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkColorLegend.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkColorTransferControlPointsItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkColorTransferFunctionItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkCompositeControlPointsItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkCompositeTransferFunctionItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkContextArea.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkContextPolygon.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkControlPointsItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkInteractiveArea.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkLookupTableItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPiecewiseControlPointsItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPiecewiseFunctionItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPiecewisePointHandleItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlot.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlot3D.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotArea.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotBag.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotBar.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotBarRangeHandlesItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotBox.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotFunctionalBag.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotGrid.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotHistogram2D.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotLine.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotLine3D.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotParallelCoordinates.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotPie.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotPoints.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotPoints3D.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotRangeHandlesItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotStacked.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkPlotSurface.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkRangeHandlesItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkScalarsToColorsItem.h"
    "D:/pv/ParaView/VTK/Charts/Core/vtkScatterPlotMatrix.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/Charts/Core/vtkChartsCoreModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/Charts/Core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
