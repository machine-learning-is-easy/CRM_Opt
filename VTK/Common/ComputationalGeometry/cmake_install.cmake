# Install script for directory: D:/pv/ParaView/VTK/Common/ComputationalGeometry

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkCommonComputationalGeometry-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkCommonComputationalGeometry-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkCommonComputationalGeometry-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkCommonComputationalGeometry-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkCommonComputationalGeometry-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkCommonComputationalGeometry-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkCommonComputationalGeometry-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkCommonComputationalGeometry-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkCommonComputationalGeometry-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkCommonComputationalGeometry-pv5.13.dll")
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
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkBilinearQuadIntersection.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkCardinalSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkKochanekSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBohemianDome.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBour.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBoy.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCatalanMinimal.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricConicSpiral.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCrossCap.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricDini.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEnneper.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFigure8Klein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFunction.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricHenneberg.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKlein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKuen.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricMobius.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPluckerConoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPseudosphere.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRandomHills.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRoman.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperToroid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricTorus.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkBilinearQuadIntersection.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkCardinalSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkKochanekSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBohemianDome.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBour.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBoy.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCatalanMinimal.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricConicSpiral.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCrossCap.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricDini.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEnneper.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFigure8Klein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFunction.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricHenneberg.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKlein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKuen.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricMobius.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPluckerConoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPseudosphere.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRandomHills.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRoman.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperToroid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricTorus.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkBilinearQuadIntersection.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkCardinalSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkKochanekSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBohemianDome.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBour.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBoy.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCatalanMinimal.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricConicSpiral.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCrossCap.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricDini.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEnneper.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFigure8Klein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFunction.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricHenneberg.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKlein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKuen.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricMobius.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPluckerConoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPseudosphere.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRandomHills.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRoman.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperToroid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricTorus.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkBilinearQuadIntersection.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkCardinalSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkKochanekSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBohemianDome.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBour.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricBoy.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCatalanMinimal.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricConicSpiral.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricCrossCap.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricDini.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricEnneper.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFigure8Klein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricFunction.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricHenneberg.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKlein.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricKuen.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricMobius.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPluckerConoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricPseudosphere.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRandomHills.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricRoman.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSpline.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperEllipsoid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricSuperToroid.h"
      "D:/pv/ParaView/VTK/Common/ComputationalGeometry/vtkParametricTorus.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Common/ComputationalGeometry/vtkCommonComputationalGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Common/ComputationalGeometry/vtkCommonComputationalGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Common/ComputationalGeometry/vtkCommonComputationalGeometryModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Common/ComputationalGeometry/vtkCommonComputationalGeometryModule.h")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Common/ComputationalGeometry/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
