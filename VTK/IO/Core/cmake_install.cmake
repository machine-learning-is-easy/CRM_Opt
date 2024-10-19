# Install script for directory: D:/pv/ParaView/VTK/IO/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk/hierarchy/ParaView" TYPE FILE RENAME "vtkIOCore-hierarchy.txt" FILES "D:/pv/rebuild/lib/vtk/hierarchy/ParaView/vtkIOCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Debug/vtkIOCore-pv5.13d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/Release/vtkIOCore-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/MinSizeRel/vtkIOCore-pv5.13.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/rebuild/lib/RelWithDebInfo/vtkIOCore-pv5.13.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Debug/vtkIOCore-pv5.13d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/Release/vtkIOCore-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/MinSizeRel/vtkIOCore-pv5.13.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/pv/rebuild/bin/RelWithDebInfo/vtkIOCore-pv5.13.dll")
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
      "D:/pv/ParaView/VTK/IO/Core/vtkUpdateCellsV8toV9.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractParticleWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractPolyDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkASCIITextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64InputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64OutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64Utilities.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDelimitedTextWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkFileResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkGlobFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkInputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkJavaScriptDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZ4DataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZMADataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkMemoryResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkOutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceParser.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkSortFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodecFactory.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURI.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURILoader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF16TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF8TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkZLibDataCompressor.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/IO/Core/vtkUpdateCellsV8toV9.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractParticleWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractPolyDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkASCIITextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64InputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64OutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64Utilities.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDelimitedTextWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkFileResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkGlobFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkInputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkJavaScriptDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZ4DataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZMADataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkMemoryResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkOutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceParser.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkSortFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodecFactory.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURI.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURILoader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF16TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF8TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkZLibDataCompressor.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/IO/Core/vtkUpdateCellsV8toV9.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractParticleWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractPolyDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkASCIITextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64InputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64OutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64Utilities.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDelimitedTextWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkFileResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkGlobFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkInputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkJavaScriptDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZ4DataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZMADataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkMemoryResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkOutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceParser.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkSortFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodecFactory.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURI.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURILoader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF16TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF8TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkZLibDataCompressor.h"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES
      "D:/pv/ParaView/VTK/IO/Core/vtkUpdateCellsV8toV9.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractParticleWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkAbstractPolyDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayReader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkArrayWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkASCIITextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64InputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64OutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkBase64Utilities.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkDelimitedTextWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkFileResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkGlobFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkInputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkJavaScriptDataWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZ4DataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkLZMADataCompressor.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkMemoryResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkOutputStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceParser.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkResourceStream.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkSortFileNames.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkTextCodecFactory.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURI.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkURILoader.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF16TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkUTF8TextCodec.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkWriter.h"
      "D:/pv/ParaView/VTK/IO/Core/vtkZLibDataCompressor.h"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Core/vtkIOCoreModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Core/vtkIOCoreModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Core/vtkIOCoreModule.h")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13" TYPE FILE FILES "D:/pv/rebuild/VTK/IO/Core/vtkIOCoreModule.h")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/vtkIOCore" TYPE FILE FILES "D:/pv/ParaView/VTK/IO/Core/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/rebuild/VTK/IO/Core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
