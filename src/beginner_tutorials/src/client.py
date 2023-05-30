#! /usr/bin/python3

import rospy
from beginner_tutorials.srv import add_two_int, add_two_intRequest


req = add_two_intRequest()
req.a = 4
req.b = 5

rospy.wait_for_service('add_two_int')

add_two_ints = rospy.ServiceProxy('add_two_int',add_two_int)
response = add_two_ints(req)
print(response.sum)
