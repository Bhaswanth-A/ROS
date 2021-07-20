;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::gazebo_server)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'gazebo_server (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::GAZEBO_SERVER")
  (make-package "BEGINNER_TUTORIALS::GAZEBO_SERVER"))
(unless (find-package "BEGINNER_TUTORIALS::GAZEBO_SERVERREQUEST")
  (make-package "BEGINNER_TUTORIALS::GAZEBO_SERVERREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::GAZEBO_SERVERRESPONSE")
  (make-package "BEGINNER_TUTORIALS::GAZEBO_SERVERRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::gazebo_serverRequest
  :super ros::object
  :slots (_direction ))

(defmethod beginner_tutorials::gazebo_serverRequest
  (:init
   (&key
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int64 _direction
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _direction
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _direction (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _direction) (= (length (_direction . bv)) 2)) ;; bignum
              (write-long (ash (elt (_direction . bv) 0) 0) s)
              (write-long (ash (elt (_direction . bv) 1) -1) s))
             ((and (class _direction) (= (length (_direction . bv)) 1)) ;; big1
              (write-long (elt (_direction . bv) 0) s)
              (write-long (if (>= _direction 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _direction s)(write-long (if (>= _direction 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _direction
#+(or :alpha :irix6 :x86_64)
      (setf _direction (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _direction (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::gazebo_serverResponse
  :super ros::object
  :slots (_distance ))

(defmethod beginner_tutorials::gazebo_serverResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beginner_tutorials::gazebo_server
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::gazebo_server :md5sum-) "f585dfe9780f5944bfdaecf9c4a1e42c")
(setf (get beginner_tutorials::gazebo_server :datatype-) "beginner_tutorials/gazebo_server")
(setf (get beginner_tutorials::gazebo_server :request) beginner_tutorials::gazebo_serverRequest)
(setf (get beginner_tutorials::gazebo_server :response) beginner_tutorials::gazebo_serverResponse)

(defmethod beginner_tutorials::gazebo_serverRequest
  (:response () (instance beginner_tutorials::gazebo_serverResponse :init)))

(setf (get beginner_tutorials::gazebo_serverRequest :md5sum-) "f585dfe9780f5944bfdaecf9c4a1e42c")
(setf (get beginner_tutorials::gazebo_serverRequest :datatype-) "beginner_tutorials/gazebo_serverRequest")
(setf (get beginner_tutorials::gazebo_serverRequest :definition-)
      "int64 direction
---
float32 distance
")

(setf (get beginner_tutorials::gazebo_serverResponse :md5sum-) "f585dfe9780f5944bfdaecf9c4a1e42c")
(setf (get beginner_tutorials::gazebo_serverResponse :datatype-) "beginner_tutorials/gazebo_serverResponse")
(setf (get beginner_tutorials::gazebo_serverResponse :definition-)
      "int64 direction
---
float32 distance
")



(provide :beginner_tutorials/gazebo_server "f585dfe9780f5944bfdaecf9c4a1e42c")


