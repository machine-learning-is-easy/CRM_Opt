# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/lib/vtklibxml2-pv5.13.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/vtklibxml2-pv5.13.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtklibxml2/include/libxml" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/c14n.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/catalog.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/chvalid.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/debugXML.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/dict.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/encoding.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/entities.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/globals.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/hash.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLparser.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLtree.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/list.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/nanoftp.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/nanohttp.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/parser.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/parserInternals.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/pattern.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/relaxng.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX2.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/schemasInternals.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/schematron.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/threads.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/tree.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/uri.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/valid.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/vtk_libxml2_mangle.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xinclude.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xlink.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlIO.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlautomata.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlerror.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlexports.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmemory.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmodule.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlreader.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlregexp.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlsave.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemas.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemastypes.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlstring.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlunicode.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlwriter.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xpath.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xpathInternals.h"
    "D:/pv/ParaView/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xpointer.h"
    "D:/pv/build/VTK/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlversion.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/libxml2/vtklibxml2/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
