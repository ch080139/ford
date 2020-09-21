;; Auto-generated. Do not edit!


(when (boundp 'esr_radar::ObjectArray)
  (if (not (find-package "ESR_RADAR"))
    (make-package "ESR_RADAR"))
  (shadow 'ObjectArray (find-package "ESR_RADAR")))
(unless (find-package "ESR_RADAR::OBJECTARRAY")
  (make-package "ESR_RADAR::OBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass esr_radar::ObjectArray
  :super ros::object
  :slots (_header _size _objects ))

(defmethod esr_radar::ObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:size __size) 0)
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance esr_radar::Object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _size (round __size))
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _size
    2
    ;; esr_radar/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _size
       (write-word _size s)
     ;; esr_radar/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _size
     (setq _size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; esr_radar/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance esr_radar::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get esr_radar::ObjectArray :md5sum-) "531e39cf33500dcf12cc20e992f43556")
(setf (get esr_radar::ObjectArray :datatype-) "esr_radar/ObjectArray")
(setf (get esr_radar::ObjectArray :definition-)
      "
Header header

uint16 size

Object[] objects


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
MSG: esr_radar/Object
uint8 NEW_TARGET = 1
uint8 UPDATE_TARGET = 3
uint8 COASTED_TARGET = 4

Header header

float32 azimuth
float32 distance

float32 x
float32 y

float32 speed
uint8 status
uint8 id


")



(provide :esr_radar/ObjectArray "531e39cf33500dcf12cc20e992f43556")


