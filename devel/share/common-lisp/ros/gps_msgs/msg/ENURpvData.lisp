; Auto-generated. Do not edit!


(cl:in-package gps_msgs-msg)


;//! \htmlinclude ENURpvData.msg.html

(cl:defclass <ENURpvData> (roslisp-msg-protocol:ros-message)
  ((e
    :reader e
    :initarg :e
    :type cl:float
    :initform 0.0)
   (n
    :reader n
    :initarg :n
    :type cl:float
    :initform 0.0)
   (u
    :reader u
    :initarg :u
    :type cl:float
    :initform 0.0))
)

(cl:defclass ENURpvData (<ENURpvData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ENURpvData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ENURpvData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msgs-msg:<ENURpvData> is deprecated: use gps_msgs-msg:ENURpvData instead.")))

(cl:ensure-generic-function 'e-val :lambda-list '(m))
(cl:defmethod e-val ((m <ENURpvData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:e-val is deprecated.  Use gps_msgs-msg:e instead.")
  (e m))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <ENURpvData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:n-val is deprecated.  Use gps_msgs-msg:n instead.")
  (n m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <ENURpvData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:u-val is deprecated.  Use gps_msgs-msg:u instead.")
  (u m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ENURpvData>) ostream)
  "Serializes a message object of type '<ENURpvData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'n))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ENURpvData>) istream)
  "Deserializes a message object of type '<ENURpvData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'e) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'n) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ENURpvData>)))
  "Returns string type for a message object of type '<ENURpvData>"
  "gps_msgs/ENURpvData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ENURpvData)))
  "Returns string type for a message object of type 'ENURpvData"
  "gps_msgs/ENURpvData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ENURpvData>)))
  "Returns md5sum for a message object of type '<ENURpvData>"
  "ee32a4859155fe2401cc8b90c0400d00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ENURpvData)))
  "Returns md5sum for a message object of type 'ENURpvData"
  "ee32a4859155fe2401cc8b90c0400d00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ENURpvData>)))
  "Returns full string definition for message of type '<ENURpvData>"
  (cl:format cl:nil "float64 e~%float64 n~%float64 u~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ENURpvData)))
  "Returns full string definition for message of type 'ENURpvData"
  (cl:format cl:nil "float64 e~%float64 n~%float64 u~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ENURpvData>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ENURpvData>))
  "Converts a ROS message object to a list"
  (cl:list 'ENURpvData
    (cl:cons ':e (e msg))
    (cl:cons ':n (n msg))
    (cl:cons ':u (u msg))
))
