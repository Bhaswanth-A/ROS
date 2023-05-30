#! /usr/bin/python3 # shebang

import rospy # appears in every ROS node and imports some basic functionalities, classes and functions
from std_msgs.msg import String, Empty # import the message type called String and Empty
import random # import the random module to generate random numbers

topicNum = random.randint(1,5) # generate random numbers between 1 and 5 (both included) and store it as topicNum

pub_list = ['pub1','pub2','pub3','pub4','pub5'] # list of all publishing objects

rospy.init_node("Node",anonymous=True) # initialize publisher node

r = rospy.Rate(10) # This line creates an object r of the class Rate. When r.sleep() is called, it sleeps just long enough for the loop to run at the desired rate. When the argument 10 is passed, it goes through the loop 10 times per second.

pub_list[topicNum-1] = rospy.Publisher('/topic{}'.format(topicNum), String, latch=True, queue_size=10) # publish to a topic of message type String

for i in range(1,6):
    if(i!=topicNum):
        pub_list[i-1] = rospy.Publisher('/topic{}'.format(i), Empty, latch=True, queue_size=10) # publish to topics of message type Empty
        
while True:
    pub_list[topicNum-1].publish("ARC Rocks!") # publish the message ARC Rocks to the desired topic
    for i in range(1,6):
        if(i!=topicNum):
            pub_list[i-1].publish() # publish an empty message to the remaining topics
    r.sleep()
