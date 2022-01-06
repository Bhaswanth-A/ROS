# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "level_up: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(level_up_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv" NAME_WE)
add_custom_target(_level_up_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "level_up" "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(level_up
  "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_up
)

### Generating Module File
_generate_module_cpp(level_up
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_up
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(level_up_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(level_up_generate_messages level_up_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv" NAME_WE)
add_dependencies(level_up_generate_messages_cpp _level_up_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_up_gencpp)
add_dependencies(level_up_gencpp level_up_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_up_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(level_up
  "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/level_up
)

### Generating Module File
_generate_module_eus(level_up
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/level_up
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(level_up_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(level_up_generate_messages level_up_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv" NAME_WE)
add_dependencies(level_up_generate_messages_eus _level_up_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_up_geneus)
add_dependencies(level_up_geneus level_up_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_up_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(level_up
  "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_up
)

### Generating Module File
_generate_module_lisp(level_up
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_up
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(level_up_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(level_up_generate_messages level_up_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv" NAME_WE)
add_dependencies(level_up_generate_messages_lisp _level_up_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_up_genlisp)
add_dependencies(level_up_genlisp level_up_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_up_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(level_up
  "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/level_up
)

### Generating Module File
_generate_module_nodejs(level_up
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/level_up
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(level_up_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(level_up_generate_messages level_up_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv" NAME_WE)
add_dependencies(level_up_generate_messages_nodejs _level_up_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_up_gennodejs)
add_dependencies(level_up_gennodejs level_up_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_up_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(level_up
  "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_up
)

### Generating Module File
_generate_module_py(level_up
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_up
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(level_up_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(level_up_generate_messages level_up_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bhaswanth/catkin_ws/src/level_up/srv/num.srv" NAME_WE)
add_dependencies(level_up_generate_messages_py _level_up_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_up_genpy)
add_dependencies(level_up_genpy level_up_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_up_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_up)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_up
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(level_up_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/level_up)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/level_up
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(level_up_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_up)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_up
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(level_up_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/level_up)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/level_up
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(level_up_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_up)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_up\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_up
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(level_up_generate_messages_py std_msgs_generate_messages_py)
endif()
