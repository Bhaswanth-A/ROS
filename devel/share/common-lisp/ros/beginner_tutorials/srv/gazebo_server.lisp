; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude gazebo_server-request.msg.html

(cl:defclass <gazebo_server-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0))
)

(cl:defclass gazebo_server-request (<gazebo_server-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gazebo_server-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gazebo_server-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<gazebo_server-request> is deprecated: use beginner_tutorials-srv:gazebo_server-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <gazebo_server-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:direction-val is deprecated.  Use beginner_tutorials-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gazebo_server-request>) ostream)
  "Serializes a message object of type '<gazebo_server-request>"
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gazebo_server-request>) istream)
  "Deserializes a message object of type '<gazebo_server-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gazebo_server-request>)))
  "Returns string type for a service object of type '<gazebo_server-request>"
  "beginner_tutorials/gazebo_serverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gazebo_server-request)))
  "Returns string type for a service object of type 'gazebo_server-request"
  "beginner_tutorials/gazebo_serverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gazebo_server-request>)))
  "Returns md5sum for a message object of type '<gazebo_server-request>"
  "f585dfe9780f5944bfdaecf9c4a1e42c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gazebo_server-request)))
  "Returns md5sum for a message object of type 'gazebo_server-request"
  "f585dfe9780f5944bfdaecf9c4a1e42c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gazebo_server-request>)))
  "Returns full string definition for message of type '<gazebo_server-request>"
  (cl:format cl:nil "int64 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gazebo_server-request)))
  "Returns full string definition for message of type 'gazebo_server-request"
  (cl:format cl:nil "int64 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gazebo_server-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gazebo_server-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gazebo_server-request
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude gazebo_server-response.msg.html

(cl:defclass <gazebo_server-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass gazebo_server-response (<gazebo_server-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gazebo_server-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gazebo_server-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<gazebo_server-response> is deprecated: use beginner_tutorials-srv:gazebo_server-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <gazebo_server-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:distance-val is deprecated.  Use beginner_tutorials-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gazebo_server-response>) ostream)
  "Serializes a message object of type '<gazebo_server-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gazebo_server-response>) istream)
  "Deserializes a message object of type '<gazebo_server-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gazebo_server-response>)))
  "Returns string type for a service object of type '<gazebo_server-response>"
  "beginner_tutorials/gazebo_serverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gazebo_server-response)))
  "Returns string type for a service object of type 'gazebo_server-response"
  "beginner_tutorials/gazebo_serverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gazebo_server-response>)))
  "Returns md5sum for a message object of type '<gazebo_server-response>"
  "f585dfe9780f5944bfdaecf9c4a1e42c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gazebo_server-response)))
  "Returns md5sum for a message object of type 'gazebo_server-response"
  "f585dfe9780f5944bfdaecf9c4a1e42c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gazebo_server-response>)))
  "Returns full string definition for message of type '<gazebo_server-response>"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gazebo_server-response)))
  "Returns full string definition for message of type 'gazebo_server-response"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gazebo_server-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gazebo_server-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gazebo_server-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gazebo_server)))
  'gazebo_server-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gazebo_server)))
  'gazebo_server-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gazebo_server)))
  "Returns string type for a service object of type '<gazebo_server>"
  "beginner_tutorials/gazebo_server")