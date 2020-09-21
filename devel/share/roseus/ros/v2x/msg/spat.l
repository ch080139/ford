;; Auto-generated. Do not edit!


(when (boundp 'v2x::spat)
  (if (not (find-package "V2X"))
    (make-package "V2X"))
  (shadow 'spat (find-package "V2X")))
(unless (find-package "V2X::SPAT")
  (make-package "V2X::SPAT"))

(in-package "ROS")
;;//! \htmlinclude spat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass v2x::spat
  :super ros::object
  :slots (_header _stationId _SpeedLimit _dis2inter _Str_is_val _StrSignalState _StrlikelyEndTime _Left_is_val _LeftSignalState _LeftlikelyEndTime _Right_is_val _RighSignalState _RightlikelyEndTime ))

(defmethod v2x::spat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stationId __stationId) 0)
    ((:SpeedLimit __SpeedLimit) 0.0)
    ((:dis2inter __dis2inter) 0.0)
    ((:Str_is_val __Str_is_val) 0)
    ((:StrSignalState __StrSignalState) 0)
    ((:StrlikelyEndTime __StrlikelyEndTime) 0.0)
    ((:Left_is_val __Left_is_val) 0)
    ((:LeftSignalState __LeftSignalState) 0)
    ((:LeftlikelyEndTime __LeftlikelyEndTime) 0.0)
    ((:Right_is_val __Right_is_val) 0)
    ((:RighSignalState __RighSignalState) 0)
    ((:RightlikelyEndTime __RightlikelyEndTime) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _stationId (round __stationId))
   (setq _SpeedLimit (float __SpeedLimit))
   (setq _dis2inter (float __dis2inter))
   (setq _Str_is_val (round __Str_is_val))
   (setq _StrSignalState (round __StrSignalState))
   (setq _StrlikelyEndTime (float __StrlikelyEndTime))
   (setq _Left_is_val (round __Left_is_val))
   (setq _LeftSignalState (round __LeftSignalState))
   (setq _LeftlikelyEndTime (float __LeftlikelyEndTime))
   (setq _Right_is_val (round __Right_is_val))
   (setq _RighSignalState (round __RighSignalState))
   (setq _RightlikelyEndTime (float __RightlikelyEndTime))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stationId
   (&optional __stationId)
   (if __stationId (setq _stationId __stationId)) _stationId)
  (:SpeedLimit
   (&optional __SpeedLimit)
   (if __SpeedLimit (setq _SpeedLimit __SpeedLimit)) _SpeedLimit)
  (:dis2inter
   (&optional __dis2inter)
   (if __dis2inter (setq _dis2inter __dis2inter)) _dis2inter)
  (:Str_is_val
   (&optional __Str_is_val)
   (if __Str_is_val (setq _Str_is_val __Str_is_val)) _Str_is_val)
  (:StrSignalState
   (&optional __StrSignalState)
   (if __StrSignalState (setq _StrSignalState __StrSignalState)) _StrSignalState)
  (:StrlikelyEndTime
   (&optional __StrlikelyEndTime)
   (if __StrlikelyEndTime (setq _StrlikelyEndTime __StrlikelyEndTime)) _StrlikelyEndTime)
  (:Left_is_val
   (&optional __Left_is_val)
   (if __Left_is_val (setq _Left_is_val __Left_is_val)) _Left_is_val)
  (:LeftSignalState
   (&optional __LeftSignalState)
   (if __LeftSignalState (setq _LeftSignalState __LeftSignalState)) _LeftSignalState)
  (:LeftlikelyEndTime
   (&optional __LeftlikelyEndTime)
   (if __LeftlikelyEndTime (setq _LeftlikelyEndTime __LeftlikelyEndTime)) _LeftlikelyEndTime)
  (:Right_is_val
   (&optional __Right_is_val)
   (if __Right_is_val (setq _Right_is_val __Right_is_val)) _Right_is_val)
  (:RighSignalState
   (&optional __RighSignalState)
   (if __RighSignalState (setq _RighSignalState __RighSignalState)) _RighSignalState)
  (:RightlikelyEndTime
   (&optional __RightlikelyEndTime)
   (if __RightlikelyEndTime (setq _RightlikelyEndTime __RightlikelyEndTime)) _RightlikelyEndTime)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _stationId
    4
    ;; float64 _SpeedLimit
    8
    ;; float64 _dis2inter
    8
    ;; uint8 _Str_is_val
    1
    ;; uint8 _StrSignalState
    1
    ;; float64 _StrlikelyEndTime
    8
    ;; uint8 _Left_is_val
    1
    ;; uint8 _LeftSignalState
    1
    ;; float64 _LeftlikelyEndTime
    8
    ;; uint8 _Right_is_val
    1
    ;; uint8 _RighSignalState
    1
    ;; float64 _RightlikelyEndTime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _stationId
       (write-long _stationId s)
     ;; float64 _SpeedLimit
       (sys::poke _SpeedLimit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dis2inter
       (sys::poke _dis2inter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _Str_is_val
       (write-byte _Str_is_val s)
     ;; uint8 _StrSignalState
       (write-byte _StrSignalState s)
     ;; float64 _StrlikelyEndTime
       (sys::poke _StrlikelyEndTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _Left_is_val
       (write-byte _Left_is_val s)
     ;; uint8 _LeftSignalState
       (write-byte _LeftSignalState s)
     ;; float64 _LeftlikelyEndTime
       (sys::poke _LeftlikelyEndTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _Right_is_val
       (write-byte _Right_is_val s)
     ;; uint8 _RighSignalState
       (write-byte _RighSignalState s)
     ;; float64 _RightlikelyEndTime
       (sys::poke _RightlikelyEndTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _stationId
     (setq _stationId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _SpeedLimit
     (setq _SpeedLimit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dis2inter
     (setq _dis2inter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _Str_is_val
     (setq _Str_is_val (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _StrSignalState
     (setq _StrSignalState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _StrlikelyEndTime
     (setq _StrlikelyEndTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _Left_is_val
     (setq _Left_is_val (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LeftSignalState
     (setq _LeftSignalState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _LeftlikelyEndTime
     (setq _LeftlikelyEndTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _Right_is_val
     (setq _Right_is_val (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RighSignalState
     (setq _RighSignalState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _RightlikelyEndTime
     (setq _RightlikelyEndTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get v2x::spat :md5sum-) "0dc16dbf8ff4dfdc07642b27f892013d")
(setf (get v2x::spat :datatype-) "v2x/spat")
(setf (get v2x::spat :definition-)
      "std_msgs/Header header

uint32 stationId

float64 SpeedLimit

float64 dis2inter

uint8 Str_is_val
uint8 StrSignalState
float64 StrlikelyEndTime

uint8 Left_is_val
uint8 LeftSignalState
float64 LeftlikelyEndTime

uint8 Right_is_val
uint8 RighSignalState
float64 RightlikelyEndTime

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

")



(provide :v2x/spat "0dc16dbf8ff4dfdc07642b27f892013d")


