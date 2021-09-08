#! /usr/bin/python2

import rospy
import tf2_ros
import math

from geometry_msgs.msg import Twist
from turtlesim.srv import Spawn

rospy.init_node("tf2_listener")

tfBuffer = tf2_ros.Buffer()
listener = tf2_ros.TransformListener(tfBuffer)

rospy.wait_for_service('spawn')
spawner = rospy.ServiceProxy('spawn', Spawn)
turtle_name = rospy.get_param('turtle', 'turtle2')
spawner(4.0, 2.0, 0.0, turtle_name)

pub = rospy.Publisher('%s/cmd_vel' % turtle_name,
                      Twist, latch=True, queue_size=1)


r = rospy.Rate(10)

while not rospy.is_shutdown():
    try:
        past = rospy.Time.now() - rospy.Duration(5)
        trans = tfBuffer.lookup_transform_full(turtle_name, rospy.Time.now(), 'turtle1', past, 'world', rospy.Duration(1))

    except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
        continue

    angular = 4 * math.atan2(trans.transform.translation.y,
                             trans.transform.translation.x)
    linear = 0.5 * math.sqrt(trans.transform.translation.x **
                             2 + trans.transform.translation.y ** 2)

    cmd = Twist()
    cmd.linear.x = linear
    cmd.angular.z = angular

    pub.publish(cmd)

    r.sleep()
