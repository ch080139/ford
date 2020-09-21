uint8 RED = 3
uint8 GREEN = 5
uint8 YELLOW = 7
uint8 NEW_TARGET = 1
uint8 UPDATE_TARGET = 3
uint8 COASTED_TARGET = 4

std_msgs/Header header

float64 latitude
float64 longitude
float64 height
float64 Utmx
float64 Utmy
float64 Yaw
float64 EgoSpeed

uint16 stationId
float64 SpeedLimit
float64 dis2inter

uint8 Str_is_val
uint8 StrSignalState
float64 StrlikelyEndTime

uint8 Left_is_val
uint8 LeftSignalState
float64 LeftlikelyEndTime

uint8 Right_is_val
uint8 RighSignalState
float64 RightlikelyEndTime

float64 azimuth
float64 distance
float64 speed
uint8 status
uint8 id
