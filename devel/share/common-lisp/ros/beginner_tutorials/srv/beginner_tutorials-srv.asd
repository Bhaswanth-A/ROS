
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add_two_int" :depends-on ("_package_add_two_int"))
    (:file "_package_add_two_int" :depends-on ("_package"))
  ))