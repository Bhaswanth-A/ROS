#! /usr/bin/python2

# import rospy
import rospy
# import tf2 module
import tf2_ros
# import math module
import math

from geometry_msgs.msg import Twist
from turtlesim.srv import Spawn

# initialize listener node
rospy.init_node("tf2_listener")

# A listener object is created. Once the listener is created, it starts receiving tf2 transformations, and buffers them for up to 10 seconds.
tfBuffer = tf2_ros.Buffer()
listener = tf2_ros.TransformListener(tfBuffer)

# Spawn another turtle in the same turtlesim node (Refer to https://github.com/Bhaswanth-A/ROS-Theory/blob/main/Services.md#571-spawning-2-turtles-in-the-same-node )
rospy.wait_for_service('spawn')
spawner = rospy.ServiceProxy('spawn', Spawn)
turtle_name = rospy.get_param('turtle', 'turtle2')
spawner(4.0, 2.0, 0.0, turtle_name)

pub = rospy.Publisher('%s/cmd_vel' % turtle_name,
                      Twist, latch=True, queue_size=1)


r = rospy.Rate(10)

while not rospy.is_shutdown():

    try:
        # Gets the transformation from source frame to target frame (change turtle1 to carrot1 for frames example)
        trans = tfBuffer.lookup_transform(turtle_name, 'turtle1', rospy.Time())

    except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
        continue

    # some math
    angular = 4 * math.atan2(trans.transform.translation.y,
                             trans.transform.translation.x)
    linear = 0.5 * math.sqrt(trans.transform.translation.x **
                             2 + trans.transform.translation.y ** 2)

    cmd = Twist()
    cmd.linear.x = linear
    cmd.angular.z = angular

    # publish the pose
    pub.publish(cmd)

    r.sleep()