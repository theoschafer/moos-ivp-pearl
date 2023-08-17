# Install script for directory: /home/theo/moos-ivp-pearl/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/theo/moos-ivp-pearl/build/src/lib_NMEAParse/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/lib_SimpleSerial/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/lib_gpsParser/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/lib_NMEA2000/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iGPS/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iDualGPS/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iPEARL/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iChargeController/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iGarmin/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/uSunTracking/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/pPearlPID/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iRPISerial/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/pOdometry/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/pTargetCPA/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iM300/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/iM300Health/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/lib_sock_utils/cmake_install.cmake")
  include("/home/theo/moos-ivp-pearl/build/src/pAUVdock/cmake_install.cmake")

endif()

