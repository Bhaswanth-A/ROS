#! /usr/bin/python2

import rospy
from geometry_msgs.msg import PoseWithCovarianceStamped
from std_srvs.srv import Empty, EmptyResponse

bot_pose = PoseWithCovarianceStamped()

def serv_func(req):
    print("Pose:")
    print(bot_pose)
    return EmptyResponse()


def sub_func(msg):
    global bot_pose
    bot_pose = msg.pose.pose

rospy.init_node('service_server')

srv = rospy.Service('my_pose_service',Empty,serv_func)
sub = rospy.Subscriber('/amcl_pose',PoseWithCovarianceStamped,sub_func)

rospy.spin()