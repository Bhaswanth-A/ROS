;; Auto-generated. Do not edit!


(when (boundp 'custom_service_assignment::custom_server)
  (if (not (find-package "CUSTOM_SERVICE_ASSIGNMENT"))
    (make-package "CUSTOM_SERVICE_ASSIGNMENT"))
  (shadow 'custom_server (find-package "CUSTOM_SERVICE_ASSIGNMENT")))
(unless (find-package "CUSTOM_SERVICE_ASSIGNMENT::CUSTOM_SERVER")
  (make-package "CUSTOM_SERVICE_ASSIGNMENT::CUSTOM_SERVER"))
(unless (find-package "CUSTOM_SERVICE_ASSIGNMENT::CUSTOM_SERVERREQUEST")
  (make-package "CUSTOM_SERVICE_ASSIGNMENT::CUSTOM_SERVERREQUEST"))
(unless (find-package "CUSTOM_SERVICE_ASSIGNMENT::CUSTOM_SERVERRESPONSE")
  (make-package "CUSTOM_SERVICE_ASSIGNMENT::CUSTOM_SERVERRESPONSE"))

(in-package "ROS")





(defclass custom_service_assignment::custom_serverRequest
  :super ros::object
  :slots (_distance ))

(defmethod custom_service_assignment::custom_serverRequest
  (:init
   (&key
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _distance (round __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass custom_service_assignment::custom_serverResponse
  :super ros::object
  :slots (_success _message ))

(defmethod custom_service_assignment::custom_serverResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass custom_service_assignment::custom_server
  :super ros::object
  :slots ())

(setf (get custom_service_assignment::custom_server :md5sum-) "8170c3b501e907fd4247d1f4d86f297a")
(setf (get custom_service_assignment::custom_server :datatype-) "custom_service_assignment/custom_server")
(setf (get custom_service_assignment::custom_server :request) custom_service_assignment::custom_serverRequest)
(setf (get custom_service_assignment::custom_server :response) custom_service_assignment::custom_serverResponse)

(defmethod custom_service_assignment::custom_serverRequest
  (:response () (instance custom_service_assignment::custom_serverResponse :init)))

(setf (get custom_service_assignment::custom_serverRequest :md5sum-) "8170c3b501e907fd4247d1f4d86f297a")
(setf (get custom_service_assignment::custom_serverRequest :datatype-) "custom_service_assignment/custom_serverRequest")
(setf (get custom_service_assignment::custom_serverRequest :definition-)
      "int32 distance
---
bool success
string message
")

(setf (get custom_service_assignment::custom_serverResponse :md5sum-) "8170c3b501e907fd4247d1f4d86f297a")
(setf (get custom_service_assignment::custom_serverResponse :datatype-) "custom_service_assignment/custom_serverResponse")
(setf (get custom_service_assignment::custom_serverResponse :definition-)
      "int32 distance
---
bool success
string message
")



(provide :custom_service_assignment/custom_server "8170c3b501e907fd4247d1f4d86f297a")


