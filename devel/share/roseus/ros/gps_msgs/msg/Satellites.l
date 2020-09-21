;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::Satellites)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'Satellites (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::SATELLITES")
  (make-package "GPS_MSGS::SATELLITES"))

(in-package "ROS")
;;//! \htmlinclude Satellites.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msgs::Satellites
  :super ros::object
  :slots (_header _count _satellites ))

(defmethod gps_msgs::Satellites
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:count __count) 0)
    ((:satellites __satellites) (let (r) (dotimes (i 0) (push (instance gps_msgs::Satellite :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _count (round __count))
   (setq _satellites __satellites)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:satellites
   (&rest __satellites)
   (if (keywordp (car __satellites))
       (send* _satellites __satellites)
     (progn
       (if __satellites (setq _satellites (car __satellites)))
       _satellites)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _count
    1
    ;; gps_msgs/Satellite[] _satellites
    (apply #'+ (send-all _satellites :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _count
       (write-byte _count s)
     ;; gps_msgs/Satellite[] _satellites
     (write-long (length _satellites) s)
     (dolist (elem _satellites)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; gps_msgs/Satellite[] _satellites
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satellites (let (r) (dotimes (i n) (push (instance gps_msgs::Satellite :init) r)) r))
     (dolist (elem- _satellites)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gps_msgs::Satellites :md5sum-) "eda6446560ed799671452292ba249e75")
(setf (get gps_msgs::Satellites :datatype-) "gps_msgs/Satellites")
(setf (get gps_msgs::Satellites :definition-)
      "std_msgs/Header header

uint8 count
gps_msgs/Satellite[] satellites


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: gps_msgs/Satellite

uint8 num
uint8 system
uint8 flags1
uint8 flags2
uint8 elevation
uint16 azimuth
uint8[3] frequency

")



(provide :gps_msgs/Satellites "eda6446560ed799671452292ba249e75")


