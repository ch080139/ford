;; Auto-generated. Do not edit!


(when (boundp 'msgs_record::glosa)
  (if (not (find-package "MSGS_RECORD"))
    (make-package "MSGS_RECORD"))
  (shadow 'glosa (find-package "MSGS_RECORD")))
(unless (find-package "MSGS_RECORD::GLOSA")
  (make-package "MSGS_RECORD::GLOSA"))

(in-package "ROS")
;;//! \htmlinclude glosa.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RED*" (find-package "MSGS_RECORD::GLOSA"))
(shadow '*RED* (find-package "MSGS_RECORD::GLOSA"))
(defconstant msgs_record::glosa::*RED* 3)
(intern "*GREEN*" (find-package "MSGS_RECORD::GLOSA"))
(shadow '*GREEN* (find-package "MSGS_RECORD::GLOSA"))
(defconstant msgs_record::glosa::*GREEN* 5)
(intern "*YELLOW*" (find-package "MSGS_RECORD::GLOSA"))
(shadow '*YELLOW* (find-package "MSGS_RECORD::GLOSA"))
(defconstant msgs_record::glosa::*YELLOW* 7)
(intern "*NEW_TARGET*" (find-package "MSGS_RECORD::GLOSA"))
(shadow '*NEW_TARGET* (find-package "MSGS_RECORD::GLOSA"))
(defconstant msgs_record::glosa::*NEW_TARGET* 1)
(intern "*UPDATE_TARGET*" (find-package "MSGS_RECORD::GLOSA"))
(shadow '*UPDATE_TARGET* (find-package "MSGS_RECORD::GLOSA"))
(defconstant msgs_record::glosa::*UPDATE_TARGET* 3)
(intern "*COASTED_TARGET*" (find-package "MSGS_RECORD::GLOSA"))
(shadow '*COASTED_TARGET* (find-package "MSGS_RECORD::GLOSA"))
(defconstant msgs_record::glosa::*COASTED_TARGET* 4)
(defclass msgs_record::glosa
  :super ros::object
  :slots (_header _latitude _longitude _height _Utmx _Utmy _Yaw _EgoSpeed _stationId _SpeedLimit _dis2inter _Str_is_val _StrSignalState _StrlikelyEndTime _Left_is_val _LeftSignalState _LeftlikelyEndTime _Right_is_val _RighSignalState _RightlikelyEndTime _azimuth _distance _speed _status _id ))

(defmethod msgs_record::glosa
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:height __height) 0.0)
    ((:Utmx __Utmx) 0.0)
    ((:Utmy __Utmy) 0.0)
    ((:Yaw __Yaw) 0.0)
    ((:EgoSpeed __EgoSpeed) 0.0)
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
    ((:azimuth __azimuth) 0.0)
    ((:distance __distance) 0.0)
    ((:speed __speed) 0.0)
    ((:status __status) 0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _height (float __height))
   (setq _Utmx (float __Utmx))
   (setq _Utmy (float __Utmy))
   (setq _Yaw (float __Yaw))
   (setq _EgoSpeed (float __EgoSpeed))
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
   (setq _azimuth (float __azimuth))
   (setq _distance (float __distance))
   (setq _speed (float __speed))
   (setq _status (round __status))
   (setq _id (round __id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:Utmx
   (&optional __Utmx)
   (if __Utmx (setq _Utmx __Utmx)) _Utmx)
  (:Utmy
   (&optional __Utmy)
   (if __Utmy (setq _Utmy __Utmy)) _Utmy)
  (:Yaw
   (&optional __Yaw)
   (if __Yaw (setq _Yaw __Yaw)) _Yaw)
  (:EgoSpeed
   (&optional __EgoSpeed)
   (if __EgoSpeed (setq _EgoSpeed __EgoSpeed)) _EgoSpeed)
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
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _height
    8
    ;; float64 _Utmx
    8
    ;; float64 _Utmy
    8
    ;; float64 _Yaw
    8
    ;; float64 _EgoSpeed
    8
    ;; uint16 _stationId
    2
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
    ;; float64 _azimuth
    8
    ;; float64 _distance
    8
    ;; float64 _speed
    8
    ;; uint8 _status
    1
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Utmx
       (sys::poke _Utmx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Utmy
       (sys::poke _Utmy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Yaw
       (sys::poke _Yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _EgoSpeed
       (sys::poke _EgoSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _stationId
       (write-word _stationId s)
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
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Utmx
     (setq _Utmx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Utmy
     (setq _Utmy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Yaw
     (setq _Yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _EgoSpeed
     (setq _EgoSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _stationId
     (setq _stationId (sys::peek buf ptr- :short)) (incf ptr- 2)
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
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msgs_record::glosa :md5sum-) "e8951b090850cccee9e623b752294b0d")
(setf (get msgs_record::glosa :datatype-) "msgs_record/glosa")
(setf (get msgs_record::glosa :definition-)
      "uint8 RED = 3
uint8 GREEN = 5
uint8 YELLOW = 7
uint8 NEW_TARGET = 1
uint8 UPDATE_TARGET = 3
uint8 COASTED_TARGET = 4

std_msgs/Header header

float64 latitude
float64 longitude
float64 height
float64 Utmx
float64 Utmy
float64 Yaw
float64 EgoSpeed

uint16 stationId
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

float64 azimuth
float64 distance
float64 speed
uint8 status
uint8 id

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



(provide :msgs_record/glosa "e8951b090850cccee9e623b752294b0d")


