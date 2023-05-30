#! /usr/bin/python2

import rospy
import tf2_ros
import tf
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
import math

roll = math.radians(30)
pitch = math.radians(50)
yaw = math.radians(75)

print('Roll: {}'.format(math.degrees(roll)))
print('Pitch: {}'.format(math.degrees(pitch)))
print('Yaw: {}'.format(math.degrees(yaw)))

quaternion = tf.transformations.quaternion_from_euler(roll, pitch, yaw)
print("\nResulting quaternions:")

for i in range(0, 4):
    print(quaternion[i])


ori = tf.transformations.euler_from_quaternion(quaternion)
print('\nEuler from quaternion:')
for i in range(0, 3):
    print(math.degrees(ori[i]))
