#! /usr/bin/python2

import rospy
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist
import time

def Number(num):

    val = num.data
    print(val)

    r = rospy.Rate(5)

    forward = Twist()
    forward.linear.x = 0.15
    forward.linear.y = 0
    forward.linear.z = 0

    forward.angular.x = 0
    forward.angular.y = 0
    forward.angular.z = 0

    turn = Twist()
    turn.linear.x = 0
    turn.linear.y = 0
    turn.linear.z = 0

    turn.angular.x = 0
    turn.angular.y = 0
    turn.angular.z = 0.825

    while not rospy.is_shutdown():
        for x in range(0,val*3):
            pub.publish(forward)
            r.sleep()
        for x in range(0,val):
            pub.publish(turn)
            r.sleep()


rospy.init_node('subscriber_mover')

sub = rospy.Subscriber("/your_word_is_your_wand",Int32,Number)
pub = rospy.Publisher('/turtle1/cmd_vel',Twist, latch=True, queue_size=10)

rospy.spin()