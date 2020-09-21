# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "esr_radar: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iesr_radar:/home/chenhao/catkin_ws/src/esr_radar/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(esr_radar_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg" NAME_WE)
add_custom_target(_esr_radar_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "esr_radar" "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg" NAME_WE)
add_custom_target(_esr_radar_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "esr_radar" "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg" "std_msgs/Header:esr_radar/Object"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esr_radar
)
_generate_msg_cpp(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esr_radar
)

### Generating Services

### Generating Module File
_generate_module_cpp(esr_radar
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esr_radar
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(esr_radar_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(esr_radar_generate_messages esr_radar_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_cpp _esr_radar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_cpp _esr_radar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esr_radar_gencpp)
add_dependencies(esr_radar_gencpp esr_radar_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esr_radar_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esr_radar
)
_generate_msg_eus(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esr_radar
)

### Generating Services

### Generating Module File
_generate_module_eus(esr_radar
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esr_radar
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(esr_radar_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(esr_radar_generate_messages esr_radar_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_eus _esr_radar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_eus _esr_radar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esr_radar_geneus)
add_dependencies(esr_radar_geneus esr_radar_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esr_radar_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esr_radar
)
_generate_msg_lisp(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esr_radar
)

### Generating Services

### Generating Module File
_generate_module_lisp(esr_radar
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esr_radar
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(esr_radar_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(esr_radar_generate_messages esr_radar_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_lisp _esr_radar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_lisp _esr_radar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esr_radar_genlisp)
add_dependencies(esr_radar_genlisp esr_radar_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esr_radar_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esr_radar
)
_generate_msg_nodejs(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esr_radar
)

### Generating Services

### Generating Module File
_generate_module_nodejs(esr_radar
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esr_radar
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(esr_radar_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(esr_radar_generate_messages esr_radar_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_nodejs _esr_radar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_nodejs _esr_radar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esr_radar_gennodejs)
add_dependencies(esr_radar_gennodejs esr_radar_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esr_radar_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esr_radar
)
_generate_msg_py(esr_radar
  "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esr_radar
)

### Generating Services

### Generating Module File
_generate_module_py(esr_radar
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esr_radar
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(esr_radar_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(esr_radar_generate_messages esr_radar_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/Object.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_py _esr_radar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenhao/catkin_ws/src/esr_radar/msg/ObjectArray.msg" NAME_WE)
add_dependencies(esr_radar_generate_messages_py _esr_radar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esr_radar_genpy)
add_dependencies(esr_radar_genpy esr_radar_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esr_radar_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esr_radar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esr_radar
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(esr_radar_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(esr_radar_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esr_radar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esr_radar
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(esr_radar_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(esr_radar_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esr_radar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esr_radar
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(esr_radar_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(esr_radar_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esr_radar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esr_radar
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(esr_radar_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(esr_radar_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esr_radar)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esr_radar\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esr_radar
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(esr_radar_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(esr_radar_generate_messages_py std_msgs_generate_messages_py)
endif()
