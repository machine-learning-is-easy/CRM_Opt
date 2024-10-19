# Install script for directory: D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkAcceleratorsVTKmFilters-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkAcceleratorsVTKmFilters-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkAcceleratorsVTKmFilters-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkAcceleratorsVTKmFilters-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkAcceleratorsVTKmFilters-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkAcceleratorsVTKmFilters-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkAcceleratorsVTKmFilters-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkAcceleratorsVTKmFilters-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkAcceleratorsVTKmFilters-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkAcceleratorsVTKmFilters-pv5.13.dll")
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
      "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkmConfigFilters.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmFilterOverrides.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToCells.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToPoints.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCleanGrid.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmClip.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmContour.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCoordinateSystemTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExternalFaces.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExtractVOI.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmGradient.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmImageConnectivity.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmLevelOfDetail.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmNDHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointElevation.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPolyDataNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmProbe.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmSlice.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmThreshold.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmTriangleMeshPointNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpScalar.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpVector.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkmConfigFilters.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmFilterOverrides.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToCells.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToPoints.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCleanGrid.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmClip.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmContour.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCoordinateSystemTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExternalFaces.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExtractVOI.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmGradient.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmImageConnectivity.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmLevelOfDetail.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmNDHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointElevation.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPolyDataNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmProbe.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmSlice.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmThreshold.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmTriangleMeshPointNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpScalar.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpVector.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkmConfigFilters.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmFilterOverrides.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToCells.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToPoints.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCleanGrid.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmClip.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmContour.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCoordinateSystemTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExternalFaces.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExtractVOI.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmGradient.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmImageConnectivity.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmLevelOfDetail.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmNDHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointElevation.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPolyDataNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmProbe.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmSlice.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmThreshold.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmTriangleMeshPointNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpScalar.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpVector.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkmConfigFilters.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmFilterOverrides.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToCells.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmAverageToPoints.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCleanGrid.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmClip.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmContour.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmCoordinateSystemTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExternalFaces.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmExtractVOI.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmGradient.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmImageConnectivity.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmLevelOfDetail.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmNDHistogram.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointElevation.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPointTransform.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmPolyDataNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmProbe.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmSlice.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmThreshold.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmTriangleMeshPointNormals.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpScalar.h"
      "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/vtkmWarpVector.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkAcceleratorsVTKmFiltersModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkAcceleratorsVTKmFiltersModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkAcceleratorsVTKmFiltersModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/vtkAcceleratorsVTKmFiltersModule.h")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkAcceleratorsVTKmFilters" TYPE FILE FILES "D:/pv/ParaView/VTK/Accelerators/Vtkm/Filters/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Accelerators/Vtkm/Filters/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
