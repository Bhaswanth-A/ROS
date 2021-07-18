#! /usr/bin/python2

import rospy
from std_msgs.msg import String

rospy.init_node('simple_subscriber')

def function(my_string):
    print(my_string.data)

rospy.Subscriber('/force',String, function)

rospy.spin()
