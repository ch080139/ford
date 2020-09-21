; Auto-generated. Do not edit!


(cl:in-package msgs_record-msg)


;//! \htmlinclude glosa.msg.html

(cl:defclass <glosa> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (Utmx
    :reader Utmx
    :initarg :Utmx
    :type cl:float
    :initform 0.0)
   (Utmy
    :reader Utmy
    :initarg :Utmy
    :type cl:float
    :initform 0.0)
   (Yaw
    :reader Yaw
    :initarg :Yaw
    :type cl:float
    :initform 0.0)
   (EgoSpeed
    :reader EgoSpeed
    :initarg :EgoSpeed
    :type cl:float
    :initform 0.0)
   (stationId
    :reader stationId
    :initarg :stationId
    :type cl:fixnum
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
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass glosa (<glosa>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <glosa>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'glosa)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_record-msg:<glosa> is deprecated: use msgs_record-msg:glosa instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:header-val is deprecated.  Use msgs_record-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:latitude-val is deprecated.  Use msgs_record-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:longitude-val is deprecated.  Use msgs_record-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:height-val is deprecated.  Use msgs_record-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'Utmx-val :lambda-list '(m))
(cl:defmethod Utmx-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:Utmx-val is deprecated.  Use msgs_record-msg:Utmx instead.")
  (Utmx m))

(cl:ensure-generic-function 'Utmy-val :lambda-list '(m))
(cl:defmethod Utmy-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:Utmy-val is deprecated.  Use msgs_record-msg:Utmy instead.")
  (Utmy m))

(cl:ensure-generic-function 'Yaw-val :lambda-list '(m))
(cl:defmethod Yaw-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:Yaw-val is deprecated.  Use msgs_record-msg:Yaw instead.")
  (Yaw m))

(cl:ensure-generic-function 'EgoSpeed-val :lambda-list '(m))
(cl:defmethod EgoSpeed-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:EgoSpeed-val is deprecated.  Use msgs_record-msg:EgoSpeed instead.")
  (EgoSpeed m))

(cl:ensure-generic-function 'stationId-val :lambda-list '(m))
(cl:defmethod stationId-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:stationId-val is deprecated.  Use msgs_record-msg:stationId instead.")
  (stationId m))

(cl:ensure-generic-function 'SpeedLimit-val :lambda-list '(m))
(cl:defmethod SpeedLimit-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:SpeedLimit-val is deprecated.  Use msgs_record-msg:SpeedLimit instead.")
  (SpeedLimit m))

(cl:ensure-generic-function 'dis2inter-val :lambda-list '(m))
(cl:defmethod dis2inter-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:dis2inter-val is deprecated.  Use msgs_record-msg:dis2inter instead.")
  (dis2inter m))

(cl:ensure-generic-function 'Str_is_val-val :lambda-list '(m))
(cl:defmethod Str_is_val-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:Str_is_val-val is deprecated.  Use msgs_record-msg:Str_is_val instead.")
  (Str_is_val m))

(cl:ensure-generic-function 'StrSignalState-val :lambda-list '(m))
(cl:defmethod StrSignalState-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:StrSignalState-val is deprecated.  Use msgs_record-msg:StrSignalState instead.")
  (StrSignalState m))

(cl:ensure-generic-function 'StrlikelyEndTime-val :lambda-list '(m))
(cl:defmethod StrlikelyEndTime-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:StrlikelyEndTime-val is deprecated.  Use msgs_record-msg:StrlikelyEndTime instead.")
  (StrlikelyEndTime m))

(cl:ensure-generic-function 'Left_is_val-val :lambda-list '(m))
(cl:defmethod Left_is_val-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:Left_is_val-val is deprecated.  Use msgs_record-msg:Left_is_val instead.")
  (Left_is_val m))

(cl:ensure-generic-function 'LeftSignalState-val :lambda-list '(m))
(cl:defmethod LeftSignalState-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:LeftSignalState-val is deprecated.  Use msgs_record-msg:LeftSignalState instead.")
  (LeftSignalState m))

(cl:ensure-generic-function 'LeftlikelyEndTime-val :lambda-list '(m))
(cl:defmethod LeftlikelyEndTime-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:LeftlikelyEndTime-val is deprecated.  Use msgs_record-msg:LeftlikelyEndTime instead.")
  (LeftlikelyEndTime m))

(cl:ensure-generic-function 'Right_is_val-val :lambda-list '(m))
(cl:defmethod Right_is_val-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:Right_is_val-val is deprecated.  Use msgs_record-msg:Right_is_val instead.")
  (Right_is_val m))

(cl:ensure-generic-function 'RighSignalState-val :lambda-list '(m))
(cl:defmethod RighSignalState-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:RighSignalState-val is deprecated.  Use msgs_record-msg:RighSignalState instead.")
  (RighSignalState m))

(cl:ensure-generic-function 'RightlikelyEndTime-val :lambda-list '(m))
(cl:defmethod RightlikelyEndTime-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:RightlikelyEndTime-val is deprecated.  Use msgs_record-msg:RightlikelyEndTime instead.")
  (RightlikelyEndTime m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:azimuth-val is deprecated.  Use msgs_record-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:distance-val is deprecated.  Use msgs_record-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:speed-val is deprecated.  Use msgs_record-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:status-val is deprecated.  Use msgs_record-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <glosa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_record-msg:id-val is deprecated.  Use msgs_record-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<glosa>)))
    "Constants for message type '<glosa>"
  '((:RED . 3)
    (:GREEN . 5)
    (:YELLOW . 7)
    (:NEW_TARGET . 1)
    (:UPDATE_TARGET . 3)
    (:COASTED_TARGET . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'glosa)))
    "Constants for message type 'glosa"
  '((:RED . 3)
    (:GREEN . 5)
    (:YELLOW . 7)
    (:NEW_TARGET . 1)
    (:UPDATE_TARGET . 3)
    (:COASTED_TARGET . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <glosa>) ostream)
  "Serializes a message object of type '<glosa>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Utmx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Utmy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'EgoSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stationId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stationId)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <glosa>) istream)
  "Deserializes a message object of type '<glosa>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Utmx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Utmy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EgoSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stationId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stationId)) (cl:read-byte istream))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<glosa>)))
  "Returns string type for a message object of type '<glosa>"
  "msgs_record/glosa")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'glosa)))
  "Returns string type for a message object of type 'glosa"
  "msgs_record/glosa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<glosa>)))
  "Returns md5sum for a message object of type '<glosa>"
  "e8951b090850cccee9e623b752294b0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'glosa)))
  "Returns md5sum for a message object of type 'glosa"
  "e8951b090850cccee9e623b752294b0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<glosa>)))
  "Returns full string definition for message of type '<glosa>"
  (cl:format cl:nil "uint8 RED = 3~%uint8 GREEN = 5~%uint8 YELLOW = 7~%uint8 NEW_TARGET = 1~%uint8 UPDATE_TARGET = 3~%uint8 COASTED_TARGET = 4~%~%std_msgs/Header header~%~%float64 latitude~%float64 longitude~%float64 height~%float64 Utmx~%float64 Utmy~%float64 Yaw~%float64 EgoSpeed~%~%uint16 stationId~%float64 SpeedLimit~%float64 dis2inter~%~%uint8 Str_is_val~%uint8 StrSignalState~%float64 StrlikelyEndTime~%~%uint8 Left_is_val~%uint8 LeftSignalState~%float64 LeftlikelyEndTime~%~%uint8 Right_is_val~%uint8 RighSignalState~%float64 RightlikelyEndTime~%~%float64 azimuth~%float64 distance~%float64 speed~%uint8 status~%uint8 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'glosa)))
  "Returns full string definition for message of type 'glosa"
  (cl:format cl:nil "uint8 RED = 3~%uint8 GREEN = 5~%uint8 YELLOW = 7~%uint8 NEW_TARGET = 1~%uint8 UPDATE_TARGET = 3~%uint8 COASTED_TARGET = 4~%~%std_msgs/Header header~%~%float64 latitude~%float64 longitude~%float64 height~%float64 Utmx~%float64 Utmy~%float64 Yaw~%float64 EgoSpeed~%~%uint16 stationId~%float64 SpeedLimit~%float64 dis2inter~%~%uint8 Str_is_val~%uint8 StrSignalState~%float64 StrlikelyEndTime~%~%uint8 Left_is_val~%uint8 LeftSignalState~%float64 LeftlikelyEndTime~%~%uint8 Right_is_val~%uint8 RighSignalState~%float64 RightlikelyEndTime~%~%float64 azimuth~%float64 distance~%float64 speed~%uint8 status~%uint8 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <glosa>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     2
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
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <glosa>))
  "Converts a ROS message object to a list"
  (cl:list 'glosa
    (cl:cons ':header (header msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':height (height msg))
    (cl:cons ':Utmx (Utmx msg))
    (cl:cons ':Utmy (Utmy msg))
    (cl:cons ':Yaw (Yaw msg))
    (cl:cons ':EgoSpeed (EgoSpeed msg))
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
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':status (status msg))
    (cl:cons ':id (id msg))
))
