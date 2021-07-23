#! /usr/bin/python2

import rospy
from sensor_msgs.msg import LaserScan
from beginner_tutorials.srv import gazebo_server, gazebo_serverResponse

rospy.init_node("Subscriber", anonymous=True)
ls_obj = LaserScan()
response = gazebo_serverResponse()

def callback(message):
    global ls_obj
    ls_obj = message

def func(request):
    global ls_obj
    response.distance = ls_obj.ranges[request.direction]
    return response
    

rospy.Subscriber('/scan', LaserScan, callback)

srv = rospy.Service('my_service', gazebo_server, func)
rospy.spin()