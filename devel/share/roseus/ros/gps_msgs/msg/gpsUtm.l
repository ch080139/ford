;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::gpsUtm)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'gpsUtm (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::GPSUTM")
  (make-package "GPS_MSGS::GPSUTM"))

(in-package "ROS")
;;//! \htmlinclude gpsUtm.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msgs::gpsUtm
  :super ros::object
  :slots (_header _latitude _longitude _height _undulation _north_velocity _east_velocity _up_velocity _roll _pitch _azimuth _latitude_standard_deviation _longitude_standard_deviation _height_standard_deviation _northing_standard_deviation _easting_standard_deviation _uping_standard_deviation _roll_standard_deviation _pitch_standard_deviation _azimuth_standard_deviation _pose _twist ))

(defmethod gps_msgs::gpsUtm
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:height __height) 0.0)
    ((:undulation __undulation) 0.0)
    ((:north_velocity __north_velocity) 0.0)
    ((:east_velocity __east_velocity) 0.0)
    ((:up_velocity __up_velocity) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:latitude_standard_deviation __latitude_standard_deviation) 0.0)
    ((:longitude_standard_deviation __longitude_standard_deviation) 0.0)
    ((:height_standard_deviation __height_standard_deviation) 0.0)
    ((:northing_standard_deviation __northing_standard_deviation) 0.0)
    ((:easting_standard_deviation __easting_standard_deviation) 0.0)
    ((:uping_standard_deviation __uping_standard_deviation) 0.0)
    ((:roll_standard_deviation __roll_standard_deviation) 0.0)
    ((:pitch_standard_deviation __pitch_standard_deviation) 0.0)
    ((:azimuth_standard_deviation __azimuth_standard_deviation) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:twist __twist) (instance geometry_msgs::TwistWithCovariance :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _height (float __height))
   (setq _undulation (float __undulation))
   (setq _north_velocity (float __north_velocity))
   (setq _east_velocity (float __east_velocity))
   (setq _up_velocity (float __up_velocity))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _azimuth (float __azimuth))
   (setq _latitude_standard_deviation (float __latitude_standard_deviation))
   (setq _longitude_standard_deviation (float __longitude_standard_deviation))
   (setq _height_standard_deviation (float __height_standard_deviation))
   (setq _northing_standard_deviation (float __northing_standard_deviation))
   (setq _easting_standard_deviation (float __easting_standard_deviation))
   (setq _uping_standard_deviation (float __uping_standard_deviation))
   (setq _roll_standard_deviation (float __roll_standard_deviation))
   (setq _pitch_standard_deviation (float __pitch_standard_deviation))
   (setq _azimuth_standard_deviation (float __azimuth_standard_deviation))
   (setq _pose __pose)
   (setq _twist __twist)
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
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:north_velocity
   (&optional __north_velocity)
   (if __north_velocity (setq _north_velocity __north_velocity)) _north_velocity)
  (:east_velocity
   (&optional __east_velocity)
   (if __east_velocity (setq _east_velocity __east_velocity)) _east_velocity)
  (:up_velocity
   (&optional __up_velocity)
   (if __up_velocity (setq _up_velocity __up_velocity)) _up_velocity)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:latitude_standard_deviation
   (&optional __latitude_standard_deviation)
   (if __latitude_standard_deviation (setq _latitude_standard_deviation __latitude_standard_deviation)) _latitude_standard_deviation)
  (:longitude_standard_deviation
   (&optional __longitude_standard_deviation)
   (if __longitude_standard_deviation (setq _longitude_standard_deviation __longitude_standard_deviation)) _longitude_standard_deviation)
  (:height_standard_deviation
   (&optional __height_standard_deviation)
   (if __height_standard_deviation (setq _height_standard_deviation __height_standard_deviation)) _height_standard_deviation)
  (:northing_standard_deviation
   (&optional __northing_standard_deviation)
   (if __northing_standard_deviation (setq _northing_standard_deviation __northing_standard_deviation)) _northing_standard_deviation)
  (:easting_standard_deviation
   (&optional __easting_standard_deviation)
   (if __easting_standard_deviation (setq _easting_standard_deviation __easting_standard_deviation)) _easting_standard_deviation)
  (:uping_standard_deviation
   (&optional __uping_standard_deviation)
   (if __uping_standard_deviation (setq _uping_standard_deviation __uping_standard_deviation)) _uping_standard_deviation)
  (:roll_standard_deviation
   (&optional __roll_standard_deviation)
   (if __roll_standard_deviation (setq _roll_standard_deviation __roll_standard_deviation)) _roll_standard_deviation)
  (:pitch_standard_deviation
   (&optional __pitch_standard_deviation)
   (if __pitch_standard_deviation (setq _pitch_standard_deviation __pitch_standard_deviation)) _pitch_standard_deviation)
  (:azimuth_standard_deviation
   (&optional __azimuth_standard_deviation)
   (if __azimuth_standard_deviation (setq _azimuth_standard_deviation __azimuth_standard_deviation)) _azimuth_standard_deviation)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
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
    ;; float32 _undulation
    4
    ;; float64 _north_velocity
    8
    ;; float64 _east_velocity
    8
    ;; float64 _up_velocity
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _azimuth
    8
    ;; float32 _latitude_standard_deviation
    4
    ;; float32 _longitude_standard_deviation
    4
    ;; float32 _height_standard_deviation
    4
    ;; float32 _northing_standard_deviation
    4
    ;; float32 _easting_standard_deviation
    4
    ;; float32 _uping_standard_deviation
    4
    ;; float32 _roll_standard_deviation
    4
    ;; float32 _pitch_standard_deviation
    4
    ;; float32 _azimuth_standard_deviation
    4
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _twist
    (send _twist :serialization-length)
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
     ;; float32 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _north_velocity
       (sys::poke _north_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east_velocity
       (sys::poke _east_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_velocity
       (sys::poke _up_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _latitude_standard_deviation
       (sys::poke _latitude_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_standard_deviation
       (sys::poke _longitude_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height_standard_deviation
       (sys::poke _height_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _northing_standard_deviation
       (sys::poke _northing_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _easting_standard_deviation
       (sys::poke _easting_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _uping_standard_deviation
       (sys::poke _uping_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_standard_deviation
       (sys::poke _roll_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_standard_deviation
       (sys::poke _pitch_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth_standard_deviation
       (sys::poke _azimuth_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistWithCovariance _twist
       (send _twist :serialize s)
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
   ;; float32 _undulation
     (setq _undulation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _north_velocity
     (setq _north_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east_velocity
     (setq _east_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_velocity
     (setq _up_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _latitude_standard_deviation
     (setq _latitude_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_standard_deviation
     (setq _longitude_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height_standard_deviation
     (setq _height_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _northing_standard_deviation
     (setq _northing_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _easting_standard_deviation
     (setq _easting_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _uping_standard_deviation
     (setq _uping_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_standard_deviation
     (setq _roll_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_standard_deviation
     (setq _pitch_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth_standard_deviation
     (setq _azimuth_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get gps_msgs::gpsUtm :md5sum-) "dd6300f2dc181584e828bfc2114a931d")
(setf (get gps_msgs::gpsUtm :datatype-) "gps_msgs/gpsUtm")
(setf (get gps_msgs::gpsUtm :definition-)
      "std_msgs/Header header

float64 latitude
float64 longitude
float64 height
float32 undulation
float64 north_velocity
float64 east_velocity
float64 up_velocity
float64 roll
float64 pitch
float64 azimuth
float32 latitude_standard_deviation
float32 longitude_standard_deviation
float32 height_standard_deviation
float32 northing_standard_deviation
float32 easting_standard_deviation
float32 uping_standard_deviation
float32 roll_standard_deviation
float32 pitch_standard_deviation
float32 azimuth_standard_deviation

geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :gps_msgs/gpsUtm "dd6300f2dc181584e828bfc2114a931d")


