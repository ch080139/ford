; Auto-generated. Do not edit!


(cl:in-package gps_msgs-msg)


;//! \htmlinclude Rpv.msg.html

(cl:defclass <Rpv> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (gps_id_from
    :reader gps_id_from
    :initarg :gps_id_from
    :type cl:string
    :initform "")
   (gps_id_to
    :reader gps_id_to
    :initarg :gps_id_to
    :type cl:string
    :initform "")
   (gps_time
    :reader gps_time
    :initarg :gps_time
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (ratio
    :reader ratio
    :initarg :ratio
    :type cl:float
    :initform 0.0)
   (input_obs
    :reader input_obs
    :initarg :input_obs
    :type cl:integer
    :initform 0)
   (non_fault_obs
    :reader non_fault_obs
    :initarg :non_fault_obs
    :type cl:integer
    :initform 0)
   (amb_obs
    :reader amb_obs
    :initarg :amb_obs
    :type cl:integer
    :initform 0)
   (sp
    :reader sp
    :initarg :sp
    :type gps_msgs-msg:RpvData
    :initform (cl:make-instance 'gps_msgs-msg:RpvData))
   (lp
    :reader lp
    :initarg :lp
    :type gps_msgs-msg:RpvData
    :initform (cl:make-instance 'gps_msgs-msg:RpvData))
   (hp
    :reader hp
    :initarg :hp
    :type gps_msgs-msg:RpvData
    :initform (cl:make-instance 'gps_msgs-msg:RpvData))
   (base_prn_float
    :reader base_prn_float
    :initarg :base_prn_float
    :type cl:integer
    :initform 0)
   (base_prn_fixed
    :reader base_prn_fixed
    :initarg :base_prn_fixed
    :type cl:integer
    :initform 0))
)

(cl:defclass Rpv (<Rpv>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rpv>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rpv)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msgs-msg:<Rpv> is deprecated: use gps_msgs-msg:Rpv instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:header-val is deprecated.  Use gps_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:seq-val is deprecated.  Use gps_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:stamp-val is deprecated.  Use gps_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:frame_id-val is deprecated.  Use gps_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'gps_id_from-val :lambda-list '(m))
(cl:defmethod gps_id_from-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:gps_id_from-val is deprecated.  Use gps_msgs-msg:gps_id_from instead.")
  (gps_id_from m))

(cl:ensure-generic-function 'gps_id_to-val :lambda-list '(m))
(cl:defmethod gps_id_to-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:gps_id_to-val is deprecated.  Use gps_msgs-msg:gps_id_to instead.")
  (gps_id_to m))

(cl:ensure-generic-function 'gps_time-val :lambda-list '(m))
(cl:defmethod gps_time-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:gps_time-val is deprecated.  Use gps_msgs-msg:gps_time instead.")
  (gps_time m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:status-val is deprecated.  Use gps_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'ratio-val :lambda-list '(m))
(cl:defmethod ratio-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:ratio-val is deprecated.  Use gps_msgs-msg:ratio instead.")
  (ratio m))

(cl:ensure-generic-function 'input_obs-val :lambda-list '(m))
(cl:defmethod input_obs-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:input_obs-val is deprecated.  Use gps_msgs-msg:input_obs instead.")
  (input_obs m))

(cl:ensure-generic-function 'non_fault_obs-val :lambda-list '(m))
(cl:defmethod non_fault_obs-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:non_fault_obs-val is deprecated.  Use gps_msgs-msg:non_fault_obs instead.")
  (non_fault_obs m))

(cl:ensure-generic-function 'amb_obs-val :lambda-list '(m))
(cl:defmethod amb_obs-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:amb_obs-val is deprecated.  Use gps_msgs-msg:amb_obs instead.")
  (amb_obs m))

(cl:ensure-generic-function 'sp-val :lambda-list '(m))
(cl:defmethod sp-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:sp-val is deprecated.  Use gps_msgs-msg:sp instead.")
  (sp m))

(cl:ensure-generic-function 'lp-val :lambda-list '(m))
(cl:defmethod lp-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:lp-val is deprecated.  Use gps_msgs-msg:lp instead.")
  (lp m))

(cl:ensure-generic-function 'hp-val :lambda-list '(m))
(cl:defmethod hp-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:hp-val is deprecated.  Use gps_msgs-msg:hp instead.")
  (hp m))

(cl:ensure-generic-function 'base_prn_float-val :lambda-list '(m))
(cl:defmethod base_prn_float-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:base_prn_float-val is deprecated.  Use gps_msgs-msg:base_prn_float instead.")
  (base_prn_float m))

(cl:ensure-generic-function 'base_prn_fixed-val :lambda-list '(m))
(cl:defmethod base_prn_fixed-val ((m <Rpv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:base_prn_fixed-val is deprecated.  Use gps_msgs-msg:base_prn_fixed instead.")
  (base_prn_fixed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rpv>) ostream)
  "Serializes a message object of type '<Rpv>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps_id_from))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps_id_from))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps_id_to))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps_id_to))
  (cl:let* ((signed (cl:slot-value msg 'gps_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'input_obs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'non_fault_obs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'amb_obs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hp) ostream)
  (cl:let* ((signed (cl:slot-value msg 'base_prn_float)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'base_prn_fixed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rpv>) istream)
  "Deserializes a message object of type '<Rpv>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_id_from) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps_id_from) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_id_to) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps_id_to) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_obs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'non_fault_obs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'amb_obs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hp) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_prn_float) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_prn_fixed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rpv>)))
  "Returns string type for a message object of type '<Rpv>"
  "gps_msgs/Rpv")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rpv)))
  "Returns string type for a message object of type 'Rpv"
  "gps_msgs/Rpv")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rpv>)))
  "Returns md5sum for a message object of type '<Rpv>"
  "d0dd395e0a43da31b99eaff5928463a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rpv)))
  "Returns md5sum for a message object of type 'Rpv"
  "d0dd395e0a43da31b99eaff5928463a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rpv>)))
  "Returns full string definition for message of type '<Rpv>"
  (cl:format cl:nil "## This is the advanced output message for DRTK. It is used primarily for ~%## debugging and contains much information that is of no use to the end user.~%Header header~%    uint32 seq~%    time stamp~%    string frame_id~%~%# Assuming that the gps~%string gps_id_from~%string gps_id_to~%~%# GPS Time of output (ms into week)~%int64 gps_time~%~%int8 status # Output status~%            #  2 : High precision solution available~%            #  1 : Low precision solution only (high precision is zero)~%            #  0 : Insufficient observations~%            # -1 : Time stamps of input data do not match~%            # -2 : Already computed solution for time stamp on input data~%            # -3 : No L1 range measurements on receiver 1~%            # -4 : No L2 range measurements on receiver 1~%            # -5 : No L1 range measurements on receiver 2~%            # -6 : No L2 range measurements on receiver 2~%~%# ratio resultant from the LAMBDA method~%float64 ratio~%~%# number of input observations common across all with no cycle slip and which ~%# are continuous between timesteps~%int32 input_obs~%~%# numb of ~%int32 non_fault_obs~%# Number of fixed ambiguiity observations~%int32 amb_obs~%~%~%# Standard Positioning ~%RpvData sp~%~%# Low Precision~%RpvData lp~%~%# High Precision~%RpvData hp~%~%## base prn used for double differencing - floating ambiguities~%int32 base_prn_float~%~%## base prn used for double differencing - fixed integer ambiguities~%int32 base_prn_fixed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gps_msgs/RpvData~%XYZRpvData xyz~%ENURpvData enu~%float64 magnitude~%float64 horizontal_magnitude~%================================================================================~%MSG: gps_msgs/XYZRpvData~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gps_msgs/ENURpvData~%float64 e~%float64 n~%float64 u~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rpv)))
  "Returns full string definition for message of type 'Rpv"
  (cl:format cl:nil "## This is the advanced output message for DRTK. It is used primarily for ~%## debugging and contains much information that is of no use to the end user.~%Header header~%    uint32 seq~%    time stamp~%    string frame_id~%~%# Assuming that the gps~%string gps_id_from~%string gps_id_to~%~%# GPS Time of output (ms into week)~%int64 gps_time~%~%int8 status # Output status~%            #  2 : High precision solution available~%            #  1 : Low precision solution only (high precision is zero)~%            #  0 : Insufficient observations~%            # -1 : Time stamps of input data do not match~%            # -2 : Already computed solution for time stamp on input data~%            # -3 : No L1 range measurements on receiver 1~%            # -4 : No L2 range measurements on receiver 1~%            # -5 : No L1 range measurements on receiver 2~%            # -6 : No L2 range measurements on receiver 2~%~%# ratio resultant from the LAMBDA method~%float64 ratio~%~%# number of input observations common across all with no cycle slip and which ~%# are continuous between timesteps~%int32 input_obs~%~%# numb of ~%int32 non_fault_obs~%# Number of fixed ambiguiity observations~%int32 amb_obs~%~%~%# Standard Positioning ~%RpvData sp~%~%# Low Precision~%RpvData lp~%~%# High Precision~%RpvData hp~%~%## base prn used for double differencing - floating ambiguities~%int32 base_prn_float~%~%## base prn used for double differencing - fixed integer ambiguities~%int32 base_prn_fixed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gps_msgs/RpvData~%XYZRpvData xyz~%ENURpvData enu~%float64 magnitude~%float64 horizontal_magnitude~%================================================================================~%MSG: gps_msgs/XYZRpvData~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: gps_msgs/ENURpvData~%float64 e~%float64 n~%float64 u~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rpv>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:length (cl:slot-value msg 'gps_id_from))
     4 (cl:length (cl:slot-value msg 'gps_id_to))
     8
     1
     8
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hp))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rpv>))
  "Converts a ROS message object to a list"
  (cl:list 'Rpv
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':gps_id_from (gps_id_from msg))
    (cl:cons ':gps_id_to (gps_id_to msg))
    (cl:cons ':gps_time (gps_time msg))
    (cl:cons ':status (status msg))
    (cl:cons ':ratio (ratio msg))
    (cl:cons ':input_obs (input_obs msg))
    (cl:cons ':non_fault_obs (non_fault_obs msg))
    (cl:cons ':amb_obs (amb_obs msg))
    (cl:cons ':sp (sp msg))
    (cl:cons ':lp (lp msg))
    (cl:cons ':hp (hp msg))
    (cl:cons ':base_prn_float (base_prn_float msg))
    (cl:cons ':base_prn_fixed (base_prn_fixed msg))
))
