#! /usr/bin/python3

import rospy
# import actionlib library
import actionlib
# import custom action file
from beginner_tutorials.msg import counterAction, counterGoal

def Client():
    # create client and specify the name of server and action message type 
    client = actionlib.SimpleActionClient('my_action_server', counterAction)

    rospy.loginfo("Waiting for server")
	# wait for server (name specified above)
    client.wait_for_server()

    goal = counterGoal()
    goal.num_counts = 20
    
	# send goal to server
    client.send_goal(goal) # client.send_goal(goal, feedback_cb=feedback_func)

    rospy.loginfo("Goal has been sent to the action server")

    # can perform other tasks here as well

    # wait for result
    client.wait_for_result()

    return client.get_result()


while not rospy.is_shutdown():
    # initialize node
    rospy.init_node("counter_action_client")

    r = rospy.Rate(1)
    
	# call the function and print result
    res = Client()
    print(res)

    r.sleep()



