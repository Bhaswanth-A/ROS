#! /usr/bin/python3

import rospy
from std_msgs.msg import String

rospy.init_node("Sub",anonymous=True)
topicNum = int(input("Guess the topic number: "))

def func1(data):
    if('/topic{}'.format(topicNum) == '/topic1'):
        print('You win')
    else:
        print('You lose')


def func2(data):
    if('/topic{}'.format(topicNum) == '/topic2'):
        print('You win')
    else:
        print('You lose')

def func3(data):
    if('/topic{}'.format(topicNum) == '/topic3'):
        print('You win')
    else:
        print('You lose')

def func4(data):
    if('/topic{}'.format(topicNum) == '/topic4'):
        print('You win')
    else:
        print('You lose')

def func5(data):
    if('/topic{}'.format(topicNum) == '/topic5'):
        print('You win')
    else:
        print('You lose')


rospy.Subscriber('/topic1',String,func1)
rospy.Subscriber('/topic2',String,func2)
rospy.Subscriber('/topic3',String,func3)
rospy.Subscriber('/topic4',String,func4)
rospy.Subscriber('/topic5',String,func5)

rospy.spin()