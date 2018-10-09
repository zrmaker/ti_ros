# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mds_cnn_node_pkg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imds_cnn_node_pkg:/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mds_cnn_node_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg" NAME_WE)
add_custom_target(_mds_cnn_node_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mds_cnn_node_pkg" "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mds_cnn_node_pkg
  "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mds_cnn_node_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(mds_cnn_node_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mds_cnn_node_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mds_cnn_node_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mds_cnn_node_pkg_generate_messages mds_cnn_node_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg" NAME_WE)
add_dependencies(mds_cnn_node_pkg_generate_messages_cpp _mds_cnn_node_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mds_cnn_node_pkg_gencpp)
add_dependencies(mds_cnn_node_pkg_gencpp mds_cnn_node_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mds_cnn_node_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mds_cnn_node_pkg
  "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mds_cnn_node_pkg
)

### Generating Services

### Generating Module File
_generate_module_eus(mds_cnn_node_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mds_cnn_node_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mds_cnn_node_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mds_cnn_node_pkg_generate_messages mds_cnn_node_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg" NAME_WE)
add_dependencies(mds_cnn_node_pkg_generate_messages_eus _mds_cnn_node_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mds_cnn_node_pkg_geneus)
add_dependencies(mds_cnn_node_pkg_geneus mds_cnn_node_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mds_cnn_node_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mds_cnn_node_pkg
  "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mds_cnn_node_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(mds_cnn_node_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mds_cnn_node_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mds_cnn_node_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mds_cnn_node_pkg_generate_messages mds_cnn_node_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg" NAME_WE)
add_dependencies(mds_cnn_node_pkg_generate_messages_lisp _mds_cnn_node_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mds_cnn_node_pkg_genlisp)
add_dependencies(mds_cnn_node_pkg_genlisp mds_cnn_node_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mds_cnn_node_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mds_cnn_node_pkg
  "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mds_cnn_node_pkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mds_cnn_node_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mds_cnn_node_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mds_cnn_node_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mds_cnn_node_pkg_generate_messages mds_cnn_node_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg" NAME_WE)
add_dependencies(mds_cnn_node_pkg_generate_messages_nodejs _mds_cnn_node_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mds_cnn_node_pkg_gennodejs)
add_dependencies(mds_cnn_node_pkg_gennodejs mds_cnn_node_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mds_cnn_node_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mds_cnn_node_pkg
  "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mds_cnn_node_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(mds_cnn_node_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mds_cnn_node_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mds_cnn_node_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mds_cnn_node_pkg_generate_messages mds_cnn_node_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/c/Users/ryzhang/Downloads/ti_ros/src/ti-mmwave-mds-cnn/msg/MDSPred.msg" NAME_WE)
add_dependencies(mds_cnn_node_pkg_generate_messages_py _mds_cnn_node_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mds_cnn_node_pkg_genpy)
add_dependencies(mds_cnn_node_pkg_genpy mds_cnn_node_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mds_cnn_node_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mds_cnn_node_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mds_cnn_node_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mds_cnn_node_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mds_cnn_node_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mds_cnn_node_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mds_cnn_node_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mds_cnn_node_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mds_cnn_node_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mds_cnn_node_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mds_cnn_node_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mds_cnn_node_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mds_cnn_node_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mds_cnn_node_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mds_cnn_node_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mds_cnn_node_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mds_cnn_node_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
