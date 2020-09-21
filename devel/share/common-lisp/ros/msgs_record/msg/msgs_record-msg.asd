
(cl:in-package :asdf)

(defsystem "msgs_record-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "glosa" :depends-on ("_package_glosa"))
    (:file "_package_glosa" :depends-on ("_package"))
  ))