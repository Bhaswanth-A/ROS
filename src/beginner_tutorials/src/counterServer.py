#! /usr/bin/python3

import rospy
# import actionlib library used for calling actions
import actionlib
# import custom action file. Since actions are based on messages, notice how we import actions from the msg directory of a package.
from beginner_tutorials.msg import counterAction, counterResult, counterFeedback

class Server():

    def __init__(self):
        # create a simple ActionServer by passing the name, action type, and callback function as its parameters. 
        # auto_start has to be declared explicitly and always has to be set to False to prevent autostarting the server (can break your code otherwise).
        self.server = actionlib.SimpleActionServer('my_action_server', counterAction, self.counter, auto_start=False)
        
        # start server
        self.server.start()
        rospy.loginfo("Action server started")


    def counter(self,goal):
        self.res = counterResult()
        self.feedback = counterFeedback()
    
        # initializing the feedback variable to 0
        self.feedback.counts_elapsed = 0
                
        # for 1s delay
        r = rospy.Rate(1)

        self.res.result_message = "Counting complete!"
    
        # start counting till the goal 
        for i in range(0, goal.num_counts):

            success = True
            
            # check that preempt has not been requested by the user
            if self.server.is_preempt_requested():
                rospy.loginfo("my_action_server: Preempted")
                self.server.set_preempted()
                success = False
                break

                # publish the feedback
            self.feedback.counts_elapsed = i
            self.server.publish_feedback(self.feedback)
    
            # wait for 1s before incrementing the counter
            r.sleep()

        if success == True:
            # Once the necessary function is executed, the server notifies the client that the goal is complete by calling set_succeeded.

            self.server.set_succeeded(self.res)


rospy.init_node("counter_action_server")
# initialize object called server to call the Server() class.
server = Server()

rospy.spin()
