; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude JangoFett.msg.html

(cl:defclass <JangoFett> (roslisp-msg-protocol:ros-message)
  ((side
    :reader side
    :initarg :side
    :type cl:integer
    :initform 0)
   (shape
    :reader shape
    :initarg :shape
    :type cl:string
    :initform ""))
)

(cl:defclass JangoFett (<JangoFett>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JangoFett>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JangoFett)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<JangoFett> is deprecated: use beginner_tutorials-msg:JangoFett instead.")))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <JangoFett>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:side-val is deprecated.  Use beginner_tutorials-msg:side instead.")
  (side m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <JangoFett>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:shape-val is deprecated.  Use beginner_tutorials-msg:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JangoFett>) ostream)
  "Serializes a message object of type '<JangoFett>"
  (cl:let* ((signed (cl:slot-value msg 'side)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shape))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shape))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JangoFett>) istream)
  "Deserializes a message object of type '<JangoFett>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'side) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shape) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JangoFett>)))
  "Returns string type for a message object of type '<JangoFett>"
  "beginner_tutorials/JangoFett")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JangoFett)))
  "Returns string type for a message object of type 'JangoFett"
  "beginner_tutorials/JangoFett")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JangoFett>)))
  "Returns md5sum for a message object of type '<JangoFett>"
  "bce1314c2e7b82b7bed59a940875e4a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JangoFett)))
  "Returns md5sum for a message object of type 'JangoFett"
  "bce1314c2e7b82b7bed59a940875e4a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JangoFett>)))
  "Returns full string definition for message of type '<JangoFett>"
  (cl:format cl:nil "int32 side~%string shape~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JangoFett)))
  "Returns full string definition for message of type 'JangoFett"
  (cl:format cl:nil "int32 side~%string shape~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JangoFett>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'shape))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JangoFett>))
  "Converts a ROS message object to a list"
  (cl:list 'JangoFett
    (cl:cons ':side (side msg))
    (cl:cons ':shape (shape msg))
))
