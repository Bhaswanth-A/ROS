;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::call_map)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'call_map (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::CALL_MAP")
  (make-package "BEGINNER_TUTORIALS::CALL_MAP"))
(unless (find-package "BEGINNER_TUTORIALS::CALL_MAPREQUEST")
  (make-package "BEGINNER_TUTORIALS::CALL_MAPREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::CALL_MAPRESPONSE")
  (make-package "BEGINNER_TUTORIALS::CALL_MAPRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::call_mapRequest
  :super ros::object
  :slots (_resolution _width _height ))

(defmethod beginner_tutorials::call_mapRequest
  (:init
   (&key
    ((:resolution __resolution) 0.0)
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _resolution (float __resolution))
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _resolution
    4
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beginner_tutorials::call_mapResponse
  :super ros::object
  :slots ())

(defmethod beginner_tutorials::call_mapResponse
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

(defclass beginner_tutorials::call_map
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::call_map :md5sum-) "f81dc7dae681cc15d11fa0cebf4e8f30")
(setf (get beginner_tutorials::call_map :datatype-) "beginner_tutorials/call_map")
(setf (get beginner_tutorials::call_map :request) beginner_tutorials::call_mapRequest)
(setf (get beginner_tutorials::call_map :response) beginner_tutorials::call_mapResponse)

(defmethod beginner_tutorials::call_mapRequest
  (:response () (instance beginner_tutorials::call_mapResponse :init)))

(setf (get beginner_tutorials::call_mapRequest :md5sum-) "f81dc7dae681cc15d11fa0cebf4e8f30")
(setf (get beginner_tutorials::call_mapRequest :datatype-) "beginner_tutorials/call_mapRequest")
(setf (get beginner_tutorials::call_mapRequest :definition-)
      "float32 resolution
uint32 width
uint32 height

---
")

(setf (get beginner_tutorials::call_mapResponse :md5sum-) "f81dc7dae681cc15d11fa0cebf4e8f30")
(setf (get beginner_tutorials::call_mapResponse :datatype-) "beginner_tutorials/call_mapResponse")
(setf (get beginner_tutorials::call_mapResponse :definition-)
      "float32 resolution
uint32 width
uint32 height

---
")



(provide :beginner_tutorials/call_map "f81dc7dae681cc15d11fa0cebf4e8f30")


