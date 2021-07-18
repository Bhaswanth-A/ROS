#! /usr/bin/python2

import rospy
from beginner_tutorials.msg import JangoFett
from geometry_msgs.msg import Twist


class MoveShape():

    def __init__(self):
        self.pub = rospy.Publisher('/turtle1/cmd_vel',Twist,latch=True,queue_size=10)


    def inputs_move(self,val):
        self.shape = val.shape
        self.side = val.side     
    
        if(self.shape=="Circle"):
            forward_1 = Twist()
            forward_1.linear.x = self.side
            forward_1.linear.y = 0
            forward_1.linear.z = 0
            
            forward_1.angular.x = 0
            forward_1.angular.y = 0
            forward_1.angular.z = self.side
            while not rospy.is_shutdown():
                self.pub.publish(forward_1)
                
        if(self.shape=="Square"):
            forward_2 = Twist()
            forward_2.linear.x = 2
            forward_2.linear.y = 0
            forward_2.linear.z = 0

            forward_2.angular.x = 0
            forward_2.angular.y = 0
            forward_2.angular.z = 0

            turn = Twist()
            turn.linear.x = 0
            turn.linear.y = 0
            turn.linear.z = 0

            turn.angular.x = 0
            turn.angular.y = 0
            turn.angular.z = 0.75

            while not rospy.is_shutdown():
                for x in range(0,self.side*3):
                    self.pub.publish(forward_2)
                for x in range(0,self.side):
                    self.pub.publish(turn)
            

rospy.init_node('Custom_message')

move_shape = MoveShape()
rospy.Subscriber('/darkside',JangoFett,move_shape.inputs_move)

rospy.spin()