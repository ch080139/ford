; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude FrameArray.msg.html

(cl:defclass <FrameArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frames
    :reader frames
    :initarg :frames
    :type (cl:vector can_msgs-msg:Frame)
   :initform (cl:make-array 0 :element-type 'can_msgs-msg:Frame :initial-element (cl:make-instance 'can_msgs-msg:Frame))))
)

(cl:defclass FrameArray (<FrameArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrameArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrameArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<FrameArray> is deprecated: use can_msgs-msg:FrameArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FrameArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frames-val :lambda-list '(m))
(cl:defmethod frames-val ((m <FrameArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:frames-val is deprecated.  Use can_msgs-msg:frames instead.")
  (frames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrameArray>) ostream)
  "Serializes a message object of type '<FrameArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frames))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrameArray>) istream)
  "Deserializes a message object of type '<FrameArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'can_msgs-msg:Frame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrameArray>)))
  "Returns string type for a message object of type '<FrameArray>"
  "can_msgs/FrameArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrameArray)))
  "Returns string type for a message object of type 'FrameArray"
  "can_msgs/FrameArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrameArray>)))
  "Returns md5sum for a message object of type '<FrameArray>"
  "5aef824141638652a7465b2960700190")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrameArray)))
  "Returns md5sum for a message object of type 'FrameArray"
  "5aef824141638652a7465b2960700190")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrameArray>)))
  "Returns full string definition for message of type '<FrameArray>"
  (cl:format cl:nil "Header header~%~%Frame[] frames~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: can_msgs/Frame~%uint32 id~%bool is_rtr~%bool is_extended~%bool is_error~%uint8 len~%uint8[8] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrameArray)))
  "Returns full string definition for message of type 'FrameArray"
  (cl:format cl:nil "Header header~%~%Frame[] frames~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: can_msgs/Frame~%uint32 id~%bool is_rtr~%bool is_extended~%bool is_error~%uint8 len~%uint8[8] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrameArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrameArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FrameArray
    (cl:cons ':header (header msg))
    (cl:cons ':frames (frames msg))
))
