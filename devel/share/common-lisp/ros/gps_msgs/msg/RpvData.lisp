; Auto-generated. Do not edit!


(cl:in-package gps_msgs-msg)


;//! \htmlinclude RpvData.msg.html

(cl:defclass <RpvData> (roslisp-msg-protocol:ros-message)
  ((xyz
    :reader xyz
    :initarg :xyz
    :type gps_msgs-msg:XYZRpvData
    :initform (cl:make-instance 'gps_msgs-msg:XYZRpvData))
   (enu
    :reader enu
    :initarg :enu
    :type gps_msgs-msg:ENURpvData
    :initform (cl:make-instance 'gps_msgs-msg:ENURpvData))
   (magnitude
    :reader magnitude
    :initarg :magnitude
    :type cl:float
    :initform 0.0)
   (horizontal_magnitude
    :reader horizontal_magnitude
    :initarg :horizontal_magnitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass RpvData (<RpvData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RpvData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RpvData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msgs-msg:<RpvData> is deprecated: use gps_msgs-msg:RpvData instead.")))

(cl:ensure-generic-function 'xyz-val :lambda-list '(m))
(cl:defmethod xyz-val ((m <RpvData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:xyz-val is deprecated.  Use gps_msgs-msg:xyz instead.")
  (xyz m))

(cl:ensure-generic-function 'enu-val :lambda-list '(m))
(cl:defmethod enu-val ((m <RpvData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:enu-val is deprecated.  Use gps_msgs-msg:enu instead.")
  (enu m))

(cl:ensure-generic-function 'magnitude-val :lambda-list '(m))
(cl:defmethod magnitude-val ((m <RpvData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:magnitude-val is deprecated.  Use gps_msgs-msg:magnitude instead.")
  (magnitude m))

(cl:ensure-generic-function 'horizontal_magnitude-val :lambda-list '(m))
(cl:defmethod horizontal_magnitude-val ((m <RpvData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:horizontal_magnitude-val is deprecated.  Use gps_msgs-msg:horizontal_magnitude instead.")
  (horizontal_magnitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RpvData>) ostream)
  "Serializes a message object of type '<RpvData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xyz) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enu) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RpvData>) istream)
  "Deserializes a message object of type '<RpvData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xyz) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enu) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_magnitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RpvData>)))
  "Returns string type for a message object of type '<RpvData>"
  "gps_msgs/RpvData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RpvData)))
  "Returns string type for a message object of type 'RpvData"
  "gps_msgs/RpvData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RpvData>)))
  "Returns md5sum for a message object of type '<RpvData>"
  "072d47cf1d4834308410485efe25a2f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RpvData)))
  "Returns md5sum for a message object of type 'RpvData"
  "072d47cf1d4834308410485efe25a2f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RpvData>)))
  "Returns full string definition for message of type '<RpvData>"
  (cl:format cl:nil "XYZRpvData xyz~%ENURpvData enu~%float64 magnitude~%float64 horizontal_magnitude~%================================================================================~%MSG: gps_msgs/XYZRpvData~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gps_msgs/ENURpvData~%float64 e~%float64 n~%float64 u~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RpvData)))
  "Returns full string definition for message of type 'RpvData"
  (cl:format cl:nil "XYZRpvData xyz~%ENURpvData enu~%float64 magnitude~%float64 horizontal_magnitude~%================================================================================~%MSG: gps_msgs/XYZRpvData~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gps_msgs/ENURpvData~%float64 e~%float64 n~%float64 u~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RpvData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xyz))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enu))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RpvData>))
  "Converts a ROS message object to a list"
  (cl:list 'RpvData
    (cl:cons ':xyz (xyz msg))
    (cl:cons ':enu (enu msg))
    (cl:cons ':magnitude (magnitude msg))
    (cl:cons ':horizontal_magnitude (horizontal_magnitude msg))
))
