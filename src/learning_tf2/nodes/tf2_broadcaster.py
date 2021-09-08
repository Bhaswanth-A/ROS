#! /usr/bin/python2

# import rospy
import rospy
# import tf2 module
import tf2_ros
# import tf
import tf

import geometry_msgs.msg
import turtlesim.msg


def turtle_func(msg, turtlename):
    # TransformBroadcaster makes publishing of transforms easy. To use the TransformBroadcaster, we need to import the tf2_ros module.
    br = tf2_ros.TransformBroadcaster() 
    # We create a TransformStamped object which will contain the message to be published. 
    t = geometry_msgs.msg.TransformStamped()

    # Before stuffing the actual transform values we need to give the TransformStamped object the appropriate metadata.

    t.header.stamp = rospy.Time.now() # We need to give the transform being published a timestamp, which in our case will be the current time
    t.header.frame_id = "world" # name of parent frame
    t.child_frame_id = turtlename # name of child frame

    t.transform.translation.x = msg.x
    t.transform.translation.y = msg.y
    t.transform.translation.z = 0.0

    # convert angles from euler (radians/degrees) to quaternion 
    q = tf.transformations.quaternion_from_euler(0, 0, msg.theta)
    t.transform.rotation.x = q[0]
    t.transform.rotation.y = q[1]
    t.transform.rotation.z = q[2]
    t.transform.rotation.w = q[3]

    br.sendTransform(t) # publish the transform

if __name__=='__main__':
    rospy.init_node('tf2_broadcaster') # create node
    turtlename = rospy.get_param("~turtle")

    rospy.Subscriber('%s/pose' % turtlename,
                    turtlesim.msg.Pose,
                    turtle_func,
                    turtlename)

    rospy.spin()