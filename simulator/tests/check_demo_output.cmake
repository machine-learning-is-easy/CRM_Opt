if(NOT DEFINED RESERVOIR_SIMULATOR_EXE)
  message(FATAL_ERROR "RESERVOIR_SIMULATOR_EXE is required")
endif()
if(NOT DEFINED RESERVOIR_EXAMPLE_DECK)
  message(FATAL_ERROR "RESERVOIR_EXAMPLE_DECK is required")
endif()
if(NOT DEFINED RESERVOIR_DEMO_OUTPUT_DIR)
  message(FATAL_ERROR "RESERVOIR_DEMO_OUTPUT_DIR is required")
endif()

file(REMOVE_RECURSE "${RESERVOIR_DEMO_OUTPUT_DIR}")
file(MAKE_DIRECTORY "${RESERVOIR_DEMO_OUTPUT_DIR}")

file(READ "${RESERVOIR_EXAMPLE_DECK}" deck_contents)
string(REPLACE "output_dir = ./output/quarter_five_spot" "output_dir = ${RESERVOIR_DEMO_OUTPUT_DIR}/output" deck_contents "${deck_contents}")
set(run_deck "${RESERVOIR_DEMO_OUTPUT_DIR}/quarter_five_spot.deck")
file(WRITE "${run_deck}" "${deck_contents}")

execute_process(
  COMMAND "${RESERVOIR_SIMULATOR_EXE}" "${run_deck}"
  WORKING_DIRECTORY "${RESERVOIR_DEMO_OUTPUT_DIR}"
  RESULT_VARIABLE run_result
  OUTPUT_VARIABLE run_stdout
  ERROR_VARIABLE run_stderr
)

if(NOT run_result EQUAL 0)
  message(FATAL_ERROR "Demo run failed with exit code ${run_result}\nSTDOUT:\n${run_stdout}\nSTDERR:\n${run_stderr}")
endif()

set(output_dir "${RESERVOIR_DEMO_OUTPUT_DIR}/output")
set(expected_pvd "${output_dir}/quarter_five_spot.pvd")
set(expected_wells "${output_dir}/wells.vtp")

if(NOT EXISTS "${expected_pvd}")
  message(FATAL_ERROR "Demo did not write expected collection ${expected_pvd}")
endif()
if(NOT EXISTS "${expected_wells}")
  message(FATAL_ERROR "Demo did not write stable well PolyData ${expected_wells}")
endif()

file(GLOB vti_files "${output_dir}/quarter_five_spot_*.vti")
list(LENGTH vti_files vti_count)
if(vti_count LESS 2)
  message(FATAL_ERROR "Demo should write multiple report .vti snapshots; found ${vti_count}")
endif()

file(READ "${expected_pvd}" pvd_contents)
if(NOT pvd_contents MATCHES "<VTKFile[^>]*type=\"Collection\"")
  message(FATAL_ERROR "${expected_pvd} is not a VTK collection file")
endif()
if(NOT pvd_contents MATCHES "quarter_five_spot_[0-9]+\\.vti")
  message(FATAL_ERROR "${expected_pvd} does not reference report VTI snapshots")
endif()

list(GET vti_files 0 first_vti)
file(READ "${first_vti}" vti_contents)
if(NOT vti_contents MATCHES "<VTKFile[^>]*type=\"ImageData\"")
  message(FATAL_ERROR "${first_vti} is not a VTK ImageData file")
endif()
foreach(field IN ITEMS Pressure Sw So Permeability Porosity)
  if(NOT vti_contents MATCHES "Name=\"${field}\"")
    message(FATAL_ERROR "${first_vti} is missing expected cell array ${field}")
  endif()
endforeach()

file(READ "${expected_wells}" vtp_contents)
if(NOT vtp_contents MATCHES "<VTKFile[^>]*type=\"PolyData\"")
  message(FATAL_ERROR "${expected_wells} is not a VTK PolyData file")
endif()
if(NOT vtp_contents MATCHES "INJ" OR NOT vtp_contents MATCHES "PROD")
  message(FATAL_ERROR "${expected_wells} does not include stable named well points")
endif()
if(NOT vtp_contents MATCHES "Name=\"WellType\"")
  message(FATAL_ERROR "${expected_wells} does not tag injector/producer well types")
endif()
