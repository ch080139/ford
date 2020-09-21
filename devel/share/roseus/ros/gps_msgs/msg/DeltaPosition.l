;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::DeltaPosition)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'DeltaPosition (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::DELTAPOSITION")
  (make-package "GPS_MSGS::DELTAPOSITION"))

(in-package "ROS")
;;//! \htmlinclude DeltaPosition.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msgs::DeltaPosition
  :super ros::object
  :slots (_header _seq _stamp _frame_id _gps_id _gps_time0 _gps_time1 _dt _status _xyz _enu ))

(defmethod gps_msgs::DeltaPosition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:gps_id __gps_id) "")
    ((:gps_time0 __gps_time0) 0.0)
    ((:gps_time1 __gps_time1) 0.0)
    ((:dt __dt) 0.0)
    ((:status __status) 0)
    ((:xyz __xyz) (instance gps_msgs::XYZRpvData :init))
    ((:enu __enu) (instance gps_msgs::ENURpvData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _gps_id (string __gps_id))
   (setq _gps_time0 (float __gps_time0))
   (setq _gps_time1 (float __gps_time1))
   (setq _dt (float __dt))
   (setq _status (round __status))
   (setq _xyz __xyz)
   (setq _enu __enu)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:gps_id
   (&optional __gps_id)
   (if __gps_id (setq _gps_id __gps_id)) _gps_id)
  (:gps_time0
   (&optional __gps_time0)
   (if __gps_time0 (setq _gps_time0 __gps_time0)) _gps_time0)
  (:gps_time1
   (&optional __gps_time1)
   (if __gps_time1 (setq _gps_time1 __gps_time1)) _gps_time1)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:xyz
   (&rest __xyz)
   (if (keywordp (car __xyz))
       (send* _xyz __xyz)
     (progn
       (if __xyz (setq _xyz (car __xyz)))
       _xyz)))
  (:enu
   (&rest __enu)
   (if (keywordp (car __enu))
       (send* _enu __enu)
     (progn
       (if __enu (setq _enu (car __enu)))
       _enu)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _gps_id
    4 (length _gps_id)
    ;; float64 _gps_time0
    8
    ;; float64 _gps_time1
    8
    ;; float64 _dt
    8
    ;; uint8 _status
    1
    ;; gps_msgs/XYZRpvData _xyz
    (send _xyz :serialization-length)
    ;; gps_msgs/ENURpvData _enu
    (send _enu :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _gps_id
       (write-long (length _gps_id) s) (princ _gps_id s)
     ;; float64 _gps_time0
       (sys::poke _gps_time0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gps_time1
       (sys::poke _gps_time1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _status
       (write-byte _status s)
     ;; gps_msgs/XYZRpvData _xyz
       (send _xyz :serialize s)
     ;; gps_msgs/ENURpvData _enu
       (send _enu :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gps_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _gps_time0
     (setq _gps_time0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gps_time1
     (setq _gps_time1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dt
     (setq _dt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; gps_msgs/XYZRpvData _xyz
     (send _xyz :deserialize buf ptr-) (incf ptr- (send _xyz :serialization-length))
   ;; gps_msgs/ENURpvData _enu
     (send _enu :deserialize buf ptr-) (incf ptr- (send _enu :serialization-length))
   ;;
   self)
  )

(setf (get gps_msgs::DeltaPosition :md5sum-) "c73c8087b50ba1930a88250b581bfacb")
(setf (get gps_msgs::DeltaPosition :datatype-) "gps_msgs/DeltaPosition")
(setf (get gps_msgs::DeltaPosition :definition-)
      "# Message output by TDCP

Header header
    uint32 seq
    time stamp
    string frame_id

string  gps_id
float64 gps_time0
float64 gps_time1

float64 dt

## Status
##      0: Fault, standard positioning solution reported
##      1: All good
uint8 status

XYZRpvData xyz
ENURpvData enu

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
MSG: gps_msgs/XYZRpvData
float64 x
float64 y
float64 z
================================================================================
MSG: gps_msgs/ENURpvData
float64 e
float64 n
float64 u
")



(provide :gps_msgs/DeltaPosition "c73c8087b50ba1930a88250b581bfacb")


