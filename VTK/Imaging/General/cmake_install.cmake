# Install script for directory: D:/pv/ParaView/VTK/Imaging/General

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkImagingGeneral-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkImagingGeneral-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkImagingGeneral-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkImagingGeneral-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkImagingGeneral-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkImagingGeneral-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkImagingGeneral-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkImagingGeneral-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkImagingGeneral-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkImagingGeneral-pv5.13.dll")
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
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCheckerboard.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCityBlockDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageConvolve.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCorrelation.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanToPolar.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGaussianSmooth.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradient.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradientMagnitude.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageHybridMedian2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageLaplacian.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageMedian3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageNormalize.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageRange3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSeparableConvolution.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlab.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlabReslice.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSpatialAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageVariance3D.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCheckerboard.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCityBlockDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageConvolve.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCorrelation.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanToPolar.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGaussianSmooth.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradient.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradientMagnitude.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageHybridMedian2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageLaplacian.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageMedian3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageNormalize.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageRange3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSeparableConvolution.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlab.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlabReslice.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSpatialAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageVariance3D.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCheckerboard.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCityBlockDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageConvolve.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCorrelation.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanToPolar.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGaussianSmooth.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradient.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradientMagnitude.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageHybridMedian2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageLaplacian.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageMedian3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageNormalize.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageRange3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSeparableConvolution.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlab.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlabReslice.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSpatialAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageVariance3D.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCheckerboard.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCityBlockDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageConvolve.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageCorrelation.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanDistance.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageEuclideanToPolar.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGaussianSmooth.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradient.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageGradientMagnitude.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageHybridMedian2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageLaplacian.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageMedian3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageNormalize.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageRange3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSeparableConvolution.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlab.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSlabReslice.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel2D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSobel3D.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageSpatialAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/General/vtkImageVariance3D.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/General/vtkImagingGeneralModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/General/vtkImagingGeneralModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/General/vtkImagingGeneralModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/General/vtkImagingGeneralModule.h")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Imaging/General/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
