; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude my_actResult.msg.html

(cl:defclass <my_actResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass my_actResult (<my_actResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_actResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_actResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<my_actResult> is deprecated: use beginner_tutorials-msg:my_actResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <my_actResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:result-val is deprecated.  Use beginner_tutorials-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_actResult>) ostream)
  "Serializes a message object of type '<my_actResult>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_actResult>) istream)
  "Deserializes a message object of type '<my_actResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_actResult>)))
  "Returns string type for a message object of type '<my_actResult>"
  "beginner_tutorials/my_actResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_actResult)))
  "Returns string type for a message object of type 'my_actResult"
  "beginner_tutorials/my_actResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_actResult>)))
  "Returns md5sum for a message object of type '<my_actResult>"
  "db954e5de3aba73b237d07575e5cac28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_actResult)))
  "Returns md5sum for a message object of type 'my_actResult"
  "db954e5de3aba73b237d07575e5cac28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_actResult>)))
  "Returns full string definition for message of type '<my_actResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%float32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_actResult)))
  "Returns full string definition for message of type 'my_actResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%float32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_actResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_actResult>))
  "Converts a ROS message object to a list"
  (cl:list 'my_actResult
    (cl:cons ':result (result msg))
))