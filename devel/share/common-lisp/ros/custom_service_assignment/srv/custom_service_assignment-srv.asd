
(cl:in-package :asdf)

(defsystem "custom_service_assignment-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "custom_server" :depends-on ("_package_custom_server"))
    (:file "_package_custom_server" :depends-on ("_package"))
  ))