#! /usr/bin/python2

import rospy
from sensor_msgs.msg import LaserScan
from beginner_tutorials.srv import gazebo_server, gazebo_serverResponse

rospy.init_node("Subscriber", anonymous=True)

def callback(message):
    print(message.ranges)

def func(request):
    return gazebo_serverResponse(request)

rospy.Subscriber('/scan', LaserScan, callback)

srv = rospy.Service('my_service', gazebo_server, func)
rospy.spin()