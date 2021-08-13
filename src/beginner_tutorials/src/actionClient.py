#! /usr/bin/python2

import rospy
# import actionlib library
import actionlib
# import custom action file
from beginner_tutorials.msg import my_actAction, my_actGoal, my_actResult, my_actFeedback

# initialize node
rospy.init_node('My_Client')

# create client and specify the name of server and action message type 
client = actionlib.SimpleActionClient('simple_server', my_actAction)
# wait for server (name specified above)
client.wait_for_server()

# def feedback_func(feedback):
    # Do some stuff

# create object of class my_actGoal()
action = my_actGoal()
action.threshold = 55.0
# send goal to server
client.send_goal(action) # client.send_goal(action, feedback_cb=feedback_func)

r = rospy.Rate(1) #1 Hz

while not rospy.is_shutdown():
    # Have some condition to print status
    # status = client.get_state()
    # print(status)
    
    # wait for result
    client.wait_for_result()
    # sleep
    r.sleep()