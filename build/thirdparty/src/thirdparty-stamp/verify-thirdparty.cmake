# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/bhaswanth/catkin_ws/src/tum_ardrone/thirdparty/thirdparty.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/bhaswanth/catkin_ws/src/tum_ardrone/thirdparty/thirdparty.tar.gz")
  message(FATAL_ERROR "File not found: /home/bhaswanth/catkin_ws/src/tum_ardrone/thirdparty/thirdparty.tar.gz")
endif()

if("" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/bhaswanth/catkin_ws/src/tum_ardrone/thirdparty/thirdparty.tar.gz'")

file("" "/home/bhaswanth/catkin_ws/src/tum_ardrone/thirdparty/thirdparty.tar.gz" actual_value)

if(NOT "${actual_value}" STREQUAL "")
  message(FATAL_ERROR "error:  hash of
  /home/bhaswanth/catkin_ws/src/tum_ardrone/thirdparty/thirdparty.tar.gz
does not match expected value
  expected: ''
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
