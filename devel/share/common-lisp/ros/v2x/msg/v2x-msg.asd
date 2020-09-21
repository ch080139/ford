
(cl:in-package :asdf)

(defsystem "v2x-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "spat" :depends-on ("_package_spat"))
    (:file "_package_spat" :depends-on ("_package"))
  ))