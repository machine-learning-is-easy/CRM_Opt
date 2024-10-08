# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

set(quiet "")
set(script_dir "D:/pv/paraview-superbuild/superbuild/cmake/patches/ExternalProject")
include(${script_dir}/captured_process_setup.cmake)

function(check_file_hash has_hash hash_is_good)
  if("${has_hash}" STREQUAL "")
    _ep_message_quiet_capture(FATAL_ERROR "has_hash Can't be empty")
  endif()

  if("${hash_is_good}" STREQUAL "")
    _ep_message_quiet_capture(FATAL_ERROR "hash_is_good Can't be empty")
  endif()

  if("MD5" STREQUAL "")
    # No check
    set("${has_hash}" FALSE PARENT_SCOPE)
    set("${hash_is_good}" FALSE PARENT_SCOPE)
    return()
  endif()

  set("${has_hash}" TRUE PARENT_SCOPE)

  _ep_message_quiet_capture(STATUS "verifying file...
       file='D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz'")
  set(accumulated_output "${accumulated_output}" PARENT_SCOPE)

  file("MD5" "D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz" actual_value)

  if(NOT "${actual_value}" STREQUAL "e8d56bc54621037842ee9f0aeae27746")
    set("${hash_is_good}" FALSE PARENT_SCOPE)
    _ep_message_quiet_capture(STATUS "MD5 hash of
    D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz
  does not match expected value
    expected: 'e8d56bc54621037842ee9f0aeae27746'
      actual: '${actual_value}'")
    set(accumulated_output "${accumulated_output}" PARENT_SCOPE)
  else()
    set("${hash_is_good}" TRUE PARENT_SCOPE)
  endif()
endfunction()

function(sleep_before_download attempt)
  if(attempt EQUAL 0)
    return()
  endif()

  if(attempt EQUAL 1)
    _ep_message_quiet_capture(STATUS "Retrying...")
    set(accumulated_output "${accumulated_output}" PARENT_SCOPE)
    return()
  endif()

  set(sleep_seconds 0)

  if(attempt EQUAL 2)
    set(sleep_seconds 5)
  elseif(attempt EQUAL 3)
    set(sleep_seconds 5)
  elseif(attempt EQUAL 4)
    set(sleep_seconds 15)
  elseif(attempt EQUAL 5)
    set(sleep_seconds 60)
  elseif(attempt EQUAL 6)
    set(sleep_seconds 90)
  elseif(attempt EQUAL 7)
    set(sleep_seconds 300)
  else()
    set(sleep_seconds 1200)
  endif()

  _ep_message_quiet_capture(STATUS
    "Retry after ${sleep_seconds} seconds (attempt #${attempt}) ..."
  )
  set(accumulated_output "${accumulated_output}" PARENT_SCOPE)

  execute_process(COMMAND "${CMAKE_COMMAND}" -E sleep "${sleep_seconds}")
endfunction()

if("D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if("https://www.paraview.org/files/dependencies/nlohmannjson-3.11.2.tar.gz" STREQUAL "")
  message(FATAL_ERROR "REMOTE can't be empty")
endif()

function(download_and_verify)
  if(EXISTS "D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz")
    check_file_hash(has_hash hash_is_good)
    if(has_hash)
      if(hash_is_good)
        _ep_message_quiet_capture(STATUS
"File already exists and hash match (skip download):
  file='D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz'
  MD5='e8d56bc54621037842ee9f0aeae27746'"
        )
        set(accumulated_output "${accumulated_output}" PARENT_SCOPE)
        return()
      else()
        _ep_message_quiet_capture(STATUS
          "File already exists but hash mismatch. Removing..."
        )
        set(accumulated_output "${accumulated_output}" PARENT_SCOPE)
        file(REMOVE "D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz")
      endif()
    else()
      _ep_message_quiet_capture(STATUS
"File already exists but no hash specified (use URL_HASH):
  file='D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz'
Old file will be removed and new file downloaded from URL."
      )
      file(REMOVE "D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz")
    endif()
  endif()

  set(retry_number 5)

  _ep_message_quiet_capture(STATUS "Downloading...
   dst='D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz'
   timeout='none'
   inactivity timeout='none'"
  )
  set(accumulated_output "${accumulated_output}" PARENT_SCOPE)
  set(download_retry_codes 7 6 8 15)
  set(skip_url_list)
  set(status_code)
  foreach(i RANGE ${retry_number})
    if(status_code IN_LIST download_retry_codes)
      sleep_before_download(${i})
    endif()
    foreach(url https://www.paraview.org/files/dependencies/nlohmannjson-3.11.2.tar.gz)
      if(NOT url IN_LIST skip_url_list)
        _ep_message_quiet_capture(STATUS "Using src='${url}'")
        set(accumulated_output "${accumulated_output}" PARENT_SCOPE)

        
        
        
        

        file(
          DOWNLOAD
          "${url}" "D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz"
          
          # no TIMEOUT
          # no INACTIVITY_TIMEOUT
          STATUS status
          LOG log
          
          
          )

        list(GET status 0 status_code)
        list(GET status 1 status_string)

        if(status_code EQUAL 0)
          check_file_hash(has_hash hash_is_good)
          if(has_hash AND NOT hash_is_good)
            _ep_message_quiet_capture(STATUS "Hash mismatch, removing...")
            set(accumulated_output "${accumulated_output}" PARENT_SCOPE)
            file(REMOVE "D:/pv/pvsb/downloads/nlohmannjson-3.11.2.tar.gz")
          else()
            _ep_message_quiet_capture(STATUS "Downloading... done")
            set(accumulated_output "${accumulated_output}" PARENT_SCOPE)
            return()
          endif()
        else()
          string(APPEND logFailedURLs
"error: downloading '${url}' failed
        status_code: ${status_code}
        status_string: ${status_string}
        log:
        --- LOG BEGIN ---
        ${log}
        --- LOG END ---
        "
          )
        if(NOT status_code IN_LIST download_retry_codes)
          list(APPEND skip_url_list "${url}")
          break()
        endif()
      endif()
    endif()
    endforeach()
  endforeach()

  _ep_message_quiet_capture(FATAL_ERROR
"Each download failed!
  ${logFailedURLs}
  "
  )

endfunction()

download_and_verify()

set(extract_script D:/pv/pvsb/superbuild/nlohmannjson/tmp/extract-nlohmannjson.cmake)
if(NOT "${extract_script}" STREQUAL "")
  include(${extract_script})
endif()
