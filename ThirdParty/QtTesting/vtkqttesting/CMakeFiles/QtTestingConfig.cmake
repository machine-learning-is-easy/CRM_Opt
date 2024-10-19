#
# QtTestingConfig.cmake - QtTesting CMake configuration file for external projects.
#

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was QtTestingConfig-install.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

####################################################################################

if(IS_ABSOLUTE "include/paraview-5.13/vtkqttesting")
  set(QtTesting_INCLUDE_DIRS "include/paraview-5.13/vtkqttesting")
else()
  set(QtTesting_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include/paraview-5.13/vtkqttesting")
  get_filename_component(QtTesting_INCLUDE_DIRS "${QtTesting_INCLUDE_DIRS}" ABSOLUTE)
endif()

if(IS_ABSOLUTE "lib")
  set(QtTesting_LIBRARY_DIR "lib")
else()
  set(QtTesting_LIBRARY_DIR "${PACKAGE_PREFIX_DIR}/lib")
  get_filename_component(QtTesting_LIBRARY_DIR "${QtTesting_LIBRARY_DIR}" ABSOLUTE)
endif()

set(QtTesting_LIBRARIES QtTesting)
include("${CMAKE_CURRENT_LIST_DIR}/QtTestingTargets.cmake")
