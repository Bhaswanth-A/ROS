; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude counterGoal.msg.html

(cl:defclass <counterGoal> (roslisp-msg-protocol:ros-message)
  ((num_counts
    :reader num_counts
    :initarg :num_counts
    :type cl:integer
    :initform 0))
)

(cl:defclass counterGoal (<counterGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <counterGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'counterGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<counterGoal> is deprecated: use beginner_tutorials-msg:counterGoal instead.")))

(cl:ensure-generic-function 'num_counts-val :lambda-list '(m))
(cl:defmethod num_counts-val ((m <counterGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:num_counts-val is deprecated.  Use beginner_tutorials-msg:num_counts instead.")
  (num_counts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <counterGoal>) ostream)
  "Serializes a message object of type '<counterGoal>"
  (cl:let* ((signed (cl:slot-value msg 'num_counts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <counterGoal>) istream)
  "Deserializes a message object of type '<counterGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_counts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<counterGoal>)))
  "Returns string type for a message object of type '<counterGoal>"
  "beginner_tutorials/counterGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'counterGoal)))
  "Returns string type for a message object of type 'counterGoal"
  "beginner_tutorials/counterGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<counterGoal>)))
  "Returns md5sum for a message object of type '<counterGoal>"
  "68e6163c06e1ec24e81524aa0727d5c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'counterGoal)))
  "Returns md5sum for a message object of type 'counterGoal"
  "68e6163c06e1ec24e81524aa0727d5c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<counterGoal>)))
  "Returns full string definition for message of type '<counterGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int32 num_counts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'counterGoal)))
  "Returns full string definition for message of type 'counterGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int32 num_counts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <counterGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <counterGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'counterGoal
    (cl:cons ':num_counts (num_counts msg))
))
