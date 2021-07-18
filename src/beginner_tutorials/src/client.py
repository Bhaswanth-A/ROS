#! /usr/bin/python2

import rospy
from beginner_tutorials.srv import *

x = 4
y = 5

rospy.wait_for_service('add_two_int')

add_two_ints = rospy.ServiceProxy('add_two_int',add_two_int)
response = add_two_ints(x,y)
print(response.sum)
