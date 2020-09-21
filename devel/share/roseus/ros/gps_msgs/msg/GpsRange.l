;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::GpsRange)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'GpsRange (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::GPSRANGE")
  (make-package "GPS_MSGS::GPSRANGE"))

(in-package "ROS")
;;//! \htmlinclude GpsRange.msg.html


(defclass gps_msgs::GpsRange
  :super ros::object
  :slots (_obs _prn _psr _psr_std _carrier ))

(defmethod gps_msgs::GpsRange
  (:init
   (&key
    ((:obs __obs) 0)
    ((:prn __prn) (make-array 33 :initial-element 0 :element-type :char))
    ((:psr __psr) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:psr_std __psr_std) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:carrier __carrier) (instance gps_msgs::Carrier :init))
    )
   (send-super :init)
   (setq _obs (round __obs))
   (setq _prn __prn)
   (setq _psr __psr)
   (setq _psr_std __psr_std)
   (setq _carrier __carrier)
   self)
  (:obs
   (&optional __obs)
   (if __obs (setq _obs __obs)) _obs)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:psr
   (&optional __psr)
   (if __psr (setq _psr __psr)) _psr)
  (:psr_std
   (&optional __psr_std)
   (if __psr_std (setq _psr_std __psr_std)) _psr_std)
  (:carrier
   (&rest __carrier)
   (if (keywordp (car __carrier))
       (send* _carrier __carrier)
     (progn
       (if __carrier (setq _carrier (car __carrier)))
       _carrier)))
  (:serialization-length
   ()
   (+
    ;; uint8 _obs
    1
    ;; uint8[33] _prn
    (* 1    33)
    ;; float64[33] _psr
    (* 8    33)
    ;; float32[33] _psr_std
    (* 4    33)
    ;; gps_msgs/Carrier _carrier
    (send _carrier :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _obs
       (write-byte _obs s)
     ;; uint8[33] _prn
     (princ _prn s)
     ;; float64[33] _psr
     (dotimes (i 33)
       (sys::poke (elt _psr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[33] _psr_std
     (dotimes (i 33)
       (sys::poke (elt _psr_std i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; gps_msgs/Carrier _carrier
       (send _carrier :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _obs
     (setq _obs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[33] _prn
   (setq _prn (make-array 33 :element-type :char))
   (replace _prn buf :start2 ptr-) (incf ptr- 33)
   ;; float64[33] _psr
   (dotimes (i (length _psr))
     (setf (elt _psr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float32[33] _psr_std
   (dotimes (i (length _psr_std))
     (setf (elt _psr_std i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; gps_msgs/Carrier _carrier
     (send _carrier :deserialize buf ptr-) (incf ptr- (send _carrier :serialization-length))
   ;;
   self)
  )

(setf (get gps_msgs::GpsRange :md5sum-) "e597bac5463f4a71cf3a7e9ae61b3675")
(setf (get gps_msgs::GpsRange :datatype-) "gps_msgs/GpsRange")
(setf (get gps_msgs::GpsRange :definition-)
      "## Useful general comment goes here
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



(provide :gps_msgs/GpsRange "e597bac5463f4a71cf3a7e9ae61b3675")


