; Auto-generated. Do not edit!


(cl:in-package gps_msgs-msg)


;//! \htmlinclude Carrier.msg.html

(cl:defclass <Carrier> (roslisp-msg-protocol:ros-message)
  ((doppler
    :reader doppler
    :initarg :doppler
    :type (cl:vector cl:float)
   :initform (cl:make-array 33 :element-type 'cl:float :initial-element 0.0))
   (noise
    :reader noise
    :initarg :noise
    :type (cl:vector cl:float)
   :initform (cl:make-array 33 :element-type 'cl:float :initial-element 0.0))
   (phase
    :reader phase
    :initarg :phase
    :type (cl:vector cl:float)
   :initform (cl:make-array 33 :element-type 'cl:float :initial-element 0.0))
   (phase_std
    :reader phase_std
    :initarg :phase_std
    :type (cl:vector cl:float)
   :initform (cl:make-array 33 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Carrier (<Carrier>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Carrier>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Carrier)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msgs-msg:<Carrier> is deprecated: use gps_msgs-msg:Carrier instead.")))

(cl:ensure-generic-function 'doppler-val :lambda-list '(m))
(cl:defmethod doppler-val ((m <Carrier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:doppler-val is deprecated.  Use gps_msgs-msg:doppler instead.")
  (doppler m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <Carrier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:noise-val is deprecated.  Use gps_msgs-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <Carrier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:phase-val is deprecated.  Use gps_msgs-msg:phase instead.")
  (phase m))

(cl:ensure-generic-function 'phase_std-val :lambda-list '(m))
(cl:defmethod phase_std-val ((m <Carrier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msgs-msg:phase_std-val is deprecated.  Use gps_msgs-msg:phase_std instead.")
  (phase_std m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Carrier>) ostream)
  "Serializes a message object of type '<Carrier>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'doppler))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'noise))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'phase))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'phase_std))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Carrier>) istream)
  "Deserializes a message object of type '<Carrier>"
  (cl:setf (cl:slot-value msg 'doppler) (cl:make-array 33))
  (cl:let ((vals (cl:slot-value msg 'doppler)))
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
  (cl:setf (cl:slot-value msg 'noise) (cl:make-array 33))
  (cl:let ((vals (cl:slot-value msg 'noise)))
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
  (cl:setf (cl:slot-value msg 'phase) (cl:make-array 33))
  (cl:let ((vals (cl:slot-value msg 'phase)))
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
  (cl:setf (cl:slot-value msg 'phase_std) (cl:make-array 33))
  (cl:let ((vals (cl:slot-value msg 'phase_std)))
    (cl:dotimes (i 33)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Carrier>)))
  "Returns string type for a message object of type '<Carrier>"
  "gps_msgs/Carrier")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Carrier)))
  "Returns string type for a message object of type 'Carrier"
  "gps_msgs/Carrier")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Carrier>)))
  "Returns md5sum for a message object of type '<Carrier>"
  "5eb5fb9988376e04bce4e625a341bd27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Carrier)))
  "Returns md5sum for a message object of type 'Carrier"
  "5eb5fb9988376e04bce4e625a341bd27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Carrier>)))
  "Returns full string definition for message of type '<Carrier>"
  (cl:format cl:nil "## Useful comments go here~%~%float64[33] doppler~%~%## signal to noise ratio ,Cn0~%float64[33] noise~%~%## equivalent to the negative of the accumulated doppler~%float64[33] phase~%float32[33] phase_std~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Carrier)))
  "Returns full string definition for message of type 'Carrier"
  (cl:format cl:nil "## Useful comments go here~%~%float64[33] doppler~%~%## signal to noise ratio ,Cn0~%float64[33] noise~%~%## equivalent to the negative of the accumulated doppler~%float64[33] phase~%float32[33] phase_std~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Carrier>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'doppler) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'noise) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'phase) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'phase_std) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Carrier>))
  "Converts a ROS message object to a list"
  (cl:list 'Carrier
    (cl:cons ':doppler (doppler msg))
    (cl:cons ':noise (noise msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':phase_std (phase_std msg))
))
