; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude get_pose-request.msg.html

(cl:defclass <get_pose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_pose-request (<get_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<get_pose-request> is deprecated: use beginner_tutorials-srv:get_pose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_pose-request>) ostream)
  "Serializes a message object of type '<get_pose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_pose-request>) istream)
  "Deserializes a message object of type '<get_pose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_pose-request>)))
  "Returns string type for a service object of type '<get_pose-request>"
  "beginner_tutorials/get_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pose-request)))
  "Returns string type for a service object of type 'get_pose-request"
  "beginner_tutorials/get_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_pose-request>)))
  "Returns md5sum for a message object of type '<get_pose-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_pose-request)))
  "Returns md5sum for a message object of type 'get_pose-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_pose-request>)))
  "Returns full string definition for message of type '<get_pose-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_pose-request)))
  "Returns full string definition for message of type 'get_pose-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_pose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_pose-request
))
;//! \htmlinclude get_pose-response.msg.html

(cl:defclass <get_pose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_pose-response (<get_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<get_pose-response> is deprecated: use beginner_tutorials-srv:get_pose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_pose-response>) ostream)
  "Serializes a message object of type '<get_pose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_pose-response>) istream)
  "Deserializes a message object of type '<get_pose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_pose-response>)))
  "Returns string type for a service object of type '<get_pose-response>"
  "beginner_tutorials/get_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pose-response)))
  "Returns string type for a service object of type 'get_pose-response"
  "beginner_tutorials/get_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_pose-response>)))
  "Returns md5sum for a message object of type '<get_pose-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_pose-response)))
  "Returns md5sum for a message object of type 'get_pose-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_pose-response>)))
  "Returns full string definition for message of type '<get_pose-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_pose-response)))
  "Returns full string definition for message of type 'get_pose-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_pose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_pose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_pose)))
  'get_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_pose)))
  'get_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pose)))
  "Returns string type for a service object of type '<get_pose>"
  "beginner_tutorials/get_pose")