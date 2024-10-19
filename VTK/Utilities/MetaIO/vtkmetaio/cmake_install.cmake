# Install script for directory: D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkmetaio-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkmetaio-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkmetaio-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkmetaio-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkmetaio-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkmetaio-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkmetaio-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkmetaio-pv5.13.dll")
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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkmetaio" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArray.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArrow.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaBlob.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaCommand.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaContour.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEvent.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaForm.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGroup.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImage.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLine.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaMesh.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaScene.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaSurface.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTransform.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
      "D:/pv/rebuild/VTK/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkmetaio" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArray.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArrow.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaBlob.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaCommand.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaContour.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEvent.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaForm.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGroup.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImage.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLine.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaMesh.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaScene.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaSurface.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTransform.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
      "D:/pv/rebuild/VTK/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkmetaio" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArray.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArrow.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaBlob.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaCommand.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaContour.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEvent.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaForm.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGroup.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImage.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLine.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaMesh.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaScene.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaSurface.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTransform.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
      "D:/pv/rebuild/VTK/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkmetaio" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArray.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaArrow.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaBlob.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaCommand.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaContour.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaEvent.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaForm.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaGroup.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImage.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaLine.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaMesh.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaObject.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaScene.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaSurface.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTube.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTransform.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaTypes.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaUtils.h"
      "D:/pv/ParaView/VTK/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
      "D:/pv/rebuild/VTK/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Utilities/MetaIO/vtkmetaio/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
