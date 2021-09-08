#! /usr/bin/python2

import rospy
import tf2_ros
import math

from geometry_msgs.msg import TransformStamped


def frames():

    br = tf2_ros.TransformBroadcaster()

    t = TransformStamped()

    t.header.stamp = rospy.Time.now()
    t.header.frame_id = "turtle1"
    t.child_frame_id = "carrot1"

    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        x = rospy.Time.now().to_sec() * math.pi

        t.header.stamp = rospy.Time.now()
        t.transform.translation.x = 10 * math.sin(x)
        t.transform.translation.y = 10 * math.cos(x)
        t.transform.translation.z = 0.0
        t.transform.rotation.x = 0.0
        t.transform.rotation.y = 0.0
        t.transform.rotation.z = 0.0
        t.transform.rotation.w = 1.0

        br.sendTransform(t)
        rate.sleep()


if __name__ == "__main__":
    rospy.init_node('frames')

    frames()
