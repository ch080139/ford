#!/usr/bin/env python
# -*- coding:UTF-8 -*-
import rospy
import socket 
import binascii
from v2x.msg import spat

def parse_spat(data):
	try:
		my_spat = spat()

		my_spat.header.frame_id = "obu"
		# 时间戳
		time_s = ord(data[23]) * pow(256,3) + ord(data[22]) * pow(256,2) + ord(data[21]) * pow(256,1) + ord(data[20]) * pow(256,0)
		time_ms = ord(data[27]) * pow(256,3) + ord(data[26]) * pow(256,2) + ord(data[25]) * pow(256,1) + ord(data[24]) * pow(256,0)
		ObuStameToSec = time_s + time_ms/1000.0
		my_spat.header.stamp = rospy.Time.from_sec(ObuStameToSec)

		# 路口id
		my_spat.stationId = ord(data[39]) * pow(256,3) + ord(data[38]) * pow(256,2) + ord(data[37]) * pow(256,1) + ord(data[36]) * pow(256,0)
                rospy.loginfo("station id = %d", my_spat.stationId)
                #print my_spat.stationId
		# 道路限速 m/s
		speed_value = ord(data[63]) * pow(256,3) + ord(data[62]) * pow(256,2) + ord(data[61]) * pow(256,1) + ord(data[60]) * pow(256,0)
		my_spat.SpeedLimit = speed_value /1000.0
		#print my_spat.SpeedLimit
		# 路口距离
		distanc_value = ord(data[67]) * pow(256,3) + ord(data[66]) * pow(256,2) + ord(data[65]) * pow(256,1) + ord(data[64]) * pow(256,0)
		my_spat.dis2inter = distanc_value / 10.0
#		print my_spat.dis2inter
		# 直行
		if data[52] == chr(0x01):
			my_spat.Str_is_val = 1
		else:
			my_spat.Str_is_val = 0
		
		my_spat.StrSignalState = ord(data[69])
		my_spat.StrlikelyEndTime = (ord(data[75]) * pow(256,1) + ord(data[74]) * pow(256,0)) * 0.1
		#print my_spat.StrlikelyEndTime
		# 左转
		if data[125] == chr(0x01):
			my_spat.Left_is_val = 1
		else:
			my_spat.Left_is_val = 0

		my_spat.LeftSignalState = ord(data[142]) * pow(256,0)
		my_spat.LeftlikelyEndTime = (ord(data[148]) * pow(256,1) + ord(data[147]) * pow(256,0)) * 0.1

		# 右转
		if data[198] == chr(0x01):
			my_spat.Right_is_val = 1
		else:
			my_spat.Right_is_val = 0

		my_spat.RighSignalState = ord(data[215]) * pow(256,0)
		my_spat.RightlikelyEndTime = (ord(data[221]) * pow(256,1) + ord(data[220]) * pow(256,0)) * 0.1
		spat_pub.publish(my_spat)
#		print my_spat.stationId

	except KeyError:
		print("KeyError..")
		return
	#print('\n')


def talker():
	port = 36730
	s = socket.socket(socket.AF_INET,socket.SOCK_DGRAM) 
	s.bind(("",port)) 
	print 'waiting on port:',port   
	fullPkg = ''
	# 设置发布的频率为10HZ
	rate=rospy.Rate(10)
	while not rospy.is_shutdown():
		datas,addr = s.recvfrom(300)
		pkg_len = 0
		datalen = len(datas) #接收到的数据包的长度
		for i in range(datalen)[:-1]:
			if datas[i] == chr(0x46) and datas[i+1] == chr(0x4f) and datas[i+2] == chr(0x52) and datas[i+3] == chr(0x44):
				if(datalen  > i+6):
					pkg_len = ord(datas[i+6]) * 256 + ord(datas[i+5]) # payload数据包的长度
					remaind = datalen - (i+6+1) # 判断一下获取到数据包长度能不能装的下payload 和 校验位
					if(remaind <= pkg_len):
						break
					fullPkg = datas[i+8:i+8+pkg_len] # fullpkg为一个完成的payload
					if datas[i+4] == chr(0x10): #SPAT
						parse_spat(fullPkg)
		rate.sleep()

if __name__=='__main__':
	# 发布到v2x_spat这个话题上，消息类型是spat
	spat_pub = rospy.Publisher('v2x_spat',spat,queue_size=2)
	# 初始化节点的名字，并加入一个随机数，使得节点名字唯一
	rospy.init_node('obu_node',anonymous=False)

	talker()
	pass


