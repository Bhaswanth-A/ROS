#! /usr/bin/python3

import rospy
from sensor_msgs.msg import LaserScan
from maze_bot.srv import gazebo_server, gazebo_serverResponse

rospy.init_node('My_Node', anonymous=True)

ls_obj = LaserScan()
response = gazebo_serverResponse()

def callback(val):
    global ls_obj
    ls_obj = val
    

def func_serv(request):
    global ls_obj
    response.distance = ls_obj.ranges[request.direction]
    return response.distance


sub = rospy.Subscriber('/scan', LaserScan, callback)

serv = rospy.Service('my_service', gazebo_server, func_serv)
rospy.spin()