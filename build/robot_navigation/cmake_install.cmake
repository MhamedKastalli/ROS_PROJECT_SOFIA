# Install script for directory: /home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kastalli/Documents/ROS_PROJECT_SOFIA/install")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_navigation/msg" TYPE FILE FILES
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation/msg/Pov.msg"
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation/msg/Environment.msg"
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation/msg/Map.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_navigation/srv" TYPE FILE FILES
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation/srv/Joint_state_info.srv"
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation/srv/cmd_vel_pub.srv"
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation/srv/environment_process.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_navigation/cmake" TYPE FILE FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/build/robot_navigation/catkin_generated/installspace/robot_navigation-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/include/robot_navigation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/share/roseus/ros/robot_navigation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/share/common-lisp/ros/robot_navigation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/share/gennodejs/ros/robot_navigation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/python3/dist-packages/robot_navigation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/devel/lib/python3/dist-packages/robot_navigation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/build/robot_navigation/catkin_generated/installspace/robot_navigation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_navigation/cmake" TYPE FILE FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/build/robot_navigation/catkin_generated/installspace/robot_navigation-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_navigation/cmake" TYPE FILE FILES
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/build/robot_navigation/catkin_generated/installspace/robot_navigationConfig.cmake"
    "/home/kastalli/Documents/ROS_PROJECT_SOFIA/build/robot_navigation/catkin_generated/installspace/robot_navigationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_navigation" TYPE FILE FILES "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_navigation/package.xml")
endif()

