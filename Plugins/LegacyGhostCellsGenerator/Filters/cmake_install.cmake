# Install script for directory: D:/pv/ParaView/Plugins/LegacyGhostCellsGenerator/Filters

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/vtk/hierarchy/LegacyGhostCellsGenerator" TYPE FILE RENAME "LegacyGhostCellsGeneratorFilters-hierarchy.txt" FILES "D:/pv/build/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/vtk/hierarchy/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFilters-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/pv/build/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFilters.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "plugins" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator" TYPE SHARED_LIBRARY FILES "D:/pv/build/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFilters.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/ParaView/Plugins/LegacyGhostCellsGenerator/Filters/vtkUnstructuredGridGhostCellsGenerator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/ParaView_paraview_plugins" TYPE FILE FILES "D:/pv/build/Plugins/LegacyGhostCellsGenerator/Filters/LegacyGhostCellsGeneratorFiltersModule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/ParaView/LegacyGhostCellsGeneratorFilters" TYPE FILE FILES "D:/pv/ParaView/Plugins/LegacyGhostCellsGenerator/Filters/LICENSE")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/Plugins/LegacyGhostCellsGenerator/Filters/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
