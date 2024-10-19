# Install script for directory: D:/pv/ParaView/Qt/Widgets

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/pqWidgets-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/pqWidgets-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
    "D:/pv/build/Qt/Widgets/pqQtWidgetsConfig.h"
    "D:/pv/ParaView/Qt/Widgets/pqQtDeprecated.h"
    "D:/pv/ParaView/Qt/Widgets/pqCheckBoxPixMaps.h"
    "D:/pv/ParaView/Qt/Widgets/pqCheckBoxPixMaps.h"
    "D:/pv/ParaView/Qt/Widgets/pqCheckableHeaderView.h"
    "D:/pv/ParaView/Qt/Widgets/pqClickableLabel.h"
    "D:/pv/ParaView/Qt/Widgets/pqCollapsedGroup.h"
    "D:/pv/ParaView/Qt/Widgets/pqColorButtonEventPlayer.h"
    "D:/pv/ParaView/Qt/Widgets/pqColorButtonEventTranslator.h"
    "D:/pv/ParaView/Qt/Widgets/pqColorChooserButton.h"
    "D:/pv/ParaView/Qt/Widgets/pqColorDialogEventPlayer.h"
    "D:/pv/ParaView/Qt/Widgets/pqColorDialogEventTranslator.h"
    "D:/pv/ParaView/Qt/Widgets/pqConnect.h"
    "D:/pv/ParaView/Qt/Widgets/pqConsoleWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqConsoleWidgetEventPlayer.h"
    "D:/pv/ParaView/Qt/Widgets/pqConsoleWidgetEventTranslator.h"
    "D:/pv/ParaView/Qt/Widgets/pqDelimitedTextParser.h"
    "D:/pv/ParaView/Qt/Widgets/pqDiscreteDoubleWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqDoubleLineEdit.h"
    "D:/pv/ParaView/Qt/Widgets/pqDoubleRangeDialog.h"
    "D:/pv/ParaView/Qt/Widgets/pqDoubleRangeWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqDoubleSliderWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqDoubleSpinBox.h"
    "D:/pv/ParaView/Qt/Widgets/pqExpandableTableView.h"
    "D:/pv/ParaView/Qt/Widgets/pqExpanderButton.h"
    "D:/pv/ParaView/Qt/Widgets/pqExtendedSortFilterProxyModel.h"
    "D:/pv/ParaView/Qt/Widgets/pqFlatTreeView.h"
    "D:/pv/ParaView/Qt/Widgets/pqHeaderView.h"
    "D:/pv/ParaView/Qt/Widgets/pqHierarchicalGridLayout.h"
    "D:/pv/ParaView/Qt/Widgets/pqHierarchicalGridWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqHighlightablePushButton.h"
    "D:/pv/ParaView/Qt/Widgets/pqHighlightableToolButton.h"
    "D:/pv/ParaView/Qt/Widgets/pqLineEdit.h"
    "D:/pv/ParaView/Qt/Widgets/pqLineEditEventPlayer.h"
    "D:/pv/ParaView/Qt/Widgets/pqListWidgetCheckHelper.h"
    "D:/pv/ParaView/Qt/Widgets/pqListWidgetItemObject.h"
    "D:/pv/ParaView/Qt/Widgets/pqMultiColumnHeaderView.h"
    "D:/pv/ParaView/Qt/Widgets/pqProgressWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqQuickLaunchDialog.h"
    "D:/pv/ParaView/Qt/Widgets/pqScaleByButton.h"
    "D:/pv/ParaView/Qt/Widgets/pqScaledSpinBox.h"
    "D:/pv/ParaView/Qt/Widgets/pqScopedOverrideCursor.h"
    "D:/pv/ParaView/Qt/Widgets/pqSectionVisibilityContextMenu.h"
    "D:/pv/ParaView/Qt/Widgets/pqSeriesGeneratorDialog.h"
    "D:/pv/ParaView/Qt/Widgets/pqSetData.h"
    "D:/pv/ParaView/Qt/Widgets/pqSetName.h"
    "D:/pv/ParaView/Qt/Widgets/pqSignalAdaptors.h"
    "D:/pv/ParaView/Qt/Widgets/pqSpinBox.h"
    "D:/pv/ParaView/Qt/Widgets/pqTableView.h"
    "D:/pv/ParaView/Qt/Widgets/pqTextEdit.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeView.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeViewExpandState.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeViewSelectionHelper.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeWidgetCheckHelper.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeWidgetItem.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeWidgetItemObject.h"
    "D:/pv/ParaView/Qt/Widgets/pqTreeWidgetSelectionHelper.h"
    "D:/pv/ParaView/Qt/Widgets/pqVectorWidget.h"
    "D:/pv/ParaView/Qt/Widgets/pqWaitCursor.h"
    "D:/pv/ParaView/Qt/Widgets/pqWidgetCompleter.h"
    "D:/pv/ParaView/Qt/Widgets/pqWidgetsInit.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/build/Qt/Widgets/pqWidgetsModule.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/Qt/Widgets/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
