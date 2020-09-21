;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::Satellite)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'Satellite (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::SATELLITE")
  (make-package "GPS_MSGS::SATELLITE"))

(in-package "ROS")
;;//! \htmlinclude Satellite.msg.html


(defclass gps_msgs::Satellite
  :super ros::object
  :slots (_num _system _flags1 _flags2 _elevation _azimuth _frequency ))

(defmethod gps_msgs::Satellite
  (:init
   (&key
    ((:num __num) 0)
    ((:system __system) 0)
    ((:flags1 __flags1) 0)
    ((:flags2 __flags2) 0)
    ((:elevation __elevation) 0)
    ((:azimuth __azimuth) 0)
    ((:frequency __frequency) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _system (round __system))
   (setq _flags1 (round __flags1))
   (setq _flags2 (round __flags2))
   (setq _elevation (round __elevation))
   (setq _azimuth (round __azimuth))
   (setq _frequency __frequency)
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:system
   (&optional __system)
   (if __system (setq _system __system)) _system)
  (:flags1
   (&optional __flags1)
   (if __flags1 (setq _flags1 __flags1)) _flags1)
  (:flags2
   (&optional __flags2)
   (if __flags2 (setq _flags2 __flags2)) _flags2)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:serialization-length
   ()
   (+
    ;; uint8 _num
    1
    ;; uint8 _system
    1
    ;; uint8 _flags1
    1
    ;; uint8 _flags2
    1
    ;; uint8 _elevation
    1
    ;; uint16 _azimuth
    2
    ;; uint8[3] _frequency
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _num
       (write-byte _num s)
     ;; uint8 _system
       (write-byte _system s)
     ;; uint8 _flags1
       (write-byte _flags1 s)
     ;; uint8 _flags2
       (write-byte _flags2 s)
     ;; uint8 _elevation
       (write-byte _elevation s)
     ;; uint16 _azimuth
       (write-word _azimuth s)
     ;; uint8[3] _frequency
     (princ _frequency s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _system
     (setq _system (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags1
     (setq _flags1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags2
     (setq _flags2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _elevation
     (setq _elevation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _azimuth
     (setq _azimuth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[3] _frequency
   (setq _frequency (make-array 3 :element-type :char))
   (replace _frequency buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get gps_msgs::Satellite :md5sum-) "e43ed4aebf909b95af15ba72c23c4a2a")
(setf (get gps_msgs::Satellite :datatype-) "gps_msgs/Satellite")
(setf (get gps_msgs::Satellite :definition-)
      "
uint8 num
uint8 system
uint8 flags1
uint8 flags2
uint8 elevation
uint16 azimuth
uint8[3] frequency

")



(provide :gps_msgs/Satellite "e43ed4aebf909b95af15ba72c23c4a2a")


