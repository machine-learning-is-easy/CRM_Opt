# Install script for directory: D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson

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
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/adl_serializer.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/byte_container_with_subtype.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/json.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/json_fwd.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/ordered_map.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/exceptions.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/hash.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/json_pointer.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/json_ref.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/macro_scope.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/macro_unscope.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/string_escape.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/value_t.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/detail/conversions" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/conversions/from_json.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/conversions/to_chars.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/conversions/to_json.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/detail/input" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/binary_reader.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/input_adapters.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/json_sax.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/lexer.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/parser.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/position_t.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/detail/iterators" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/internal_iterator.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/iter_impl.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/iteration_proxy.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/iterator_traits.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/json_reverse_iterator.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/primitive_iterator.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/detail/meta" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/cpp_future.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/detected.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/identity_tag.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/is_sax.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/type_traits.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/void_t.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/detail/meta/call_std" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/call_std/begin.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/call_std/end.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/detail/output" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/output/binary_writer.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/output/output_adapters.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/output/serializer.hpp"
    )
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paraview-5.13/vtknlohmannjson/include/vtknlohmann/thirdparty/hedley" TYPE FILE FILES
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/thirdparty/hedley/hedley.hpp"
    "D:/pv/ParaView/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/thirdparty/hedley/hedley_undef.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/pv/build/VTK/ThirdParty/nlohmannjson/vtknlohmannjson/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
