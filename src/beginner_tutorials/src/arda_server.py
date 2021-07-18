#! /usr/bin/python2

import rospy
from std_srvs.srv import Empty, EmptyResponse
from sensor_msgs.msg import LaserScan

def call_back_function(req):
    ranges = req.range
    minimum = min(ranges)
    maximum = max(ranges)
    print(minimum)
    print(maximum)
ranges = []

rospy.init_node('My_Server')

srv = rospy.Service('/Arda',Empty,call_back_function)

print('Service is ready')

rospy.spin()