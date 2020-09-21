
(cl:in-package :asdf)

(defsystem "glosa-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "qt_GUI" :depends-on ("_package_qt_GUI"))
    (:file "_package_qt_GUI" :depends-on ("_package"))
  ))