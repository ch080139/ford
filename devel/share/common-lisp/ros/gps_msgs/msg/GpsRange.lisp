; Auto-generated. Do not edit!


(cl:in-package gps_msgs-msg)


;//! \htmlinclude GpsRange.msg.html

(cl:defclass <GpsRange> (roslisp-msg-protocol:ros-message)
  ((obs
    :reader obs
    :initarg :obs
    :type cl:fixnum
    :initform 0)
   (prn
    :reader prn
    :initarg :prn
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 33 :element-type 'cl:fixnum :initial-element 0))
   (psr
    :reader psr
    :initarg :psr
    :type (cl:vector cl:float)
   :initform (cl:make-array 33 :element-type 'cl:float :initial-element 0.0))
   (psr_std
    :reader psr_std
    :initarg :psr_std
    :type (cl:vector cl:float)
   :initform (cl:make-array 33 :element-type 'cl:float :initial-element 0.0))
   (carrier
    :reader carrier
    :initarg :carrier
    :type gps_msgs-msg:Carrier
    :initform (cl:make-instance 'gps_msgs-msg:Carrier)))
)

(cl:defclass GpsRange (<GpsRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msgs-msg:<GpsRange> is deprecated: use gps_msgs-msg:GpsRange instead.")))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <GpsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:obs-val is deprecated.  Use gps_msgs-msg:obs instead.")
  (obs m))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <GpsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:prn-val is deprecated.  Use gps_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'psr-val :lambda-list '(m))
(cl:defmethod psr-val ((m <GpsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:psr-val is deprecated.  Use gps_msgs-msg:psr instead.")
  (psr m))

(cl:ensure-generic-function 'psr_std-val :lambda-list '(m))
(cl:defmethod psr_std-val ((m <GpsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:psr_std-val is deprecated.  Use gps_msgs-msg:psr_std instead.")
  (psr_std m))

(cl:ensure-generic-function 'carrier-val :lambda-list '(m))
(cl:defmethod carrier-val ((m <GpsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:carrier-val is deprecated.  Use gps_msgs-msg:carrier instead.")
  (carrier m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsRange>) ostream)
  "Serializes a message object of type '<GpsRange>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obs)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'prn))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'psr))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'psr_std))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'carrier) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsRange>) istream)
  "Deserializes a message object of type '<GpsRange>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obs)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prn) (cl:make-array 33))
  (cl:let ((vals (cl:slot-value msg 'prn)))
    (cl:dotimes (i 33)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'psr) (cl:make-array 33))
  (cl:let ((vals (cl:slot-value msg 'psr)))
    (cl:dotimes (i 33)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'psr_std) (cl:make-array 33))
  (cl:let ((vals (cl:slot-value msg 'psr_std)))
    (cl:dotimes (i 33)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'carrier) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsRange>)))
  "Returns string type for a message object of type '<GpsRange>"
  "gps_msgs/GpsRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsRange)))
  "Returns string type for a message object of type 'GpsRange"
  "gps_msgs/GpsRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsRange>)))
  "Returns md5sum for a message object of type '<GpsRange>"
  "e597bac5463f4a71cf3a7e9ae61b3675")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsRange)))
  "Returns md5sum for a message object of type 'GpsRange"
  "e597bac5463f4a71cf3a7e9ae61b3675")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsRange>)))
  "Returns full string definition for message of type '<GpsRange>"
  (cl:format cl:nil "## Useful general comment goes here~%## Each receiver will be able to track differing numbers of satellites, so the~%## fields are each of length 32, the number of SV's in the GPS constellation~%~%# number of observations --> how far to iterate through the arrays~%uint8 obs~%~%## sv number for each satellite~%uint8[33] prn~%~%float64[33] psr~%float32[33] psr_std~%~%Carrier carrier~%================================================================================~%MSG: gps_msgs/Carrier~%## Useful comments go here~%~%float64[33] doppler~%~%## signal to noise ratio ,Cn0~%float64[33] noise~%~%## equivalent to the negative of the accumulated doppler~%float64[33] phase~%float32[33] phase_std~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsRange)))
  "Returns full string definition for message of type 'GpsRange"
  (cl:format cl:nil "## Useful general comment goes here~%## Each receiver will be able to track differing numbers of satellites, so the~%## fields are each of length 32, the number of SV's in the GPS constellation~%~%# number of observations --> how far to iterate through the arrays~%uint8 obs~%~%## sv number for each satellite~%uint8[33] prn~%~%float64[33] psr~%float32[33] psr_std~%~%Carrier carrier~%================================================================================~%MSG: gps_msgs/Carrier~%## Useful comments go here~%~%float64[33] doppler~%~%## signal to noise ratio ,Cn0~%float64[33] noise~%~%## equivalent to the negative of the accumulated doppler~%float64[33] phase~%float32[33] phase_std~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsRange>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prn) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'psr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'psr_std) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'carrier))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsRange>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsRange
    (cl:cons ':obs (obs msg))
    (cl:cons ':prn (prn msg))
    (cl:cons ':psr (psr msg))
    (cl:cons ':psr_std (psr_std msg))
    (cl:cons ':carrier (carrier msg))
))
