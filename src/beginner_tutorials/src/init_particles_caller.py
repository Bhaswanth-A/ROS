#! /usr/bin/python2

import rospy
from std_srvs.srv import Empty, EmptyRequest

rospy.init_node('client_global_localization')
rospy.wait_for_service('global_localization')

req = EmptyRequest()

srv = rospy.ServiceProxy('global_localization',Empty)
result = srv(req)

rospy.spin()
