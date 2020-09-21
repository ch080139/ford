;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::L1L2Range)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'L1L2Range (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::L1L2RANGE")
  (make-package "GPS_MSGS::L1L2RANGE"))

(in-package "ROS")
;;//! \htmlinclude L1L2Range.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msgs::L1L2Range
  :super ros::object
  :slots (_header _seq _stamp _frame_id _gps_id _gps_time _num_obs _L1 _L2 _lat _lon _alt _lat_cov _lon_cov _alt_cov ))

(defmethod gps_msgs::L1L2Range
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:gps_id __gps_id) "")
    ((:gps_time __gps_time) 0)
    ((:num_obs __num_obs) 0)
    ((:L1 __L1) (instance gps_msgs::GpsRange :init))
    ((:L2 __L2) (instance gps_msgs::GpsRange :init))
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:lat_cov __lat_cov) 0.0)
    ((:lon_cov __lon_cov) 0.0)
    ((:alt_cov __alt_cov) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _gps_id (string __gps_id))
   (setq _gps_time (round __gps_time))
   (setq _num_obs (round __num_obs))
   (setq _L1 __L1)
   (setq _L2 __L2)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _lat_cov (float __lat_cov))
   (setq _lon_cov (float __lon_cov))
   (setq _alt_cov (float __alt_cov))
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
  (:gps_time
   (&optional __gps_time)
   (if __gps_time (setq _gps_time __gps_time)) _gps_time)
  (:num_obs
   (&optional __num_obs)
   (if __num_obs (setq _num_obs __num_obs)) _num_obs)
  (:L1
   (&rest __L1)
   (if (keywordp (car __L1))
       (send* _L1 __L1)
     (progn
       (if __L1 (setq _L1 (car __L1)))
       _L1)))
  (:L2
   (&rest __L2)
   (if (keywordp (car __L2))
       (send* _L2 __L2)
     (progn
       (if __L2 (setq _L2 (car __L2)))
       _L2)))
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:lat_cov
   (&optional __lat_cov)
   (if __lat_cov (setq _lat_cov __lat_cov)) _lat_cov)
  (:lon_cov
   (&optional __lon_cov)
   (if __lon_cov (setq _lon_cov __lon_cov)) _lon_cov)
  (:alt_cov
   (&optional __alt_cov)
   (if __alt_cov (setq _alt_cov __alt_cov)) _alt_cov)
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
    ;; int64 _gps_time
    8
    ;; int32 _num_obs
    4
    ;; gps_msgs/GpsRange _L1
    (send _L1 :serialization-length)
    ;; gps_msgs/GpsRange _L2
    (send _L2 :serialization-length)
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ;; float64 _lat_cov
    8
    ;; float64 _lon_cov
    8
    ;; float64 _alt_cov
    8
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
     ;; int64 _gps_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _gps_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _gps_time) (= (length (_gps_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_gps_time . bv) 0) 0) s)
              (write-long (ash (elt (_gps_time . bv) 1) -1) s))
             ((and (class _gps_time) (= (length (_gps_time . bv)) 1)) ;; big1
              (write-long (elt (_gps_time . bv) 0) s)
              (write-long (if (>= _gps_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _gps_time s)(write-long (if (>= _gps_time 0) 0 #xffffffff) s)))
     ;; int32 _num_obs
       (write-long _num_obs s)
     ;; gps_msgs/GpsRange _L1
       (send _L1 :serialize s)
     ;; gps_msgs/GpsRange _L2
       (send _L2 :serialize s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat_cov
       (sys::poke _lat_cov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon_cov
       (sys::poke _lon_cov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt_cov
       (sys::poke _alt_cov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; int64 _gps_time
#+(or :alpha :irix6 :x86_64)
      (setf _gps_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _gps_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _num_obs
     (setq _num_obs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; gps_msgs/GpsRange _L1
     (send _L1 :deserialize buf ptr-) (incf ptr- (send _L1 :serialization-length))
   ;; gps_msgs/GpsRange _L2
     (send _L2 :deserialize buf ptr-) (incf ptr- (send _L2 :serialization-length))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat_cov
     (setq _lat_cov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon_cov
     (setq _lon_cov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt_cov
     (setq _alt_cov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_msgs::L1L2Range :md5sum-) "9416a850ba54fa4c735dfb3813edd361")
(setf (get gps_msgs::L1L2Range :datatype-) "gps_msgs/L1L2Range")
(setf (get gps_msgs::L1L2Range :definition-)
      "## This msg created 5/30/2013
## originally intended for sending to DRTK or TDCP

Header header
    uint32 seq
    time stamp
    string frame_id

string gps_id
int64 gps_time

# number of observations to follow ( for debugging )
int32 num_obs

GpsRange L1
GpsRange L2

float64 lat
float64 lon
float64 alt
float64 lat_cov
float64 lon_cov
float64 alt_cov
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
MSG: gps_msgs/GpsRange
## Useful general comment goes here
## Each receiver will be able to track differing numbers of satellites, so the
## fields are each of length 32, the number of SV's in the GPS constellation

# number of observations --> how far to iterate through the arrays
uint8 obs

## sv number for each satellite
uint8[33] prn

float64[33] psr
float32[33] psr_std

Carrier carrier
================================================================================
MSG: gps_msgs/Carrier
## Useful comments go here

float64[33] doppler

## signal to noise ratio ,Cn0
float64[33] noise

## equivalent to the negative of the accumulated doppler
float64[33] phase
float32[33] phase_std
")



(provide :gps_msgs/L1L2Range "9416a850ba54fa4c735dfb3813edd361")


