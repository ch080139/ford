; Auto-generated. Do not edit!


(cl:in-package gps_msgs-msg)


;//! \htmlinclude Satellites.msg.html

(cl:defclass <Satellites> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (satellites
    :reader satellites
    :initarg :satellites
    :type (cl:vector gps_msgs-msg:Satellite)
   :initform (cl:make-array 0 :element-type 'gps_msgs-msg:Satellite :initial-element (cl:make-instance 'gps_msgs-msg:Satellite))))
)

(cl:defclass Satellites (<Satellites>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Satellites>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Satellites)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msgs-msg:<Satellites> is deprecated: use gps_msgs-msg:Satellites instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Satellites>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:header-val is deprecated.  Use gps_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <Satellites>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:count-val is deprecated.  Use gps_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'satellites-val :lambda-list '(m))
(cl:defmethod satellites-val ((m <Satellites>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:satellites-val is deprecated.  Use gps_msgs-msg:satellites instead.")
  (satellites m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Satellites>) ostream)
  "Serializes a message object of type '<Satellites>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satellites))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'satellites))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Satellites>) istream)
  "Deserializes a message object of type '<Satellites>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satellites) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satellites)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gps_msgs-msg:Satellite))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Satellites>)))
  "Returns string type for a message object of type '<Satellites>"
  "gps_msgs/Satellites")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Satellites)))
  "Returns string type for a message object of type 'Satellites"
  "gps_msgs/Satellites")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Satellites>)))
  "Returns md5sum for a message object of type '<Satellites>"
  "eda6446560ed799671452292ba249e75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Satellites)))
  "Returns md5sum for a message object of type 'Satellites"
  "eda6446560ed799671452292ba249e75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Satellites>)))
  "Returns full string definition for message of type '<Satellites>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 count~%gps_msgs/Satellite[] satellites~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gps_msgs/Satellite~%~%uint8 num~%uint8 system~%uint8 flags1~%uint8 flags2~%uint8 elevation~%uint16 azimuth~%uint8[3] frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Satellites)))
  "Returns full string definition for message of type 'Satellites"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 count~%gps_msgs/Satellite[] satellites~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gps_msgs/Satellite~%~%uint8 num~%uint8 system~%uint8 flags1~%uint8 flags2~%uint8 elevation~%uint16 azimuth~%uint8[3] frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Satellites>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satellites) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Satellites>))
  "Converts a ROS message object to a list"
  (cl:list 'Satellites
    (cl:cons ':header (header msg))
    (cl:cons ':count (count msg))
    (cl:cons ':satellites (satellites msg))
))
