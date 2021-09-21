; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude call_map-request.msg.html

(cl:defclass <call_map-request> (roslisp-msg-protocol:ros-message)
  ((resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0))
)

(cl:defclass call_map-request (<call_map-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <call_map-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'call_map-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<call_map-request> is deprecated: use beginner_tutorials-srv:call_map-request instead.")))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <call_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:resolution-val is deprecated.  Use beginner_tutorials-srv:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <call_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:width-val is deprecated.  Use beginner_tutorials-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <call_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:height-val is deprecated.  Use beginner_tutorials-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <call_map-request>) ostream)
  "Serializes a message object of type '<call_map-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <call_map-request>) istream)
  "Deserializes a message object of type '<call_map-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<call_map-request>)))
  "Returns string type for a service object of type '<call_map-request>"
  "beginner_tutorials/call_mapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'call_map-request)))
  "Returns string type for a service object of type 'call_map-request"
  "beginner_tutorials/call_mapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<call_map-request>)))
  "Returns md5sum for a message object of type '<call_map-request>"
  "f81dc7dae681cc15d11fa0cebf4e8f30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'call_map-request)))
  "Returns md5sum for a message object of type 'call_map-request"
  "f81dc7dae681cc15d11fa0cebf4e8f30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<call_map-request>)))
  "Returns full string definition for message of type '<call_map-request>"
  (cl:format cl:nil "float32 resolution~%uint32 width~%uint32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'call_map-request)))
  "Returns full string definition for message of type 'call_map-request"
  (cl:format cl:nil "float32 resolution~%uint32 width~%uint32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <call_map-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <call_map-request>))
  "Converts a ROS message object to a list"
  (cl:list 'call_map-request
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude call_map-response.msg.html

(cl:defclass <call_map-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass call_map-response (<call_map-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <call_map-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'call_map-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<call_map-response> is deprecated: use beginner_tutorials-srv:call_map-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <call_map-response>) ostream)
  "Serializes a message object of type '<call_map-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <call_map-response>) istream)
  "Deserializes a message object of type '<call_map-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<call_map-response>)))
  "Returns string type for a service object of type '<call_map-response>"
  "beginner_tutorials/call_mapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'call_map-response)))
  "Returns string type for a service object of type 'call_map-response"
  "beginner_tutorials/call_mapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<call_map-response>)))
  "Returns md5sum for a message object of type '<call_map-response>"
  "f81dc7dae681cc15d11fa0cebf4e8f30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'call_map-response)))
  "Returns md5sum for a message object of type 'call_map-response"
  "f81dc7dae681cc15d11fa0cebf4e8f30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<call_map-response>)))
  "Returns full string definition for message of type '<call_map-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'call_map-response)))
  "Returns full string definition for message of type 'call_map-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <call_map-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <call_map-response>))
  "Converts a ROS message object to a list"
  (cl:list 'call_map-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'call_map)))
  'call_map-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'call_map)))
  'call_map-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'call_map)))
  "Returns string type for a service object of type '<call_map>"
  "beginner_tutorials/call_map")