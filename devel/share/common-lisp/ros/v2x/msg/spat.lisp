; Auto-generated. Do not edit!


(cl:in-package v2x-msg)


;//! \htmlinclude spat.msg.html

(cl:defclass <spat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stationId
    :reader stationId
    :initarg :stationId
    :type cl:integer
    :initform 0)
   (SpeedLimit
    :reader SpeedLimit
    :initarg :SpeedLimit
    :type cl:float
    :initform 0.0)
   (dis2inter
    :reader dis2inter
    :initarg :dis2inter
    :type cl:float
    :initform 0.0)
   (Str_is_val
    :reader Str_is_val
    :initarg :Str_is_val
    :type cl:fixnum
    :initform 0)
   (StrSignalState
    :reader StrSignalState
    :initarg :StrSignalState
    :type cl:fixnum
    :initform 0)
   (StrlikelyEndTime
    :reader StrlikelyEndTime
    :initarg :StrlikelyEndTime
    :type cl:float
    :initform 0.0)
   (Left_is_val
    :reader Left_is_val
    :initarg :Left_is_val
    :type cl:fixnum
    :initform 0)
   (LeftSignalState
    :reader LeftSignalState
    :initarg :LeftSignalState
    :type cl:fixnum
    :initform 0)
   (LeftlikelyEndTime
    :reader LeftlikelyEndTime
    :initarg :LeftlikelyEndTime
    :type cl:float
    :initform 0.0)
   (Right_is_val
    :reader Right_is_val
    :initarg :Right_is_val
    :type cl:fixnum
    :initform 0)
   (RighSignalState
    :reader RighSignalState
    :initarg :RighSignalState
    :type cl:fixnum
    :initform 0)
   (RightlikelyEndTime
    :reader RightlikelyEndTime
    :initarg :RightlikelyEndTime
    :type cl:float
    :initform 0.0))
)

