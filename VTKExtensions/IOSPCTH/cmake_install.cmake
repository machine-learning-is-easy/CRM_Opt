# Install script for directory: D:/pv/ParaView/VTKExtensions/IOSPCTH

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkPVVTKExtensionsIOSPCTH-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkPVVTKExtensionsIOSPCTH-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkPVVTKExtensionsIOSPCTH-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkPVVTKExtensionsIOSPCTH-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkPVVTKExtensionsIOSPCTH-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkPVVTKExtensionsIOSPCTH-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkPVVTKExtensionsIOSPCTH-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkPVVTKExtensionsIOSPCTH-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkPVVTKExtensionsIOSPCTH-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkPVVTKExtensionsIOSPCTH-pv5.13.dll")
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
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlock.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotFileSeriesReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotHistoryReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotIStream.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReaderMap.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotUniReader.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlock.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotFileSeriesReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotHistoryReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotIStream.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReaderMap.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotUniReader.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlock.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotFileSeriesReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotHistoryReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotIStream.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReaderMap.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotUniReader.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlock.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotFileSeriesReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotHistoryReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotIStream.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReader.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotReaderMap.h"
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotUniReader.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlockIterator.h"
      "D:/pv/rebuild/VTKExtensions/IOSPCTH/vtkPVVTKExtensionsIOSPCTHModule.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlockIterator.h"
      "D:/pv/rebuild/VTKExtensions/IOSPCTH/vtkPVVTKExtensionsIOSPCTHModule.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlockIterator.h"
      "D:/pv/rebuild/VTKExtensions/IOSPCTH/vtkPVVTKExtensionsIOSPCTHModule.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTKExtensions/IOSPCTH/vtkSpyPlotBlockIterator.h"
      "D:/pv/rebuild/VTKExtensions/IOSPCTH/vtkPVVTKExtensionsIOSPCTHModule.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkPVVTKExtensionsIOSPCTH" TYPE FILE FILES "D:/pv/ParaView/VTKExtensions/IOSPCTH/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTKExtensions/IOSPCTH/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
