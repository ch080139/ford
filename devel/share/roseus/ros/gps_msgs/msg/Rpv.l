;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::Rpv)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'Rpv (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::RPV")
  (make-package "GPS_MSGS::RPV"))

(in-package "ROS")
;;//! \htmlinclude Rpv.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msgs::Rpv
  :super ros::object
  :slots (_header _seq _stamp _frame_id _gps_id_from _gps_id_to _gps_time _status _ratio _input_obs _non_fault_obs _amb_obs _sp _lp _hp _base_prn_float _base_prn_fixed ))

(defmethod gps_msgs::Rpv
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:gps_id_from __gps_id_from) "")
    ((:gps_id_to __gps_id_to) "")
    ((:gps_time __gps_time) 0)
    ((:status __status) 0)
    ((:ratio __ratio) 0.0)
    ((:input_obs __input_obs) 0)
    ((:non_fault_obs __non_fault_obs) 0)
    ((:amb_obs __amb_obs) 0)
    ((:sp __sp) (instance gps_msgs::RpvData :init))
    ((:lp __lp) (instance gps_msgs::RpvData :init))
    ((:hp __hp) (instance gps_msgs::RpvData :init))
    ((:base_prn_float __base_prn_float) 0)
    ((:base_prn_fixed __base_prn_fixed) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _gps_id_from (string __gps_id_from))
   (setq _gps_id_to (string __gps_id_to))
   (setq _gps_time (round __gps_time))
   (setq _status (round __status))
   (setq _ratio (float __ratio))
   (setq _input_obs (round __input_obs))
   (setq _non_fault_obs (round __non_fault_obs))
   (setq _amb_obs (round __amb_obs))
   (setq _sp __sp)
   (setq _lp __lp)
   (setq _hp __hp)
   (setq _base_prn_float (round __base_prn_float))
   (setq _base_prn_fixed (round __base_prn_fixed))
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
  (:gps_id_from
   (&optional __gps_id_from)
   (if __gps_id_from (setq _gps_id_from __gps_id_from)) _gps_id_from)
  (:gps_id_to
   (&optional __gps_id_to)
   (if __gps_id_to (setq _gps_id_to __gps_id_to)) _gps_id_to)
  (:gps_time
   (&optional __gps_time)
   (if __gps_time (setq _gps_time __gps_time)) _gps_time)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:ratio
   (&optional __ratio)
   (if __ratio (setq _ratio __ratio)) _ratio)
  (:input_obs
   (&optional __input_obs)
   (if __input_obs (setq _input_obs __input_obs)) _input_obs)
  (:non_fault_obs
   (&optional __non_fault_obs)
   (if __non_fault_obs (setq _non_fault_obs __non_fault_obs)) _non_fault_obs)
  (:amb_obs
   (&optional __amb_obs)
   (if __amb_obs (setq _amb_obs __amb_obs)) _amb_obs)
  (:sp
   (&rest __sp)
   (if (keywordp (car __sp))
       (send* _sp __sp)
     (progn
       (if __sp (setq _sp (car __sp)))
       _sp)))
  (:lp
   (&rest __lp)
   (if (keywordp (car __lp))
       (send* _lp __lp)
     (progn
       (if __lp (setq _lp (car __lp)))
       _lp)))
  (:hp
   (&rest __hp)
   (if (keywordp (car __hp))
       (send* _hp __hp)
     (progn
       (if __hp (setq _hp (car __hp)))
       _hp)))
  (:base_prn_float
   (&optional __base_prn_float)
   (if __base_prn_float (setq _base_prn_float __base_prn_float)) _base_prn_float)
  (:base_prn_fixed
   (&optional __base_prn_fixed)
   (if __base_prn_fixed (setq _base_prn_fixed __base_prn_fixed)) _base_prn_fixed)
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
    ;; string _gps_id_from
    4 (length _gps_id_from)
    ;; string _gps_id_to
    4 (length _gps_id_to)
    ;; int64 _gps_time
    8
    ;; int8 _status
    1
    ;; float64 _ratio
    8
    ;; int32 _input_obs
    4
    ;; int32 _non_fault_obs
    4
    ;; int32 _amb_obs
    4
    ;; gps_msgs/RpvData _sp
    (send _sp :serialization-length)
    ;; gps_msgs/RpvData _lp
    (send _lp :serialization-length)
    ;; gps_msgs/RpvData _hp
    (send _hp :serialization-length)
    ;; int32 _base_prn_float
    4
    ;; int32 _base_prn_fixed
    4
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
     ;; string _gps_id_from
       (write-long (length _gps_id_from) s) (princ _gps_id_from s)
     ;; string _gps_id_to
       (write-long (length _gps_id_to) s) (princ _gps_id_to s)
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
     ;; int8 _status
       (write-byte _status s)
     ;; float64 _ratio
       (sys::poke _ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _input_obs
       (write-long _input_obs s)
     ;; int32 _non_fault_obs
       (write-long _non_fault_obs s)
     ;; int32 _amb_obs
       (write-long _amb_obs s)
     ;; gps_msgs/RpvData _sp
       (send _sp :serialize s)
     ;; gps_msgs/RpvData _lp
       (send _lp :serialize s)
     ;; gps_msgs/RpvData _hp
       (send _hp :serialize s)
     ;; int32 _base_prn_float
       (write-long _base_prn_float s)
     ;; int32 _base_prn_fixed
       (write-long _base_prn_fixed s)
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
   ;; string _gps_id_from
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps_id_from (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gps_id_to
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps_id_to (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; float64 _ratio
     (setq _ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _input_obs
     (setq _input_obs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _non_fault_obs
     (setq _non_fault_obs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _amb_obs
     (setq _amb_obs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; gps_msgs/RpvData _sp
     (send _sp :deserialize buf ptr-) (incf ptr- (send _sp :serialization-length))
   ;; gps_msgs/RpvData _lp
     (send _lp :deserialize buf ptr-) (incf ptr- (send _lp :serialization-length))
   ;; gps_msgs/RpvData _hp
     (send _hp :deserialize buf ptr-) (incf ptr- (send _hp :serialization-length))
   ;; int32 _base_prn_float
     (setq _base_prn_float (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _base_prn_fixed
     (setq _base_prn_fixed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gps_msgs::Rpv :md5sum-) "d0dd395e0a43da31b99eaff5928463a1")
(setf (get gps_msgs::Rpv :datatype-) "gps_msgs/Rpv")
(setf (get gps_msgs::Rpv :definition-)
      "## This is the advanced output message for DRTK. It is used primarily for 
## debugging and contains much information that is of no use to the end user.
Header header
    uint32 seq
    time stamp
    string frame_id

# Assuming that the gps
string gps_id_from
string gps_id_to

# GPS Time of output (ms into week)
int64 gps_time

int8 status # Output status
            #  2 : High precision solution available
            #  1 : Low precision solution only (high precision is zero)
            #  0 : Insufficient observations
            # -1 : Time stamps of input data do not match
            # -2 : Already computed solution for time stamp on input data
            # -3 : No L1 range measurements on receiver 1
            # -4 : No L2 range measurements on receiver 1
            # -5 : No L1 range measurements on receiver 2
            # -6 : No L2 range measurements on receiver 2

# ratio resultant from the LAMBDA method
float64 ratio

# number of input observations common across all with no cycle slip and which 
# are continuous between timesteps
int32 input_obs

# numb of 
int32 non_fault_obs
# Number of fixed ambiguiity observations
int32 amb_obs


# Standard Positioning 
RpvData sp

# Low Precision
RpvData lp

# High Precision
RpvData hp

## base prn used for double differencing - floating ambiguities
int32 base_prn_float

## base prn used for double differencing - fixed integer ambiguities
int32 base_prn_fixed
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
MSG: gps_msgs/RpvData
XYZRpvData xyz
ENURpvData enu
float64 magnitude
float64 horizontal_magnitude
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



(provide :gps_msgs/Rpv "d0dd395e0a43da31b99eaff5928463a1")


