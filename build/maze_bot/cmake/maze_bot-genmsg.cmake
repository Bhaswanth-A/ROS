# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "maze_bot: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators

add_custom_target(maze_bot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bhaswanth/catkin_ws/src/maze_bot/srv/gazebo_server.srv" NAME_WE)
add_custom_target(_maze_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "maze_bot" "/home/bhaswanth/catkin_ws/src/maze_bot/srv/gazebo_server.srv" ""
)

#
#  langs = 
#


