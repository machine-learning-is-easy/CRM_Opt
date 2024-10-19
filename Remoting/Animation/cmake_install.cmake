# Install script for directory: D:/pv/ParaView/Remoting/Animation

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkRemotingAnimation-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkRemotingAnimation-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkRemotingAnimation-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkRemotingAnimation-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkRemotingAnimation-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkRemotingAnimation-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkRemotingAnimation-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkRemotingAnimation-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkRemotingAnimation-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkRemotingAnimation-pv5.13.dll")
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
      "D:/pv/ParaView/Remoting/Animation/vtkAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCameraInterpolator2.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCompositeAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVBooleanKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCompositeKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVExponentialKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCueForProxies.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRampKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRepresentationAnimationHelper.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVSinusoidKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSIXMLAnimationWriterRepresentationProperty.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationFrameWindowDomain.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationScene.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneGeometryWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWebWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationExtractsProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSequenceAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkTimestepsAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkXMLPVAnimationWriter.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/Remoting/Animation/vtkAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCameraInterpolator2.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCompositeAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVBooleanKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCompositeKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVExponentialKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCueForProxies.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRampKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRepresentationAnimationHelper.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVSinusoidKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSIXMLAnimationWriterRepresentationProperty.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationFrameWindowDomain.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationScene.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneGeometryWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWebWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationExtractsProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSequenceAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkTimestepsAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkXMLPVAnimationWriter.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/Remoting/Animation/vtkAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCameraInterpolator2.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCompositeAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVBooleanKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCompositeKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVExponentialKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCueForProxies.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRampKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRepresentationAnimationHelper.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVSinusoidKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSIXMLAnimationWriterRepresentationProperty.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationFrameWindowDomain.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationScene.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneGeometryWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWebWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationExtractsProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSequenceAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkTimestepsAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkXMLPVAnimationWriter.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/Remoting/Animation/vtkAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCameraInterpolator2.h"
      "D:/pv/ParaView/Remoting/Animation/vtkCompositeAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVBooleanKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCameraKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCompositeKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVExponentialKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCue.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameAnimationCueForProxies.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVKeyFrameCueManipulator.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRampKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVRepresentationAnimationHelper.h"
      "D:/pv/ParaView/Remoting/Animation/vtkPVSinusoidKeyFrame.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSIXMLAnimationWriterRepresentationProperty.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationFrameWindowDomain.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationScene.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneGeometryWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWebWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMAnimationSceneWriter.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationExtractsProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSMSaveAnimationProxy.h"
      "D:/pv/ParaView/Remoting/Animation/vtkSequenceAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkTimestepsAnimationPlayer.h"
      "D:/pv/ParaView/Remoting/Animation/vtkXMLPVAnimationWriter.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/Remoting/Animation/vtkRemotingAnimationModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/Remoting/Animation/vtkRemotingAnimationModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/Remoting/Animation/vtkRemotingAnimationModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/Remoting/Animation/vtkRemotingAnimationModule.h")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/Remoting/Animation/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
