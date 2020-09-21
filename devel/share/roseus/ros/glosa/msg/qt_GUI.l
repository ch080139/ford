;; Auto-generated. Do not edit!


(when (boundp 'glosa::qt_GUI)
  (if (not (find-package "GLOSA"))
    (make-package "GLOSA"))
  (shadow 'qt_GUI (find-package "GLOSA")))
(unless (find-package "GLOSA::QT_GUI")
  (make-package "GLOSA::QT_GUI"))

(in-package "ROS")
;;//! \htmlinclude qt_GUI.msg.html


(intern "*ISKEEPCURSPEED*" (find-package "GLOSA::QT_GUI"))
(shadow '*ISKEEPCURSPEED* (find-package "GLOSA::QT_GUI"))
(defconstant glosa::qt_GUI::*ISKEEPCURSPEED* 1)
(intern "*NOTKEEPCURSPEED*" (find-package "GLOSA::QT_GUI"))
(shadow '*NOTKEEPCURSPEED* (find-package "GLOSA::QT_GUI"))
(defconstant glosa::qt_GUI::*NOTKEEPCURSPEED* 0)
(defclass glosa::qt_GUI
  :super ros::object
  :slots (_EgoSpeed _PreSpeed _LimitSpeed _Dis2Stopline _intersectionID _Latitude _Longitude _Height _upperSpeed _bottomSpeed _keepCurSpeed _Str_is_val _StrColor _StrlikelyEndTime _Left_is_val _LeftColor _LeftlikelyEndTime _Right_is_val _RightColor _RightlikelyEndTime ))

(defmethod glosa::qt_GUI
  (:init
   (&key
    ((:EgoSpeed __EgoSpeed) 0.0)
    ((:PreSpeed __PreSpeed) 0.0)
    ((:LimitSpeed __LimitSpeed) 0.0)
    ((:Dis2Stopline __Dis2Stopline) 0.0)
    ((:intersectionID __intersectionID) 0)
    ((:Latitude __Latitude) 0.0)
    ((:Longitude __Longitude) 0.0)
    ((:Height __Height) 0.0)
    ((:upperSpeed __upperSpeed) 0.0)
    ((:bottomSpeed __bottomSpeed) 0.0)
    ((:keepCurSpeed __keepCurSpeed) 0)
    ((:Str_is_val __Str_is_val) 0)
    ((:StrColor __StrColor) 0.0)
    ((:StrlikelyEndTime __StrlikelyEndTime) 0.0)
    ((:Left_is_val __Left_is_val) 0)
    ((:LeftColor __LeftColor) 0.0)
    ((:LeftlikelyEndTime __LeftlikelyEndTime) 0.0)
    ((:Right_is_val __Right_is_val) 0)
    ((:RightColor __RightColor) 0)
    ((:RightlikelyEndTime __RightlikelyEndTime) 0.0)
    )
   (send-super :init)
   (setq _EgoSpeed (float __EgoSpeed))
   (setq _PreSpeed (float __PreSpeed))
   (setq _LimitSpeed (float __LimitSpeed))
   (setq _Dis2Stopline (float __Dis2Stopline))
   (setq _intersectionID (round __intersectionID))
   (setq _Latitude (float __Latitude))
   (setq _Longitude (float __Longitude))
   (setq _Height (float __Height))
   (setq _upperSpeed (float __upperSpeed))
   (setq _bottomSpeed (float __bottomSpeed))
   (setq _keepCurSpeed (round __keepCurSpeed))
   (setq _Str_is_val (round __Str_is_val))
   (setq _StrColor (float __StrColor))
   (setq _StrlikelyEndTime (float __StrlikelyEndTime))
   (setq _Left_is_val (round __Left_is_val))
   (setq _LeftColor (float __LeftColor))
   (setq _LeftlikelyEndTime (float __LeftlikelyEndTime))
   (setq _Right_is_val (round __Right_is_val))
   (setq _RightColor (round __RightColor))
   (setq _RightlikelyEndTime (float __RightlikelyEndTime))
   self)
  (:EgoSpeed
   (&optional __EgoSpeed)
   (if __EgoSpeed (setq _EgoSpeed __EgoSpeed)) _EgoSpeed)
  (:PreSpeed
   (&optional __PreSpeed)
   (if __PreSpeed (setq _PreSpeed __PreSpeed)) _PreSpeed)
  (:LimitSpeed
   (&optional __LimitSpeed)
   (if __LimitSpeed (setq _LimitSpeed __LimitSpeed)) _LimitSpeed)
  (:Dis2Stopline
   (&optional __Dis2Stopline)
   (if __Dis2Stopline (setq _Dis2Stopline __Dis2Stopline)) _Dis2Stopline)
  (:intersectionID
   (&optional __intersectionID)
   (if __intersectionID (setq _intersectionID __intersectionID)) _intersectionID)
  (:Latitude
   (&optional __Latitude)
   (if __Latitude (setq _Latitude __Latitude)) _Latitude)
  (:Longitude
   (&optional __Longitude)
   (if __Longitude (setq _Longitude __Longitude)) _Longitude)
  (:Height
   (&optional __Height)
   (if __Height (setq _Height __Height)) _Height)
  (:upperSpeed
   (&optional __upperSpeed)
   (if __upperSpeed (setq _upperSpeed __upperSpeed)) _upperSpeed)
  (:bottomSpeed
   (&optional __bottomSpeed)
   (if __bottomSpeed (setq _bottomSpeed __bottomSpeed)) _bottomSpeed)
  (:keepCurSpeed
   (&optional __keepCurSpeed)
   (if __keepCurSpeed (setq _keepCurSpeed __keepCurSpeed)) _keepCurSpeed)
  (:Str_is_val
   (&optional __Str_is_val)
   (if __Str_is_val (setq _Str_is_val __Str_is_val)) _Str_is_val)
  (:StrColor
   (&optional __StrColor)
   (if __StrColor (setq _StrColor __StrColor)) _StrColor)
  (:StrlikelyEndTime
   (&optional __StrlikelyEndTime)
   (if __StrlikelyEndTime (setq _StrlikelyEndTime __StrlikelyEndTime)) _StrlikelyEndTime)
  (:Left_is_val
   (&optional __Left_is_val)
   (if __Left_is_val (setq _Left_is_val __Left_is_val)) _Left_is_val)
  (:LeftColor
   (&optional __LeftColor)
   (if __LeftColor (setq _LeftColor __LeftColor)) _LeftColor)
  (:LeftlikelyEndTime
   (&optional __LeftlikelyEndTime)
   (if __LeftlikelyEndTime (setq _LeftlikelyEndTime __LeftlikelyEndTime)) _LeftlikelyEndTime)
  (:Right_is_val
   (&optional __Right_is_val)
   (if __Right_is_val (setq _Right_is_val __Right_is_val)) _Right_is_val)
  (:RightColor
   (&optional __RightColor)
   (if __RightColor (setq _RightColor __RightColor)) _RightColor)
  (:RightlikelyEndTime
   (&optional __RightlikelyEndTime)
   (if __RightlikelyEndTime (setq _RightlikelyEndTime __RightlikelyEndTime)) _RightlikelyEndTime)
  (:serialization-length
   ()
   (+
    ;; float64 _EgoSpeed
    8
    ;; float64 _PreSpeed
    8
    ;; float64 _LimitSpeed
    8
    ;; float64 _Dis2Stopline
    8
    ;; uint32 _intersectionID
    4
    ;; float64 _Latitude
    8
    ;; float64 _Longitude
    8
    ;; float64 _Height
    8
    ;; float64 _upperSpeed
    8
    ;; float64 _bottomSpeed
    8
    ;; uint8 _keepCurSpeed
    1
    ;; uint8 _Str_is_val
    1
    ;; float64 _StrColor
    8
    ;; float64 _StrlikelyEndTime
    8
    ;; uint8 _Left_is_val
    1
    ;; float64 _LeftColor
    8
    ;; float64 _LeftlikelyEndTime
    8
    ;; uint8 _Right_is_val
    1
    ;; uint8 _RightColor
    1
    ;; float64 _RightlikelyEndTime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _EgoSpeed
       (sys::poke _EgoSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _PreSpeed
       (sys::poke _PreSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LimitSpeed
       (sys::poke _LimitSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Dis2Stopline
       (sys::poke _Dis2Stopline (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _intersectionID
       (write-long _intersectionID s)
     ;; float64 _Latitude
       (sys::poke _Latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Longitude
       (sys::poke _Longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Height
       (sys::poke _Height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _upperSpeed
       (sys::poke _upperSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bottomSpeed
       (sys::poke _bottomSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _keepCurSpeed
       (write-byte _keepCurSpeed s)
     ;; uint8 _Str_is_val
       (write-byte _Str_is_val s)
     ;; float64 _StrColor
       (sys::poke _StrColor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _StrlikelyEndTime
       (sys::poke _StrlikelyEndTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _Left_is_val
       (write-byte _Left_is_val s)
     ;; float64 _LeftColor
       (sys::poke _LeftColor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LeftlikelyEndTime
       (sys::poke _LeftlikelyEndTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _Right_is_val
       (write-byte _Right_is_val s)
     ;; uint8 _RightColor
       (write-byte _RightColor s)
     ;; float64 _RightlikelyEndTime
       (sys::poke _RightlikelyEndTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _EgoSpeed
     (setq _EgoSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _PreSpeed
     (setq _PreSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LimitSpeed
     (setq _LimitSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Dis2Stopline
     (setq _Dis2Stopline (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _intersectionID
     (setq _intersectionID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _Latitude
     (setq _Latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Longitude
     (setq _Longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Height
     (setq _Height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _upperSpeed
     (setq _upperSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bottomSpeed
     (setq _bottomSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _keepCurSpeed
     (setq _keepCurSpeed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Str_is_val
     (setq _Str_is_val (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _StrColor
     (setq _StrColor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _StrlikelyEndTime
     (setq _StrlikelyEndTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _Left_is_val
     (setq _Left_is_val (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _LeftColor
     (setq _LeftColor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LeftlikelyEndTime
     (setq _LeftlikelyEndTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _Right_is_val
     (setq _Right_is_val (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RightColor
     (setq _RightColor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _RightlikelyEndTime
     (setq _RightlikelyEndTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get glosa::qt_GUI :md5sum-) "27279271049a075f93453cd8cea1d9e3")
(setf (get glosa::qt_GUI :datatype-) "glosa/qt_GUI")
(setf (get glosa::qt_GUI :definition-)
      "uint8 iskeepCurSpeed = 1
uint8 notkeepCurSpeed = 0

float64 EgoSpeed
float64 PreSpeed
float64 LimitSpeed
float64 Dis2Stopline

uint32 intersectionID

float64 Latitude
float64 Longitude
float64 Height


float64 upperSpeed
float64 bottomSpeed
uint8 keepCurSpeed

uint8 Str_is_val
float64 StrColor
float64 StrlikelyEndTime

uint8 Left_is_val
float64 LeftColor
float64 LeftlikelyEndTime

uint8 Right_is_val
uint8 RightColor
float64 RightlikelyEndTime

")



(provide :glosa/qt_GUI "27279271049a075f93453cd8cea1d9e3")


