#!/usr/bin/env python
# -*- coding:UTF-8 -*-
import rospy
import socket 
import binascii
import csv
from v2x.msg import spat




def callback(data):

	print "*" *30
	rospy.loginfo("from obu")
	rospy.loginfo("%.3f",data.header.stamp.to_sec())
	rospy.loginfo("stationId = %d",data.stationId)
	rospy.loginfo("SpeedLimit = %f",data.SpeedLimit * 3.6)
	rospy.loginfo("dis2inter =  %f",data.dis2inter)
	rospy.loginfo("StrSignalState = %d, Strtime = %.1f",data.StrSignalState, data.StrlikelyEndTime)
	rospy.loginfo("LeftSignalState = %d, Lefttime = %.1f",data.LeftSignalState, data.LeftlikelyEndTime)
	rospy.loginfo("RighSignalState = %d, Righttime = %.1f",data.RighSignalState, data.RightlikelyEndTime)
	print "*" * 30

	myTime = data.header.stamp.to_sec()

	myStationId = data.stationId

	mySpeedLimit = data.SpeedLimit

	myDis2inter = data.dis2inter
	
	myStr_is_val = data.Str_is_val
	myStrSignalState =  data.StrSignalState
	myStrlikelyEndTime =  data.StrlikelyEndTime
	
	myLeft_is_val = data.Left_is_val
	myLeftSignalState =  data.LeftSignalState
	myLeftlikelyEndTime = data.LeftlikelyEndTime
	
	myRight_is_val = data.Right_is_val
	myRighSignalState = data.RighSignalState
	myRightlikelyEndTime = data.RightlikelyEndTime

	csv_writer.writerow([myTime, myStationId, mySpeedLimit, myDis2inter, myStr_is_val, myStrSignalState, myStrlikelyEndTime, myLeft_is_val, myLeftSignalState, myLeftlikelyEndTime, myRight_is_val ,myRighSignalState, myRightlikelyEndTime])
	
	

	# f.write(myTime)
	# f.write(myStationId)
	# f.write(mySpeedLimit)
	# f.write(myDis2inter)
	# f.write(myStrSignalState)
	# f.write(myStrlikelyEndTime)
	# f.write(myLeftSignalState)
	# f.write(myLeftlikelyEndTime)
	# f.write(myRighSignalState)
	# f.write(myRightlikelyEndTime)
	
def listener():
	rospy.init_node('obu_record', anonymous=False)
	SpatPath = rospy.get_param("~file_path")
	SpatName = rospy.get_param("~file_name")
	
	f = open(SpatPath + SpatName,'w')
	print SpatPath + SpatName
	global csv_writer 
	csv_writer = csv.writer(f)
	
	csv_writer.writerow(["Stamp","StationId","SpeedLimit", "Dis2inter", "Str_is_val", "StrSignalState","StrlikelyEndTime", "Left_is_val","LeftSignalState", "LeftlikelyEndTime","Right_is_val", "RighSignalState", "RightlikelyEndTime"])
	
	rospy.Subscriber('v2x_spat',spat,callback)
	rospy.spin()



if __name__ == '__main__':

	listener()
	pass






























