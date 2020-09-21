;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::Ephemeris)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'Ephemeris (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::EPHEMERIS")
  (make-package "GPS_MSGS::EPHEMERIS"))

(in-package "ROS")
;;//! \htmlinclude Ephemeris.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msgs::Ephemeris
  :super ros::object
  :slots (_header _seq _stamp _frame_id _gps_id _gps_time _obs _prn _health _semimajor_axis _mean_anomaly _eccentricity _perigee_arg _cos_latitude _sin_latitude _cos_orbit_radius _sin_orbit_radius _cos_inclination _sin_inclination _inclination_angle _right_ascension _mean_motion_diff _inclination_rate _ascension_rate _time_of_week _reference_time _clock_correction _group_delay _clock_aging_1 _clock_aging_2 _clock_aging_3 ))

(defmethod gps_msgs::Ephemeris
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:gps_id __gps_id) "")
    ((:gps_time __gps_time) 0.0)
    ((:obs __obs) 0)
    ((:prn __prn) (make-array 33 :initial-element 0 :element-type :integer))
    ((:health __health) (make-array 33 :initial-element 0 :element-type :integer))
    ((:semimajor_axis __semimajor_axis) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:mean_anomaly __mean_anomaly) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:eccentricity __eccentricity) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:perigee_arg __perigee_arg) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:cos_latitude __cos_latitude) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:sin_latitude __sin_latitude) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:cos_orbit_radius __cos_orbit_radius) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:sin_orbit_radius __sin_orbit_radius) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:cos_inclination __cos_inclination) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:sin_inclination __sin_inclination) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:inclination_angle __inclination_angle) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:right_ascension __right_ascension) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:mean_motion_diff __mean_motion_diff) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:inclination_rate __inclination_rate) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:ascension_rate __ascension_rate) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:time_of_week __time_of_week) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:reference_time __reference_time) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:clock_correction __clock_correction) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:group_delay __group_delay) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:clock_aging_1 __clock_aging_1) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:clock_aging_2 __clock_aging_2) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:clock_aging_3 __clock_aging_3) (make-array 33 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _gps_id (string __gps_id))
   (setq _gps_time (float __gps_time))
   (setq _obs (round __obs))
   (setq _prn __prn)
   (setq _health __health)
   (setq _semimajor_axis __semimajor_axis)
   (setq _mean_anomaly __mean_anomaly)
   (setq _eccentricity __eccentricity)
   (setq _perigee_arg __perigee_arg)
   (setq _cos_latitude __cos_latitude)
   (setq _sin_latitude __sin_latitude)
   (setq _cos_orbit_radius __cos_orbit_radius)
   (setq _sin_orbit_radius __sin_orbit_radius)
   (setq _cos_inclination __cos_inclination)
   (setq _sin_inclination __sin_inclination)
   (setq _inclination_angle __inclination_angle)
   (setq _right_ascension __right_ascension)
   (setq _mean_motion_diff __mean_motion_diff)
   (setq _inclination_rate __inclination_rate)
   (setq _ascension_rate __ascension_rate)
   (setq _time_of_week __time_of_week)
   (setq _reference_time __reference_time)
   (setq _clock_correction __clock_correction)
   (setq _group_delay __group_delay)
   (setq _clock_aging_1 __clock_aging_1)
   (setq _clock_aging_2 __clock_aging_2)
   (setq _clock_aging_3 __clock_aging_3)
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
  (:obs
   (&optional __obs)
   (if __obs (setq _obs __obs)) _obs)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:health
   (&optional __health)
   (if __health (setq _health __health)) _health)
  (:semimajor_axis
   (&optional __semimajor_axis)
   (if __semimajor_axis (setq _semimajor_axis __semimajor_axis)) _semimajor_axis)
  (:mean_anomaly
   (&optional __mean_anomaly)
   (if __mean_anomaly (setq _mean_anomaly __mean_anomaly)) _mean_anomaly)
  (:eccentricity
   (&optional __eccentricity)
   (if __eccentricity (setq _eccentricity __eccentricity)) _eccentricity)
  (:perigee_arg
   (&optional __perigee_arg)
   (if __perigee_arg (setq _perigee_arg __perigee_arg)) _perigee_arg)
  (:cos_latitude
   (&optional __cos_latitude)
   (if __cos_latitude (setq _cos_latitude __cos_latitude)) _cos_latitude)
  (:sin_latitude
   (&optional __sin_latitude)
   (if __sin_latitude (setq _sin_latitude __sin_latitude)) _sin_latitude)
  (:cos_orbit_radius
   (&optional __cos_orbit_radius)
   (if __cos_orbit_radius (setq _cos_orbit_radius __cos_orbit_radius)) _cos_orbit_radius)
  (:sin_orbit_radius
   (&optional __sin_orbit_radius)
   (if __sin_orbit_radius (setq _sin_orbit_radius __sin_orbit_radius)) _sin_orbit_radius)
  (:cos_inclination
   (&optional __cos_inclination)
   (if __cos_inclination (setq _cos_inclination __cos_inclination)) _cos_inclination)
  (:sin_inclination
   (&optional __sin_inclination)
   (if __sin_inclination (setq _sin_inclination __sin_inclination)) _sin_inclination)
  (:inclination_angle
   (&optional __inclination_angle)
   (if __inclination_angle (setq _inclination_angle __inclination_angle)) _inclination_angle)
  (:right_ascension
   (&optional __right_ascension)
   (if __right_ascension (setq _right_ascension __right_ascension)) _right_ascension)
  (:mean_motion_diff
   (&optional __mean_motion_diff)
   (if __mean_motion_diff (setq _mean_motion_diff __mean_motion_diff)) _mean_motion_diff)
  (:inclination_rate
   (&optional __inclination_rate)
   (if __inclination_rate (setq _inclination_rate __inclination_rate)) _inclination_rate)
  (:ascension_rate
   (&optional __ascension_rate)
   (if __ascension_rate (setq _ascension_rate __ascension_rate)) _ascension_rate)
  (:time_of_week
   (&optional __time_of_week)
   (if __time_of_week (setq _time_of_week __time_of_week)) _time_of_week)
  (:reference_time
   (&optional __reference_time)
   (if __reference_time (setq _reference_time __reference_time)) _reference_time)
  (:clock_correction
   (&optional __clock_correction)
   (if __clock_correction (setq _clock_correction __clock_correction)) _clock_correction)
  (:group_delay
   (&optional __group_delay)
   (if __group_delay (setq _group_delay __group_delay)) _group_delay)
  (:clock_aging_1
   (&optional __clock_aging_1)
   (if __clock_aging_1 (setq _clock_aging_1 __clock_aging_1)) _clock_aging_1)
  (:clock_aging_2
   (&optional __clock_aging_2)
   (if __clock_aging_2 (setq _clock_aging_2 __clock_aging_2)) _clock_aging_2)
  (:clock_aging_3
   (&optional __clock_aging_3)
   (if __clock_aging_3 (setq _clock_aging_3 __clock_aging_3)) _clock_aging_3)
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
    ;; float64 _gps_time
    8
    ;; int8 _obs
    1
    ;; int8[33] _prn
    (* 1    33)
    ;; int8[33] _health
    (* 1    33)
    ;; float64[33] _semimajor_axis
    (* 8    33)
    ;; float64[33] _mean_anomaly
    (* 8    33)
    ;; float64[33] _eccentricity
    (* 8    33)
    ;; float64[33] _perigee_arg
    (* 8    33)
    ;; float64[33] _cos_latitude
    (* 8    33)
    ;; float64[33] _sin_latitude
    (* 8    33)
    ;; float64[33] _cos_orbit_radius
    (* 8    33)
    ;; float64[33] _sin_orbit_radius
    (* 8    33)
    ;; float64[33] _cos_inclination
    (* 8    33)
    ;; float64[33] _sin_inclination
    (* 8    33)
    ;; float64[33] _inclination_angle
    (* 8    33)
    ;; float64[33] _right_ascension
    (* 8    33)
    ;; float64[33] _mean_motion_diff
    (* 8    33)
    ;; float64[33] _inclination_rate
    (* 8    33)
    ;; float64[33] _ascension_rate
    (* 8    33)
    ;; float64[33] _time_of_week
    (* 8    33)
    ;; float64[33] _reference_time
    (* 8    33)
    ;; float64[33] _clock_correction
    (* 8    33)
    ;; float64[33] _group_delay
    (* 8    33)
    ;; float64[33] _clock_aging_1
    (* 8    33)
    ;; float64[33] _clock_aging_2
    (* 8    33)
    ;; float64[33] _clock_aging_3
    (* 8    33)
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
     ;; float64 _gps_time
       (sys::poke _gps_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _obs
       (write-byte _obs s)
     ;; int8[33] _prn
     (dotimes (i 33)
       (write-byte (elt _prn i) s)
       )
     ;; int8[33] _health
     (dotimes (i 33)
       (write-byte (elt _health i) s)
       )
     ;; float64[33] _semimajor_axis
     (dotimes (i 33)
       (sys::poke (elt _semimajor_axis i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _mean_anomaly
     (dotimes (i 33)
       (sys::poke (elt _mean_anomaly i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _eccentricity
     (dotimes (i 33)
       (sys::poke (elt _eccentricity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _perigee_arg
     (dotimes (i 33)
       (sys::poke (elt _perigee_arg i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _cos_latitude
     (dotimes (i 33)
       (sys::poke (elt _cos_latitude i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _sin_latitude
     (dotimes (i 33)
       (sys::poke (elt _sin_latitude i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _cos_orbit_radius
     (dotimes (i 33)
       (sys::poke (elt _cos_orbit_radius i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _sin_orbit_radius
     (dotimes (i 33)
       (sys::poke (elt _sin_orbit_radius i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _cos_inclination
     (dotimes (i 33)
       (sys::poke (elt _cos_inclination i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _sin_inclination
     (dotimes (i 33)
       (sys::poke (elt _sin_inclination i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _inclination_angle
     (dotimes (i 33)
       (sys::poke (elt _inclination_angle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _right_ascension
     (dotimes (i 33)
       (sys::poke (elt _right_ascension i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _mean_motion_diff
     (dotimes (i 33)
       (sys::poke (elt _mean_motion_diff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _inclination_rate
     (dotimes (i 33)
       (sys::poke (elt _inclination_rate i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _ascension_rate
     (dotimes (i 33)
       (sys::poke (elt _ascension_rate i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _time_of_week
     (dotimes (i 33)
       (sys::poke (elt _time_of_week i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _reference_time
     (dotimes (i 33)
       (sys::poke (elt _reference_time i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _clock_correction
     (dotimes (i 33)
       (sys::poke (elt _clock_correction i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _group_delay
     (dotimes (i 33)
       (sys::poke (elt _group_delay i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _clock_aging_1
     (dotimes (i 33)
       (sys::poke (elt _clock_aging_1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _clock_aging_2
     (dotimes (i 33)
       (sys::poke (elt _clock_aging_2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _clock_aging_3
     (dotimes (i 33)
       (sys::poke (elt _clock_aging_3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
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
   ;; float64 _gps_time
     (setq _gps_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _obs
     (setq _obs (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _obs 127) (setq _obs (- _obs 256)))
   ;; int8[33] _prn
   (dotimes (i (length _prn))
     (setf (elt _prn i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _prn i) 127) (setf (elt _prn i) (- (elt _prn i) 256)))
     )
   ;; int8[33] _health
   (dotimes (i (length _health))
     (setf (elt _health i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _health i) 127) (setf (elt _health i) (- (elt _health i) 256)))
     )
   ;; float64[33] _semimajor_axis
   (dotimes (i (length _semimajor_axis))
     (setf (elt _semimajor_axis i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _mean_anomaly
   (dotimes (i (length _mean_anomaly))
     (setf (elt _mean_anomaly i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _eccentricity
   (dotimes (i (length _eccentricity))
     (setf (elt _eccentricity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _perigee_arg
   (dotimes (i (length _perigee_arg))
     (setf (elt _perigee_arg i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _cos_latitude
   (dotimes (i (length _cos_latitude))
     (setf (elt _cos_latitude i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _sin_latitude
   (dotimes (i (length _sin_latitude))
     (setf (elt _sin_latitude i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _cos_orbit_radius
   (dotimes (i (length _cos_orbit_radius))
     (setf (elt _cos_orbit_radius i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _sin_orbit_radius
   (dotimes (i (length _sin_orbit_radius))
     (setf (elt _sin_orbit_radius i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _cos_inclination
   (dotimes (i (length _cos_inclination))
     (setf (elt _cos_inclination i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _sin_inclination
   (dotimes (i (length _sin_inclination))
     (setf (elt _sin_inclination i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _inclination_angle
   (dotimes (i (length _inclination_angle))
     (setf (elt _inclination_angle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _right_ascension
   (dotimes (i (length _right_ascension))
     (setf (elt _right_ascension i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _mean_motion_diff
   (dotimes (i (length _mean_motion_diff))
     (setf (elt _mean_motion_diff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _inclination_rate
   (dotimes (i (length _inclination_rate))
     (setf (elt _inclination_rate i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _ascension_rate
   (dotimes (i (length _ascension_rate))
     (setf (elt _ascension_rate i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _time_of_week
   (dotimes (i (length _time_of_week))
     (setf (elt _time_of_week i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _reference_time
   (dotimes (i (length _reference_time))
     (setf (elt _reference_time i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _clock_correction
   (dotimes (i (length _clock_correction))
     (setf (elt _clock_correction i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _group_delay
   (dotimes (i (length _group_delay))
     (setf (elt _group_delay i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _clock_aging_1
   (dotimes (i (length _clock_aging_1))
     (setf (elt _clock_aging_1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _clock_aging_2
   (dotimes (i (length _clock_aging_2))
     (setf (elt _clock_aging_2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _clock_aging_3
   (dotimes (i (length _clock_aging_3))
     (setf (elt _clock_aging_3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get gps_msgs::Ephemeris :md5sum-) "4e93179ee4a59fd3267f8021405bbe35")
(setf (get gps_msgs::Ephemeris :datatype-) "gps_msgs/Ephemeris")
(setf (get gps_msgs::Ephemeris :definition-)
      "## Ephemeris Data for each satellite

## There are 33 ephemeris channels so that the element number will correspond to
##  the PRN number

Header header
    uint32 seq
    time stamp
    string frame_id

string  gps_id
float64 gps_time

# how far to iterate in.
int8 obs
int8[33] prn

int8[33]    health

# Positioning
float64[33] semimajor_axis    # sqrt(A), SQUARE ROOT of semi major axis (meters)
float64[33] mean_anomaly      # M0, Mean anomoly of reference time (rad)
float64[33] eccentricity      # ecc, 
float64[33] perigee_arg       # omega, Arguement of perigee (rad)
float64[33] cos_latitude      # cuc, Arguement of latitude, amplitude of cosine (rad)
float64[33] sin_latitude      # cus, Arguement of latitude, amplitude of sine (rad)
float64[33] cos_orbit_radius  # crc, Orbit radius, amplitude of cosine (rad)
float64[33] sin_orbit_radius  # crs, Orbit radius, amplitude of sine (rad)
float64[33] cos_inclination   # cic, Inclination, amplitude of cosine (rad)
float64[33] sin_inclination   # cis, Inclination, amplitude of sine (rad)
float64[33] inclination_angle # I0, Inclination angle at reference time (rad)
float64[33] right_ascension   # omega0,  Right ascension (rad)

# Movement
float64[33] mean_motion_diff  # Delta N, Mean motion difference (rad/s)
float64[33] inclination_rate  # I dot, Rate of inclination angle (rad/s)
float64[33] ascension_rate    # omega0 dot, Rate of right ascension (rad/s)

# Timing
float64[33] time_of_week      # tow, Time stamp of subframe 0 (seconds)
float64[33] reference_time    # toe, Reference time for ephemeris (seconds)
float64[33] clock_correction  # toc, SV clock correction term (seconds)
float64[33] group_delay       # tgd, Estimated group delay difference (seconds)
float64[33] clock_aging_1     # af0, Clock aging parameter (seconds)
float64[33] clock_aging_2     # af1, Clock aging parameter (seconds/seconds)
float64[33] clock_aging_3     # af2, Clock aging parameter (seconds/seconds/seconds)
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



(provide :gps_msgs/Ephemeris "4e93179ee4a59fd3267f8021405bbe35")


