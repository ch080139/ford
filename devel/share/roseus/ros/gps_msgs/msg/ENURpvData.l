;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::ENURpvData)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'ENURpvData (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::ENURPVDATA")
  (make-package "GPS_MSGS::ENURPVDATA"))

(in-package "ROS")
;;//! \htmlinclude ENURpvData.msg.html


(defclass gps_msgs::ENURpvData
  :super ros::object
  :slots (_e _n _u ))

(defmethod gps_msgs::ENURpvData
  (:init
   (&key
    ((:e __e) 0.0)
    ((:n __n) 0.0)
    ((:u __u) 0.0)
    )
   (send-super :init)
   (setq _e (float __e))
   (setq _n (float __n))
   (setq _u (float __u))
   self)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:serialization-length
   ()
   (+
    ;; float64 _e
    8
    ;; float64 _n
    8
    ;; float64 _u
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _e
       (sys::poke _e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _n
       (sys::poke _n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u
       (sys::poke _u (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _e
     (setq _e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _n
     (setq _n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u
     (setq _u (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_msgs::ENURpvData :md5sum-) "ee32a4859155fe2401cc8b90c0400d00")
(setf (get gps_msgs::ENURpvData :datatype-) "gps_msgs/ENURpvData")
(setf (get gps_msgs::ENURpvData :definition-)
      "float64 e
float64 n
float64 u
")



(provide :gps_msgs/ENURpvData "ee32a4859155fe2401cc8b90c0400d00")


