;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::get_pose)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'get_pose (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::GET_POSE")
  (make-package "BEGINNER_TUTORIALS::GET_POSE"))
(unless (find-package "BEGINNER_TUTORIALS::GET_POSEREQUEST")
  (make-package "BEGINNER_TUTORIALS::GET_POSEREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::GET_POSERESPONSE")
  (make-package "BEGINNER_TUTORIALS::GET_POSERESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::get_poseRequest
  :super ros::object
  :slots ())

(defmethod beginner_tutorials::get_poseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass beginner_tutorials::get_poseResponse
  :super ros::object
  :slots ())

(defmethod beginner_tutorials::get_poseResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass beginner_tutorials::get_pose
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::get_pose :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beginner_tutorials::get_pose :datatype-) "beginner_tutorials/get_pose")
(setf (get beginner_tutorials::get_pose :request) beginner_tutorials::get_poseRequest)
(setf (get beginner_tutorials::get_pose :response) beginner_tutorials::get_poseResponse)

(defmethod beginner_tutorials::get_poseRequest
  (:response () (instance beginner_tutorials::get_poseResponse :init)))

(setf (get beginner_tutorials::get_poseRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beginner_tutorials::get_poseRequest :datatype-) "beginner_tutorials/get_poseRequest")
(setf (get beginner_tutorials::get_poseRequest :definition-)
      "---

")

(setf (get beginner_tutorials::get_poseResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beginner_tutorials::get_poseResponse :datatype-) "beginner_tutorials/get_poseResponse")
(setf (get beginner_tutorials::get_poseResponse :definition-)
      "---

")



(provide :beginner_tutorials/get_pose "d41d8cd98f00b204e9800998ecf8427e")


