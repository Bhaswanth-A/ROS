#! /usr/bin/python2

import rospy
from custom_service_assignment.srv import custom_server, custom_serverResponse


def distance_bot():
    print('')


rospy.init_node('Custom_server')

srv = rospy.Service('Custom_server', custom_server, distance_bot)

print('Server is ready')

rospy.spin()
