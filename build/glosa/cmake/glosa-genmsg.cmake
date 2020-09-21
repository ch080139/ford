# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "glosa: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iglosa:/home/chenhao/catkin_ws/src/glosa/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(glosa_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg" NAME_WE)
add_custom_target(_glosa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "glosa" "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(glosa
  "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glosa
)

### Generating Services

### Generating Module File
_generate_module_cpp(glosa
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glosa
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(glosa_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(glosa_generate_messages glosa_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg" NAME_WE)
add_dependencies(glosa_generate_messages_cpp _glosa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glosa_gencpp)
add_dependencies(glosa_gencpp glosa_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glosa_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(glosa
  "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glosa
)

### Generating Services

### Generating Module File
_generate_module_eus(glosa
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glosa
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(glosa_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(glosa_generate_messages glosa_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg" NAME_WE)
add_dependencies(glosa_generate_messages_eus _glosa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glosa_geneus)
add_dependencies(glosa_geneus glosa_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glosa_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(glosa
  "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glosa
)

### Generating Services

### Generating Module File
_generate_module_lisp(glosa
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glosa
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(glosa_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(glosa_generate_messages glosa_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg" NAME_WE)
add_dependencies(glosa_generate_messages_lisp _glosa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glosa_genlisp)
add_dependencies(glosa_genlisp glosa_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glosa_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(glosa
  "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glosa
)

### Generating Services

### Generating Module File
_generate_module_nodejs(glosa
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glosa
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(glosa_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(glosa_generate_messages glosa_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg" NAME_WE)
add_dependencies(glosa_generate_messages_nodejs _glosa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glosa_gennodejs)
add_dependencies(glosa_gennodejs glosa_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glosa_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(glosa
  "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glosa
)

### Generating Services

### Generating Module File
_generate_module_py(glosa
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glosa
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(glosa_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(glosa_generate_messages glosa_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenhao/catkin_ws/src/glosa/msg/qt_GUI.msg" NAME_WE)
add_dependencies(glosa_generate_messages_py _glosa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glosa_genpy)
add_dependencies(glosa_genpy glosa_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glosa_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glosa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glosa
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(glosa_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glosa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glosa
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(glosa_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glosa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glosa
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(glosa_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glosa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glosa
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(glosa_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glosa)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glosa\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glosa
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(glosa_generate_messages_py std_msgs_generate_messages_py)
endif()
