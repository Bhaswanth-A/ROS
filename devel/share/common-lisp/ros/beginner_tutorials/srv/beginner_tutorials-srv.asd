
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add_two_int" :depends-on ("_package_add_two_int"))
    (:file "_package_add_two_int" :depends-on ("_package"))
    (:file "gazebo_server" :depends-on ("_package_gazebo_server"))
    (:file "_package_gazebo_server" :depends-on ("_package"))
    (:file "get_pose" :depends-on ("_package_get_pose"))
    (:file "_package_get_pose" :depends-on ("_package"))
  ))