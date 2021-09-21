#! /usr/bin/python2

import rospy
from nav_msgs.srv import GetMap, GetMapRequest

rospy.init_node('call_map')
rospy.wait_for_service('/static_map')

map_data = GetMapRequest()

srv = rospy.ServiceProxy('/static_map',GetMap)
response = srv(map_data)
print(response.map.info.resolution)
print(response.map.info.width)
print(response.map.info.height)

rospy.spin()