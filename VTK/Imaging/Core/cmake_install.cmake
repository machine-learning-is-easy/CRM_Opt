# Install script for directory: D:/pv/ParaView/VTK/Imaging/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkImagingCore-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkImagingCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkImagingCore-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkImagingCore-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkImagingCore-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkImagingCore-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkImagingCore-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkImagingCore-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkImagingCore-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkImagingCore-pv5.13.dll")
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
      "D:/pv/ParaView/VTK/Imaging/Core/vtkAbstractImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkExtractVOI.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkGenericImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageAppendComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBlend.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineCoefficients.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInternals.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCacheFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCast.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageChangeInformation.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageClip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageConstantPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDataStreamer.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDecomposeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDifference.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageExtractComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageFlip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageIterateFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMagnify.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMapToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMask.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMirrorPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePadFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePermute.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointDataIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageProbeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResample.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResize.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageReslice.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResliceToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShiftScale.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShrink3D.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSincInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilData.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilSource.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSSIM.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageThreshold.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageTranslateExtent.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageWrapPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkRTAnalyticSource.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Imaging/Core/vtkAbstractImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkExtractVOI.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkGenericImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageAppendComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBlend.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineCoefficients.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInternals.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCacheFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCast.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageChangeInformation.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageClip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageConstantPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDataStreamer.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDecomposeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDifference.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageExtractComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageFlip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageIterateFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMagnify.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMapToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMask.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMirrorPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePadFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePermute.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointDataIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageProbeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResample.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResize.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageReslice.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResliceToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShiftScale.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShrink3D.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSincInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilData.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilSource.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSSIM.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageThreshold.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageTranslateExtent.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageWrapPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkRTAnalyticSource.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Imaging/Core/vtkAbstractImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkExtractVOI.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkGenericImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageAppendComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBlend.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineCoefficients.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInternals.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCacheFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCast.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageChangeInformation.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageClip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageConstantPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDataStreamer.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDecomposeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDifference.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageExtractComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageFlip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageIterateFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMagnify.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMapToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMask.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMirrorPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePadFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePermute.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointDataIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageProbeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResample.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResize.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageReslice.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResliceToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShiftScale.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShrink3D.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSincInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilData.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilSource.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSSIM.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageThreshold.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageTranslateExtent.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageWrapPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkRTAnalyticSource.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/Imaging/Core/vtkAbstractImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkExtractVOI.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkGenericImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageAppendComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBlend.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineCoefficients.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInternals.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageBSplineInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCacheFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageCast.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageChangeInformation.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageClip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageConstantPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDataStreamer.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDecomposeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageDifference.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageExtractComponents.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageFlip.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageIterateFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMagnify.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMapToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMask.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageMirrorPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePadFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePermute.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointDataIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImagePointIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageProbeFilter.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResample.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResize.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageReslice.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageResliceToColors.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShiftScale.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageShrink3D.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSincInterpolator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilAlgorithm.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilData.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilIterator.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageStencilSource.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageSSIM.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageThreshold.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageTranslateExtent.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkImageWrapPad.h"
      "D:/pv/ParaView/VTK/Imaging/Core/vtkRTAnalyticSource.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/Core/vtkImagingCoreModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/Core/vtkImagingCoreModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/Core/vtkImagingCoreModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/Imaging/Core/vtkImagingCoreModule.h")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkImagingCore" TYPE FILE FILES "D:/pv/ParaView/VTK/Imaging/Core/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/Imaging/Core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
