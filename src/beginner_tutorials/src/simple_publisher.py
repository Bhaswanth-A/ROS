#! /usr/bin/python2

import rospy
from std_msgs.msg import String
import time


rospy.init_node('Node_name')
pub = rospy.Publisher('/orchis_dark',String, latch=True, queue_size=10)

r = rospy.Rate(10)

while True:
    pub.publish('Current time: {}'.format(time.time()))
    r.sleep()
    