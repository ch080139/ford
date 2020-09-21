;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::RpvData)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'RpvData (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::RPVDATA")
  (make-package "GPS_MSGS::RPVDATA"))

(in-package "ROS")
;;//! \htmlinclude RpvData.msg.html


(defclass gps_msgs::RpvData
  :super ros::object
  :slots (_xyz _enu _magnitude _horizontal_magnitude ))

(defmethod gps_msgs::RpvData
  (:init
   (&key
    ((:xyz __xyz) (instance gps_msgs::XYZRpvData :init))
    ((:enu __enu) (instance gps_msgs::ENURpvData :init))
    ((:magnitude __magnitude) 0.0)
    ((:horizontal_magnitude __horizontal_magnitude) 0.0)
    )
   (send-super :init)
   (setq _xyz __xyz)
   (setq _enu __enu)
   (setq _magnitude (float __magnitude))
   (setq _horizontal_magnitude (float __horizontal_magnitude))
   self)
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
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:horizontal_magnitude
   (&optional __horizontal_magnitude)
   (if __horizontal_magnitude (setq _horizontal_magnitude __horizontal_magnitude)) _horizontal_magnitude)
  (:serialization-length
   ()
   (+
    ;; gps_msgs/XYZRpvData _xyz
    (send _xyz :serialization-length)
    ;; gps_msgs/ENURpvData _enu
    (send _enu :serialization-length)
    ;; float64 _magnitude
    8
    ;; float64 _horizontal_magnitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gps_msgs/XYZRpvData _xyz
       (send _xyz :serialize s)
     ;; gps_msgs/ENURpvData _enu
       (send _enu :serialize s)
     ;; float64 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontal_magnitude
       (sys::poke _horizontal_magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gps_msgs/XYZRpvData _xyz
     (send _xyz :deserialize buf ptr-) (incf ptr- (send _xyz :serialization-length))
   ;; gps_msgs/ENURpvData _enu
     (send _enu :deserialize buf ptr-) (incf ptr- (send _enu :serialization-length))
   ;; float64 _magnitude
     (setq _magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontal_magnitude
     (setq _horizontal_magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_msgs::RpvData :md5sum-) "072d47cf1d4834308410485efe25a2f4")
(setf (get gps_msgs::RpvData :datatype-) "gps_msgs/RpvData")
(setf (get gps_msgs::RpvData :definition-)
      "XYZRpvData xyz
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



(provide :gps_msgs/RpvData "072d47cf1d4834308410485efe25a2f4")


