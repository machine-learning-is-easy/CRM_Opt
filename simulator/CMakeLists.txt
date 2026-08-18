cmake_minimum_required(VERSION 3.16)

project(ReservoirSimulator LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(RESERVOIR_BUILD_TESTS "Build reservoir simulator tests" ON)
option(RESERVOIR_BUILD_DEMO_TEST "Run the example deck through the CLI in CTest" ON)

set(RESERVOIR_HEADERS
  include/resim/Config.h
  include/resim/Fluid.h
  include/resim/Grid.h
  include/resim/LinearSolver.h
  include/resim/RockProps.h
  include/resim/Simulator.h
  include/resim/VtkWriter.h
  include/resim/Wells.h
)

set(RESERVOIR_SOURCES
  src/Config.cpp
  src/Fluid.cpp
  src/Grid.cpp
  src/LinearSolver.cpp
  src/RockProps.cpp
  src/Simulator.cpp
  src/VtkWriter.cpp
  src/Wells.cpp
)

add_library(reservoir_simulator STATIC
  ${RESERVOIR_HEADERS}
  ${RESERVOIR_SOURCES}
)
target_compile_features(reservoir_simulator PUBLIC cxx_std_17)

target_include_directories(reservoir_simulator
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
  PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include/resim
)

if(MSVC)
  target_compile_options(reservoir_simulator PRIVATE /W4)
else()
  target_compile_options(reservoir_simulator PRIVATE -Wall -Wextra -Wpedantic)
endif()

add_executable(simulate src/main.cpp)
target_link_libraries(simulate PRIVATE reservoir_simulator)

if(RESERVOIR_BUILD_TESTS)
  enable_testing()

  function(add_reservoir_test target source)
    add_executable(${target} ${source})
    target_link_libraries(${target} PRIVATE reservoir_simulator)
    target_compile_definitions(${target}
      PRIVATE
        RESERVOIR_TEST_EXAMPLES_DIR="${CMAKE_CURRENT_SOURCE_DIR}/examples"
        RESERVOIR_TEST_BINARY_DIR="${CMAKE_CURRENT_BINARY_DIR}"
    )
    add_test(NAME ${target} COMMAND ${target})
  endfunction()

  add_reservoir_test(test_linear_solver tests/test_linear_solver.cpp)
  add_reservoir_test(test_mass_balance tests/test_mass_balance.cpp)
  add_reservoir_test(test_buckley_leverett tests/test_buckley_leverett.cpp)

  if(RESERVOIR_BUILD_DEMO_TEST)
    add_test(
      NAME demo_quarter_five_spot_outputs
      COMMAND ${CMAKE_COMMAND}
        -DRESERVOIR_SIMULATOR_EXE=$<TARGET_FILE:simulate>
        -DRESERVOIR_EXAMPLE_DECK=${CMAKE_CURRENT_SOURCE_DIR}/examples/quarter_five_spot.deck
        -DRESERVOIR_DEMO_OUTPUT_DIR=${CMAKE_CURRENT_BINARY_DIR}/demo_quarter_five_spot
        -P ${CMAKE_CURRENT_SOURCE_DIR}/tests/check_demo_output.cmake
    )
  endif()
endif()
