;; Auto-generated. Do not edit!


(when (boundp 'can_msgs::Frame)
  (if (not (find-package "CAN_MSGS"))
    (make-package "CAN_MSGS"))
  (shadow 'Frame (find-package "CAN_MSGS")))
(unless (find-package "CAN_MSGS::FRAME")
  (make-package "CAN_MSGS::FRAME"))

(in-package "ROS")
;;//! \htmlinclude Frame.msg.html


(defclass can_msgs::Frame
  :super ros::object
  :slots (_id _is_rtr _is_extended _is_error _len _data ))

(defmethod can_msgs::Frame
  (:init
   (&key
    ((:id __id) 0)
    ((:is_rtr __is_rtr) nil)
    ((:is_extended __is_extended) nil)
    ((:is_error __is_error) nil)
    ((:len __len) 0)
    ((:data __data) (make-array 8 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _is_rtr __is_rtr)
   (setq _is_extended __is_extended)
   (setq _is_error __is_error)
   (setq _len (round __len))
   (setq _data __data)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:is_rtr
   (&optional __is_rtr)
   (if __is_rtr (setq _is_rtr __is_rtr)) _is_rtr)
  (:is_extended
   (&optional __is_extended)
   (if __is_extended (setq _is_extended __is_extended)) _is_extended)
  (:is_error
   (&optional __is_error)
   (if __is_error (setq _is_error __is_error)) _is_error)
  (:len
   (&optional __len)
   (if __len (setq _len __len)) _len)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; bool _is_rtr
    1
    ;; bool _is_extended
    1
    ;; bool _is_error
    1
    ;; uint8 _len
    1
    ;; uint8[8] _data
    (* 1    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; bool _is_rtr
       (if _is_rtr (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_extended
       (if _is_extended (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_error
       (if _is_error (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _len
       (write-byte _len s)
     ;; uint8[8] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_rtr
     (setq _is_rtr (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_extended
     (setq _is_extended (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_error
     (setq _is_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _len
     (setq _len (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[8] _data
   (setq _data (make-array 8 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 8)
   ;;
   self)
  )

(setf (get can_msgs::Frame :md5sum-) "4cb4169590eea9366f0510af7121fabe")
(setf (get can_msgs::Frame :datatype-) "can_msgs/Frame")
(setf (get can_msgs::Frame :definition-)
      "uint32 id
bool is_rtr
bool is_extended
bool is_error
uint8 len
uint8[8] data


")



(provide :can_msgs/Frame "4cb4169590eea9366f0510af7121fabe")