(cl:defclass spat (<spat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <spat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'spat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x-msg:<spat> is deprecated: use v2x-msg:spat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:header-val is deprecated.  Use v2x-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stationId-val :lambda-list '(m))
(cl:defmethod stationId-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:stationId-val is deprecated.  Use v2x-msg:stationId instead.")
  (stationId m))

(cl:ensure-generic-function 'SpeedLimit-val :lambda-list '(m))
(cl:defmethod SpeedLimit-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:SpeedLimit-val is deprecated.  Use v2x-msg:SpeedLimit instead.")
  (SpeedLimit m))

(cl:ensure-generic-function 'dis2inter-val :lambda-list '(m))
(cl:defmethod dis2inter-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:dis2inter-val is deprecated.  Use v2x-msg:dis2inter instead.")
  (dis2inter m))

(cl:ensure-generic-function 'Str_is_val-val :lambda-list '(m))
(cl:defmethod Str_is_val-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:Str_is_val-val is deprecated.  Use v2x-msg:Str_is_val instead.")
  (Str_is_val m))

(cl:ensure-generic-function 'StrSignalState-val :lambda-list '(m))
(cl:defmethod StrSignalState-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:StrSignalState-val is deprecated.  Use v2x-msg:StrSignalState instead.")
  (StrSignalState m))

(cl:ensure-generic-function 'StrlikelyEndTime-val :lambda-list '(m))
(cl:defmethod StrlikelyEndTime-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:StrlikelyEndTime-val is deprecated.  Use v2x-msg:StrlikelyEndTime instead.")
  (StrlikelyEndTime m))

(cl:ensure-generic-function 'Left_is_val-val :lambda-list '(m))
(cl:defmethod Left_is_val-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:Left_is_val-val is deprecated.  Use v2x-msg:Left_is_val instead.")
  (Left_is_val m))

(cl:ensure-generic-function 'LeftSignalState-val :lambda-list '(m))
(cl:defmethod LeftSignalState-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:LeftSignalState-val is deprecated.  Use v2x-msg:LeftSignalState instead.")
  (LeftSignalState m))

(cl:ensure-generic-function 'LeftlikelyEndTime-val :lambda-list '(m))
(cl:defmethod LeftlikelyEndTime-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:LeftlikelyEndTime-val is deprecated.  Use v2x-msg:LeftlikelyEndTime instead.")
  (LeftlikelyEndTime m))

(cl:ensure-generic-function 'Right_is_val-val :lambda-list '(m))
(cl:defmethod Right_is_val-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:Right_is_val-val is deprecated.  Use v2x-msg:Right_is_val instead.")
  (Right_is_val m))

(cl:ensure-generic-function 'RighSignalState-val :lambda-list '(m))
(cl:defmethod RighSignalState-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:RighSignalState-val is deprecated.  Use v2x-msg:RighSignalState instead.")
  (RighSignalState m))

(cl:ensure-generic-function 'RightlikelyEndTime-val :lambda-list '(m))
(cl:defmethod RightlikelyEndTime-val ((m <spat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x-msg:RightlikelyEndTime-val is deprecated.  Use v2x-msg:RightlikelyEndTime instead.")
  (RightlikelyEndTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <spat>) ostream)
  "Serializes a message object of type '<spat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stationId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stationId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stationId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stationId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SpeedLimit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dis2inter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Str_is_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StrSignalState)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'StrlikelyEndTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Left_is_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftSignalState)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'LeftlikelyEndTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Right_is_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RighSignalState)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'RightlikelyEndTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <spat>) istream)
  "Deserializes a message object of type '<spat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stationId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stationId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stationId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stationId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SpeedLimit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis2inter) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Str_is_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StrSignalState)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'StrlikelyEndTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Left_is_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftSignalState)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftlikelyEndTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Right_is_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RighSignalState)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightlikelyEndTime) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<spat>)))
  "Returns string type for a message object of type '<spat>"
  "v2x/spat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'spat)))
  "Returns string type for a message object of type 'spat"
  "v2x/spat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<spat>)))
  "Returns md5sum for a message object of type '<spat>"
  "0dc16dbf8ff4dfdc07642b27f892013d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'spat)))
  "Returns md5sum for a message object of type 'spat"
  "0dc16dbf8ff4dfdc07642b27f892013d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<spat>)))
  "Returns full string definition for message of type '<spat>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint32 stationId~%~%float64 SpeedLimit~%~%float64 dis2inter~%~%uint8 Str_is_val~%uint8 StrSignalState~%float64 StrlikelyEndTime~%~%uint8 Left_is_val~%uint8 LeftSignalState~%float64 LeftlikelyEndTime~%~%uint8 Right_is_val~%uint8 RighSignalState~%float64 RightlikelyEndTime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'spat)))
  "Returns full string definition for message of type 'spat"
  (cl:format cl:nil "std_msgs/Header header~%~%uint32 stationId~%~%float64 SpeedLimit~%~%float64 dis2inter~%~%uint8 Str_is_val~%uint8 StrSignalState~%float64 StrlikelyEndTime~%~%uint8 Left_is_val~%uint8 LeftSignalState~%float64 LeftlikelyEndTime~%~%uint8 Right_is_val~%uint8 RighSignalState~%float64 RightlikelyEndTime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <spat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
     1
     1
     8
     1
     1
     8
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <spat>))
  "Converts a ROS message object to a list"
  (cl:list 'spat
    (cl:cons ':header (header msg))
    (cl:cons ':stationId (stationId msg))
    (cl:cons ':SpeedLimit (SpeedLimit msg))
    (cl:cons ':dis2inter (dis2inter msg))
    (cl:cons ':Str_is_val (Str_is_val msg))
    (cl:cons ':StrSignalState (StrSignalState msg))
    (cl:cons ':StrlikelyEndTime (StrlikelyEndTime msg))
    (cl:cons ':Left_is_val (Left_is_val msg))
    (cl:cons ':LeftSignalState (LeftSignalState msg))
    (cl:cons ':LeftlikelyEndTime (LeftlikelyEndTime msg))
    (cl:cons ':Right_is_val (Right_is_val msg))
    (cl:cons ':RighSignalState (RighSignalState msg))
    (cl:cons ':RightlikelyEndTime (RightlikelyEndTime msg))
))
