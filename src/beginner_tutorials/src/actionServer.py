#! /usr/bin/python2

# import actionlib library used for calling actions
import actionlib
import rospy

# import custom action file. Since actions are based on messages, notice how we import actions from the msg directory of a package.
from beginner_tutorials.msg import my_actAction, my_actResult, my_actFeedback

class Server():

    def __init__(self):
        # create a simple ActionServer by passing the name, action type, and callback function as its parameters. 
        # auto_start has to be declared explicitly and always has to be set to False to prevent autostarting the server (can break your code otherwise).
        self.my_server = actionlib.SimpleActionServer('simple_server', my_actAction, self.execute, auto_start = False)
        # start server
        self.my_server.start()

    def execute(self, action):

        self.res = my_actResult()
        self.res.result = "Success"
        # Once the necessary function is executed, the server notifies the client that the goal is complete by calling set_succeeded.
        self.my_server.set_succeeded(self.res)

        print(self.res.result)
        print(action.threshold)  
        
        # Some condition for feedback
        feedback = my_actFeedback()
        feedback.feed = 10.0
        server.publish_feedback(feedback)
        
    
rospy.init_node('Action_Server')

# initialize object called server to call the Server() class.
server = Server()

rospy.spin()