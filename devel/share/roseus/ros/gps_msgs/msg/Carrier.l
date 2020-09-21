;; Auto-generated. Do not edit!


(when (boundp 'gps_msgs::Carrier)
  (if (not (find-package "GPS_MSGS"))
    (make-package "GPS_MSGS"))
  (shadow 'Carrier (find-package "GPS_MSGS")))
(unless (find-package "GPS_MSGS::CARRIER")
  (make-package "GPS_MSGS::CARRIER"))

(in-package "ROS")
;;//! \htmlinclude Carrier.msg.html


(defclass gps_msgs::Carrier
  :super ros::object
  :slots (_doppler _noise _phase _phase_std ))

(defmethod gps_msgs::Carrier
  (:init
   (&key
    ((:doppler __doppler) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:noise __noise) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:phase __phase) (make-array 33 :initial-element 0.0 :element-type :float))
    ((:phase_std __phase_std) (make-array 33 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _doppler __doppler)
   (setq _noise __noise)
   (setq _phase __phase)
   (setq _phase_std __phase_std)
   self)
  (:doppler
   (&optional __doppler)
   (if __doppler (setq _doppler __doppler)) _doppler)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:phase_std
   (&optional __phase_std)
   (if __phase_std (setq _phase_std __phase_std)) _phase_std)
  (:serialization-length
   ()
   (+
    ;; float64[33] _doppler
    (* 8    33)
    ;; float64[33] _noise
    (* 8    33)
    ;; float64[33] _phase
    (* 8    33)
    ;; float32[33] _phase_std
    (* 4    33)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[33] _doppler
     (dotimes (i 33)
       (sys::poke (elt _doppler i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _noise
     (dotimes (i 33)
       (sys::poke (elt _noise i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[33] _phase
     (dotimes (i 33)
       (sys::poke (elt _phase i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[33] _phase_std
     (dotimes (i 33)
       (sys::poke (elt _phase_std i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[33] _doppler
   (dotimes (i (length _doppler))
     (setf (elt _doppler i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _noise
   (dotimes (i (length _noise))
     (setf (elt _noise i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[33] _phase
   (dotimes (i (length _phase))
     (setf (elt _phase i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float32[33] _phase_std
   (dotimes (i (length _phase_std))
     (setf (elt _phase_std i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get gps_msgs::Carrier :md5sum-) "5eb5fb9988376e04bce4e625a341bd27")
(setf (get gps_msgs::Carrier :datatype-) "gps_msgs/Carrier")
(setf (get gps_msgs::Carrier :definition-)
      "## Useful comments go here

float64[33] doppler

## signal to noise ratio ,Cn0
float64[33] noise

## equivalent to the negative of the accumulated doppler
float64[33] phase
float32[33] phase_std
")



(provide :gps_msgs/Carrier "5eb5fb9988376e04bce4e625a341bd27")


