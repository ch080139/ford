;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::XYZRpvData)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'XYZRpvData (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::XYZRPVDATA")
  (make-package "GPS_MSGS::XYZRPVDATA"))

(in-package "ROS")
;;//! \htmlinclude XYZRpvData.msg.html


(defclass gps_msgs::XYZRpvData
  :super ros::object
  :slots (_x _y _z ))

(defmethod gps_msgs::XYZRpvData
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_msgs::XYZRpvData :md5sum-) "4a842b65f413084dc2b10fb484ea7f17")
(setf (get gps_msgs::XYZRpvData :datatype-) "gps_msgs/XYZRpvData")
(setf (get gps_msgs::XYZRpvData :definition-)
      "float64 x
float64 y
float64 z
")



(provide :gps_msgs/XYZRpvData "4a842b65f413084dc2b10fb484ea7f17")


