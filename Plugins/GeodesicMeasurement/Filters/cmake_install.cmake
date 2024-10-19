# Install script for directory: D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtk/hierarchy/GeodesicMeasurement" TYPE FILE RENAME "vtkGeodesicMeasurementFilters-hierarchy.txt" FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/vtk/hierarchy/GeodesicMeasurement/vtkGeodesicMeasurementFilters-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/Debug/vtkGeodesicMeasurementFiltersd.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/Release/vtkGeodesicMeasurementFilters.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/MinSizeRel/vtkGeodesicMeasurementFilters.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/RelWithDebInfo/vtkGeodesicMeasurementFilters.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/Debug/vtkGeodesicMeasurementFiltersd.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/Release/vtkGeodesicMeasurementFilters.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/MinSizeRel/vtkGeodesicMeasurementFilters.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/paraview-5.13/plugins/GeodesicMeasurement/RelWithDebInfo/vtkGeodesicMeasurementFilters.dll")
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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicDistance.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicPath.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkGeodesicsBetweenPoints.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkPolyDataGeodesicDistance.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicDistance.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicPath.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkGeodesicsBetweenPoints.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkPolyDataGeodesicDistance.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicDistance.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicPath.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkGeodesicsBetweenPoints.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkPolyDataGeodesicDistance.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicDistance.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkFastMarchingGeodesicPath.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkGeodesicsBetweenPoints.h"
      "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/vtkPolyDataGeodesicDistance.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/GeodesicMeasurement/Filters/vtkGeodesicMeasurementFiltersModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/GeodesicMeasurement/Filters/vtkGeodesicMeasurementFiltersModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/GeodesicMeasurement/Filters/vtkGeodesicMeasurementFiltersModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/rebuild/Plugins/GeodesicMeasurement/Filters/vtkGeodesicMeasurementFiltersModule.h")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkGeodesicMeasurementFilters" TYPE FILE FILES
    "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/FmmMesh/License.txt"
    "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/FmmMesh/Copyright.txt"
    "D:/pv/ParaView/Plugins/GeodesicMeasurement/Filters/FmmMesh/gw_maths/tnt/LICENSE"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/pv/rebuild/Plugins/GeodesicMeasurement/Filters/FmmMesh/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/Plugins/GeodesicMeasurement/Filters/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
