;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::JangoFett)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'JangoFett (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::JANGOFETT")
  (make-package "BEGINNER_TUTORIALS::JANGOFETT"))

(in-package "ROS")
;;//! \htmlinclude JangoFett.msg.html


(defclass beginner_tutorials::JangoFett
  :super ros::object
  :slots (_side _shape ))

(defmethod beginner_tutorials::JangoFett
  (:init
   (&key
    ((:side __side) 0)
    ((:shape __shape) "")
    )
   (send-super :init)
   (setq _side (round __side))
   (setq _shape (string __shape))
   self)
  (:side
   (&optional __side)
   (if __side (setq _side __side)) _side)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:serialization-length
   ()
   (+
    ;; int32 _side
    4
    ;; string _shape
    4 (length _shape)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _side
       (write-long _side s)
     ;; string _shape
       (write-long (length _shape) s) (princ _shape s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _side
     (setq _side (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _shape
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shape (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::JangoFett :md5sum-) "bce1314c2e7b82b7bed59a940875e4a6")
(setf (get beginner_tutorials::JangoFett :datatype-) "beginner_tutorials/JangoFett")
(setf (get beginner_tutorials::JangoFett :definition-)
      "int32 side
string shape
")



(provide :beginner_tutorials/JangoFett "bce1314c2e7b82b7bed59a940875e4a6")


