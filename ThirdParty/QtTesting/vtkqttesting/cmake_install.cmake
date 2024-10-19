# Install script for directory: D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtkqttesting-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtkqttesting-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtkqttesting" TYPE FILE FILES
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/QtTestingExport.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pq3DViewEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pq3DViewEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractActivateEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractBooleanEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractButtonEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractDoubleEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractIntEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractItemViewEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractItemViewEventPlayerBase.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractItemViewEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractItemViewEventTranslatorBase.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractMiscellaneousEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractSliderEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqAbstractStringEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqBasicWidgetEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqBasicWidgetEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqCheckEventOverlay.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqComboBoxEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqComboBoxEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqCommentEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqDoubleSpinBoxEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventComment.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventDispatcher.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventObserver.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventRecorder.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventSource.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqEventTypes.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqLineEditEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqListViewEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqListViewEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqMenuEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqNativeFileDialogEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqNativeFileDialogEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqObjectNaming.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqPlayBackEventsDialog.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqRecordEventsDialog.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqSpinBoxEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqStdoutEventObserver.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTabBarEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTabBarEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTableViewEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTableViewEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTestUtility.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqThreadedEventSource.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTimer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTreeViewEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqTreeViewEventTranslator.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqWidgetEventPlayer.h"
    "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting/pqWidgetEventTranslator.h"
    "D:/pv/build/ThirdParty/QtTesting/vtkqttesting/QtTestingConfigure.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/ThirdParty/QtTesting/vtkqttesting/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
