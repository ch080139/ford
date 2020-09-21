; Auto-generated. Do not edit!


(cl:in-package gps_msgs-msg)


;//! \htmlinclude Satellite.msg.html

(cl:defclass <Satellite> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (system
    :reader system
    :initarg :system
    :type cl:fixnum
    :initform 0)
   (flags1
    :reader flags1
    :initarg :flags1
    :type cl:fixnum
    :initform 0)
   (flags2
    :reader flags2
    :initarg :flags2
    :type cl:fixnum
    :initform 0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:fixnum
    :initform 0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:fixnum
    :initform 0)
   (frequency
    :reader frequency
    :initarg :frequency
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Satellite (<Satellite>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Satellite>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Satellite)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msgs-msg:<Satellite> is deprecated: use gps_msgs-msg:Satellite instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Satellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:num-val is deprecated.  Use gps_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <Satellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:system-val is deprecated.  Use gps_msgs-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'flags1-val :lambda-list '(m))
(cl:defmethod flags1-val ((m <Satellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:flags1-val is deprecated.  Use gps_msgs-msg:flags1 instead.")
  (flags1 m))

(cl:ensure-generic-function 'flags2-val :lambda-list '(m))
(cl:defmethod flags2-val ((m <Satellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:flags2-val is deprecated.  Use gps_msgs-msg:flags2 instead.")
  (flags2 m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <Satellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:elevation-val is deprecated.  Use gps_msgs-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <Satellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:azimuth-val is deprecated.  Use gps_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <Satellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:frequency-val is deprecated.  Use gps_msgs-msg:frequency instead.")
  (frequency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Satellite>) ostream)
  "Serializes a message object of type '<Satellite>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'elevation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'azimuth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'azimuth)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'frequency))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Satellite>) istream)
  "Deserializes a message object of type '<Satellite>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'elevation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'azimuth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'azimuth)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frequency) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'frequency)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Satellite>)))
  "Returns string type for a message object of type '<Satellite>"
  "gps_msgs/Satellite")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Satellite)))
  "Returns string type for a message object of type 'Satellite"
  "gps_msgs/Satellite")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Satellite>)))
  "Returns md5sum for a message object of type '<Satellite>"
  "e43ed4aebf909b95af15ba72c23c4a2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Satellite)))
  "Returns md5sum for a message object of type 'Satellite"
  "e43ed4aebf909b95af15ba72c23c4a2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Satellite>)))
  "Returns full string definition for message of type '<Satellite>"
  (cl:format cl:nil "~%uint8 num~%uint8 system~%uint8 flags1~%uint8 flags2~%uint8 elevation~%uint16 azimuth~%uint8[3] frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Satellite)))
  "Returns full string definition for message of type 'Satellite"
  (cl:format cl:nil "~%uint8 num~%uint8 system~%uint8 flags1~%uint8 flags2~%uint8 elevation~%uint16 azimuth~%uint8[3] frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Satellite>))
  (cl:+ 0
     1
     1
     1
     1
     1
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'frequency) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Satellite>))
  "Converts a ROS message object to a list"
  (cl:list 'Satellite
    (cl:cons ':num (num msg))
    (cl:cons ':system (system msg))
    (cl:cons ':flags1 (flags1 msg))
    (cl:cons ':flags2 (flags2 msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':frequency (frequency msg))
))
