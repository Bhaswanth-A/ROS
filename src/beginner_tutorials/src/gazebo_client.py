#! /usr/bin/python2

import rospy
from sensor_msgs.msg import LaserScan
from beginner_tutorials.srv import gazebo_server, gazebo_serverRequest

rospy.init_node('client_node')
rospy.wait_for_service('my_service')

req = gazebo_serverRequest()
req.direction = 1

srv = rospy.ServiceProxy('my_service', gazebo_server)

r = rospy.Rate(5)

while not rospy.is_shutdown():
    result = srv(req)
    print(result.distance)
    r.sleep()