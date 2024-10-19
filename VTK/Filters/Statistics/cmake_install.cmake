# Install script for directory: D:/pv/ParaView/VTK/Filters/Statistics

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkFiltersStatistics-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkFiltersStatistics-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkFiltersStatistics-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkFiltersStatistics-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkFiltersStatistics-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkFiltersStatistics-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkFiltersStatistics-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkFiltersStatistics-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkFiltersStatistics-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkFiltersStatistics-pv5.13.dll")
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
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkAutoCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkBivariateLinearTableThreshold.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuantiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuartiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkContingencyStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkDescriptiveStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractFunctionalBagPlot.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractHistogram.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkHighestDensityRegionsStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctor.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctorCalculator.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkLengthDistribution.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkMultiCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkOrderStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkPCAStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithm.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStrahlerMetric.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStreamingStatistics.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkAutoCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkBivariateLinearTableThreshold.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuantiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuartiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkContingencyStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkDescriptiveStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractFunctionalBagPlot.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractHistogram.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkHighestDensityRegionsStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctor.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctorCalculator.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkLengthDistribution.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkMultiCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkOrderStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkPCAStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithm.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStrahlerMetric.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStreamingStatistics.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkAutoCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkBivariateLinearTableThreshold.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuantiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuartiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkContingencyStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkDescriptiveStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractFunctionalBagPlot.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractHistogram.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkHighestDensityRegionsStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctor.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctorCalculator.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkLengthDistribution.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkMultiCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkOrderStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkPCAStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithm.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStrahlerMetric.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStreamingStatistics.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkAutoCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkBivariateLinearTableThreshold.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuantiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkComputeQuartiles.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkContingencyStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkDescriptiveStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractFunctionalBagPlot.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkExtractHistogram.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkHighestDensityRegionsStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctor.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansDistanceFunctorCalculator.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkKMeansStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkLengthDistribution.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkMultiCorrelativeStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkOrderStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkPCAStatistics.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithm.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStrahlerMetric.h"
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStreamingStatistics.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithmPrivate.h"
      "D:/pv/rebuild/VTK/Filters/Statistics/vtkFiltersStatisticsModule.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithmPrivate.h"
      "D:/pv/rebuild/VTK/Filters/Statistics/vtkFiltersStatisticsModule.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithmPrivate.h"
      "D:/pv/rebuild/VTK/Filters/Statistics/vtkFiltersStatisticsModule.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Filters/Statistics/vtkStatisticsAlgorithmPrivate.h"
      "D:/pv/rebuild/VTK/Filters/Statistics/vtkFiltersStatisticsModule.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkFiltersStatistics" TYPE FILE FILES
    "D:/pv/ParaView/VTK/Filters/Statistics/LICENSE"
    "D:/pv/ParaView/VTK/Filters/Statistics/LICENSE"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Filters/Statistics/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
