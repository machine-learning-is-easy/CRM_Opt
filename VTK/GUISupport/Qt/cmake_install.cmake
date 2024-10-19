# Install script for directory: D:/pv/ParaView/VTK/GUISupport/Qt

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkGUISupportQt-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkGUISupportQt-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKRenderWidget.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKWin32Header.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QFilterTreeProxyModel.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKApplication.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKInteractor.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKInteractorAdapter.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKOpenGLNativeWidget.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKOpenGLStereoWidget.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKOpenGLWindow.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKRenderWindowAdapter.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/QVTKTableModelAdapter.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkEventQtSlotConnect.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQWidgetRepresentation.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQWidgetTexture.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQWidgetWidget.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQtAbstractModelAdapter.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQtAnnotationLayersModelAdapter.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQtConnection.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQtDebugLeaksModel.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQtDebugLeaksView.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQtTableModelAdapter.h"
    "D:/pv/ParaView/VTK/GUISupport/Qt/vtkQtTreeModelAdapter.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/VTK/GUISupport/Qt/vtkGUISupportQtModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkGUISupportQt" TYPE FILE FILES "D:/pv/ParaView/VTK/GUISupport/Qt/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/GUISupport/Qt/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
