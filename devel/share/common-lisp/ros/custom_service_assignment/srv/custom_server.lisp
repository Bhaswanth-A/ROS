; Auto-generated. Do not edit!


(cl:in-package custom_service_assignment-srv)


;//! \htmlinclude custom_server-request.msg.html

(cl:defclass <custom_server-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass custom_server-request (<custom_server-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custom_server-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custom_server-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_service_assignment-srv:<custom_server-request> is deprecated: use custom_service_assignment-srv:custom_server-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <custom_server-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_service_assignment-srv:distance-val is deprecated.  Use custom_service_assignment-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custom_server-request>) ostream)
  "Serializes a message object of type '<custom_server-request>"
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custom_server-request>) istream)
  "Deserializes a message object of type '<custom_server-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custom_server-request>)))
  "Returns string type for a service object of type '<custom_server-request>"
  "custom_service_assignment/custom_serverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom_server-request)))
  "Returns string type for a service object of type 'custom_server-request"
  "custom_service_assignment/custom_serverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custom_server-request>)))
  "Returns md5sum for a message object of type '<custom_server-request>"
  "8170c3b501e907fd4247d1f4d86f297a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custom_server-request)))
  "Returns md5sum for a message object of type 'custom_server-request"
  "8170c3b501e907fd4247d1f4d86f297a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custom_server-request>)))
  "Returns full string definition for message of type '<custom_server-request>"
  (cl:format cl:nil "int32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custom_server-request)))
  "Returns full string definition for message of type 'custom_server-request"
  (cl:format cl:nil "int32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custom_server-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custom_server-request>))
  "Converts a ROS message object to a list"
  (cl:list 'custom_server-request
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude custom_server-response.msg.html

(cl:defclass <custom_server-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass custom_server-response (<custom_server-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custom_server-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custom_server-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_service_assignment-srv:<custom_server-response> is deprecated: use custom_service_assignment-srv:custom_server-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <custom_server-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_service_assignment-srv:success-val is deprecated.  Use custom_service_assignment-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <custom_server-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_service_assignment-srv:message-val is deprecated.  Use custom_service_assignment-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custom_server-response>) ostream)
  "Serializes a message object of type '<custom_server-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custom_server-response>) istream)
  "Deserializes a message object of type '<custom_server-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custom_server-response>)))
  "Returns string type for a service object of type '<custom_server-response>"
  "custom_service_assignment/custom_serverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom_server-response)))
  "Returns string type for a service object of type 'custom_server-response"
  "custom_service_assignment/custom_serverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custom_server-response>)))
  "Returns md5sum for a message object of type '<custom_server-response>"
  "8170c3b501e907fd4247d1f4d86f297a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custom_server-response)))
  "Returns md5sum for a message object of type 'custom_server-response"
  "8170c3b501e907fd4247d1f4d86f297a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custom_server-response>)))
  "Returns full string definition for message of type '<custom_server-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custom_server-response)))
  "Returns full string definition for message of type 'custom_server-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custom_server-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custom_server-response>))
  "Converts a ROS message object to a list"
  (cl:list 'custom_server-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'custom_server)))
  'custom_server-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'custom_server)))
  'custom_server-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom_server)))
  "Returns string type for a service object of type '<custom_server>"
  "custom_service_assignment/custom_server")