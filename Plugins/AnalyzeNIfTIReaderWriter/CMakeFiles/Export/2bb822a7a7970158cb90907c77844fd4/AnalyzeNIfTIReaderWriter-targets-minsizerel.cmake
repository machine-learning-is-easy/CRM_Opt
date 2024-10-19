#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "AnalyzeNIfTIIO::NIfTIIO" for configuration "MinSizeRel"
set_property(TARGET AnalyzeNIfTIIO::NIfTIIO APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(AnalyzeNIfTIIO::NIfTIIO PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel;VTK::zlib"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.dll"
  )

list(APPEND _cmake_import_check_targets AnalyzeNIfTIIO::NIfTIIO )
list(APPEND _cmake_import_check_files_for_AnalyzeNIfTIIO::NIfTIIO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
