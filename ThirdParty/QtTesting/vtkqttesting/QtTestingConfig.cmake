
if(NOT QtTesting_EXPORTS_INCLUDED)
  include("D:/pv/build/ThirdParty/QtTesting/vtkqttesting/QtTestingExports.cmake")
  set(QtTesting_EXPORTS_INCLUDED 1)
endif()

set(QtTesting_INCLUDE_DIRS "D:/pv/ParaView/ThirdParty/QtTesting/vtkqttesting;D:/pv/build/ThirdParty/QtTesting/vtkqttesting")
set(QtTesting_LIBRARY_DIR "D:/pv/build/ThirdParty/QtTesting/vtkqttesting")
set(QtTesting_LIBRARIES QtTesting)
include("${CMAKE_CURRENT_LIST_DIR}/QtTestingExports.cmake")
