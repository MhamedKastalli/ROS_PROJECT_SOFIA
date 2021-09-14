# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_scripts: 2 messages, 2 services")

set(MSG_I_FLAGS "-Irobot_scripts:/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_scripts_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg" NAME_WE)
add_custom_target(_robot_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_scripts" "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg" "sensor_msgs/LaserScan:std_msgs/Header"
)

get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg" NAME_WE)
add_custom_target(_robot_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_scripts" "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv" NAME_WE)
add_custom_target(_robot_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_scripts" "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv" ""
)

get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv" NAME_WE)
add_custom_target(_robot_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_scripts" "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv" "std_msgs/Bool:std_msgs/Float64"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_scripts
)
_generate_msg_cpp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_scripts
)

### Generating Services
_generate_srv_cpp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_scripts
)
_generate_srv_cpp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_scripts
)

### Generating Module File
_generate_module_cpp(robot_scripts
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_scripts
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_scripts_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_scripts_generate_messages robot_scripts_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_cpp _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_cpp _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_cpp _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_cpp _robot_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_scripts_gencpp)
add_dependencies(robot_scripts_gencpp robot_scripts_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_scripts_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_scripts
)
_generate_msg_eus(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_scripts
)

### Generating Services
_generate_srv_eus(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_scripts
)
_generate_srv_eus(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_scripts
)

### Generating Module File
_generate_module_eus(robot_scripts
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_scripts
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_scripts_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_scripts_generate_messages robot_scripts_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_eus _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_eus _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_eus _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_eus _robot_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_scripts_geneus)
add_dependencies(robot_scripts_geneus robot_scripts_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_scripts_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_scripts
)
_generate_msg_lisp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_scripts
)

### Generating Services
_generate_srv_lisp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_scripts
)
_generate_srv_lisp(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_scripts
)

### Generating Module File
_generate_module_lisp(robot_scripts
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_scripts
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_scripts_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_scripts_generate_messages robot_scripts_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_lisp _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_lisp _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_lisp _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_lisp _robot_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_scripts_genlisp)
add_dependencies(robot_scripts_genlisp robot_scripts_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_scripts_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_scripts
)
_generate_msg_nodejs(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_scripts
)

### Generating Services
_generate_srv_nodejs(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_scripts
)
_generate_srv_nodejs(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_scripts
)

### Generating Module File
_generate_module_nodejs(robot_scripts
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_scripts
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_scripts_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_scripts_generate_messages robot_scripts_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_nodejs _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_nodejs _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_nodejs _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_nodejs _robot_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_scripts_gennodejs)
add_dependencies(robot_scripts_gennodejs robot_scripts_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_scripts_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts
)
_generate_msg_py(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts
)

### Generating Services
_generate_srv_py(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts
)
_generate_srv_py(robot_scripts
  "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts
)

### Generating Module File
_generate_module_py(robot_scripts
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_scripts_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_scripts_generate_messages robot_scripts_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/Array_laser.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_py _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/msg/PointCloudsarray.msg" NAME_WE)
add_dependencies(robot_scripts_generate_messages_py _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/lidar_scan.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_py _robot_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kastalli/Documents/ROS_PROJECT_SOFIA/src/robot_scripts/srv/LidarTurn.srv" NAME_WE)
add_dependencies(robot_scripts_generate_messages_py _robot_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_scripts_genpy)
add_dependencies(robot_scripts_genpy robot_scripts_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_scripts_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_scripts
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(robot_scripts_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_scripts_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_scripts
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(robot_scripts_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_scripts_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_scripts
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(robot_scripts_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_scripts_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_scripts
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(robot_scripts_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_scripts_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_scripts
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(robot_scripts_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_scripts_generate_messages_py std_msgs_generate_messages_py)
endif()
