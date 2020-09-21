#include "ros/ros.h"
#include "msgs_record/glosa.h"
#include "glosa/qt_GUI.h"
#include <algorithm>
#include <cmath>
#include <unordered_map>
#include <iostream>

#include <fstream>
#include <string>
#include <sstream>

using namespace std;


#define RED 3
#define GREEN 5
#define YELLOW 7
#define minRoodSpeed  20/3.6
#define disThreshold  350

FILE *fp;

int gPeriod, rPeriod; // 当前路口相位

double interUtmx , interUtmy; // 交叉口 x y
// bool useVirtualPos;
ros::Publisher pub_gui; // 发布建议GUI数据

// 角度转弧度
double rad(double d)
{
	return d*M_PI/180.0;
}

// 判断方向，如果是大周路向软件大道开，那么就返回true，反方向返回 false
bool isD2R(double Yaw){
	if ( (Yaw > rad(315) && Yaw < rad(360)) || (Yaw > 0 && Yaw < rad(135)) )
	{
		return true;
	}
	return false;
}

// 计算两点之间的距离
double dis2Points(const double& Utmx1, const double& Utmy1, const double& Utmx2, const double& Utmy2, bool is_sqrt)
{
	double x = Utmx1 - Utmx2;
	double y = Utmy1 - Utmy2;

	if(is_sqrt)
		return sqrt(x*x +y*y);
	return x*x+y*y;
}

// 路口信息结构体
struct pheInfo{
	int strGreen;
	int strRed;
	double UtmxD2R;
	double UtmyD2R;
	double UtmxR2D;
	double UtmyR2D;
	
	pheInfo(){
		strGreen = -1; strRed = -1;
		UtmxD2R = -1; UtmyD2R = -1;
		UtmxR2D = -1; UtmyR2D = -1;
	}

	pheInfo(int strGreen, int strRed, double UtmxD2R, double UtmyD2R, double UtmxR2D, double UtmyR2D){
		this->strGreen = strGreen;
		this->strRed = strRed;
		this->UtmxD2R = UtmxD2R;
		this->UtmyD2R = UtmyD2R;
		this->UtmxR2D = UtmxR2D;
		this->UtmyR2D = UtmyR2D;
	}
};

unordered_map<int , pheInfo> pheMap{
	

	{8018, pheInfo(56, 35, 665278.450725, 3535915.404033, 665275.882297, 3535956.689589)},	// 大周路
	{8017, pheInfo(62, 49, 665384.862136, 3536232.520665, 665399.269619, 3536274.358657)},	// 定坊路
	{8016, pheInfo(56, 55, 665678.855329, 3536634.233889, 665693.511064, 3536668.01211)},	// 王燕街
	{8015, pheInfo(65, 46, 665959.625302, 3537041.42123, 665965.091727, 3537087.222544)},	// 银杏山庄
	{8071, pheInfo(57, 54, 666003.870089, 3537382.800429, 666000.273499, 3537439.431006)},	// 龙西路
	{8014, pheInfo(61, 50, 666023.34488, 3537603.809112, 666019.235678, 3537642.574775)},	// 春熙路
	{8013, pheInfo(59, 52, 666053.998284, 3537897.589861, 666045.541895, 3537936.454427)},   // 春江路
	{8058, pheInfo(52, 59, 666078.58113, 3538271.20052, 666081.556679, 3538327.559576)},  // 铁心桥立交不准确
	{8011, pheInfo(53, 58, 666122.241156, 3538868.262538, 666113.903782, 3538930.921911)},  // 宁双路
	{8003, pheInfo(30, 85, 666151.06325, 3539262.317893, 666134.022986, 3539334.731449)}  // 软件大道

};


void chatterCalllback(const msgs_record::glosa::ConstPtr& msg)
{
	ROS_INFO("************************************************");
	double upperSpeed = 0; // 建议最高车数、最低车速、是否保持当前车速度
	double bottomSpeed = 0;
	int keepCurSpeed = 1;
	
	
	double curTimeStamp = msg->header.stamp.toSec();

	double latitude = msg->latitude; // 维度
	double longitude = msg->longitude; // 经度
	double height = msg->height; // 高度

	double EgoSpeed = msg->EgoSpeed; // 自车速度
	double Yaw = msg->Yaw; // 自车航向

	double Prespeed = msg->speed; // 前车速度
	
	int Str_is_val = msg->Str_is_val; // 直行信号灯是否有效、颜色、剩余时长
	int StrColor = msg->StrSignalState; 
	double StrlikelyEndTime = msg->StrlikelyEndTime;

	if (StrColor == 3)
		ROS_INFO("StrColor is red");
	else if (StrColor == 5)
		ROS_INFO("StrColor is green");
	else if (StrColor == 7)
		ROS_INFO("StrColor is yellow");

	ROS_INFO("StrlikelyEndTime = %.1f", StrlikelyEndTime);
	
	
	int Left_is_val = msg->Left_is_val;// 左转信号灯是否有效、颜色、剩余时长
	int LeftColor = msg->LeftSignalState;
	double LeftlikelyEndTime = msg->LeftlikelyEndTime;

	int Right_is_val = msg->Right_is_val;// 右转信号灯是否有效、颜色、剩余时长
	int RightColor = msg->RighSignalState;
	double RightlikelyEndTime = msg->RightlikelyEndTime;
	

	double maxRoodSpeed = msg->SpeedLimit;  // 最大道路限速
	int stationID = msg->stationId;  // 路口ID

	double curUtmx = msg-> Utmx;	// 车辆x位置
	double curUtmy = msg-> Utmy;	// 车辆y位置

	double dis2inter_obu = msg->dis2inter; // 来自OBU：距离路口的距离
	double dis2inter = dis2inter_obu; // 计算得到的距离

//	ROS_INFO("dis2inter_obu = %.1f", dis2inter_obu);

	// double dis2inter_cal = dis2Points(curUtmx, curUtmy, interUtmx, interUtmy, 1);  // 计算得到的距离路口距离
	
	// double dis2inter;
	
	// if (dis2inter_obu > 0 && dis2inter_obu < disThreshold)
	// 	dis2inter = dis2inter_cal;
	// else
	// {
	// 	dis2inter = 
	// }
	
//	if (useVirtualPos)
//		dis2inter = dis2inter_virtual;
//	else
//		dis2inter = dis2inter_real;
		
	// ROS_INFO("************************************************");
	// ROS_INFO("dis2inter is %.1f",dis2inter);
	// ROS_INFO("StrlikelyEndTime is %.1f",StrlikelyEndTime);

//	if (StrColor == 3)
//		ROS_INFO("StrColor is red");
//	else if (StrColor == 5)
//		ROS_INFO("StrColor is green");
//	else if (StrColor == 7)
//		ROS_INFO("StrColor is yellow");

//	ROS_INFO("Ego Speed is %.1f",EgoSpeed*3.6);

	glosa::qt_GUI my_gui;

	my_gui.EgoSpeed = EgoSpeed;
	my_gui.PreSpeed = Prespeed;
	my_gui.LimitSpeed = maxRoodSpeed;

	// my_gui.Dis2Stopline = dis2inter;
	my_gui.intersectionID = stationID;
	ROS_INFO("station id = %d", my_gui.intersectionID);
	my_gui.Latitude = latitude;
	my_gui.Longitude = longitude;
	my_gui.Height = height;
	my_gui.Str_is_val = Str_is_val;
	my_gui.StrColor = StrColor;
	my_gui.StrlikelyEndTime = StrlikelyEndTime;

	my_gui.Left_is_val = Left_is_val;
	my_gui.LeftColor = LeftColor;
	my_gui.LeftlikelyEndTime = LeftlikelyEndTime;

	my_gui.Right_is_val = Right_is_val;
	my_gui.RightColor = RightColor;
	my_gui.RightlikelyEndTime = RightlikelyEndTime;

	my_gui.upperSpeed = 0;
	my_gui.bottomSpeed = 0;
	my_gui.keepCurSpeed = 1;

	// 当前路口是规定路口之一
	if (pheMap.find(stationID) != pheMap.end())
	{
		if ( isD2R(Yaw) )
		{
			interUtmx = pheMap[stationID].UtmxD2R;
			interUtmy = pheMap[stationID].UtmyD2R;
		}
		else
		{
			interUtmx = pheMap[stationID].UtmxR2D;
			interUtmy = pheMap[stationID].UtmyR2D;
		}

		gPeriod = pheMap[stationID].strGreen;
		rPeriod = pheMap[stationID].strRed + 3;

		dis2inter = dis2Points(curUtmx, curUtmy, interUtmx, interUtmy, 1);
//		ROS_INFO("interSection ID = %d", stationID);
		ROS_INFO("dis2inter_cal = %.1f", dis2inter);
		my_gui.Dis2Stopline = dis2inter;

		// 在控制范围之内
		if (dis2inter_obu > 0 && dis2inter_obu < disThreshold)
		{
			if (gPeriod == -1)
			{
				ROS_INFO("map error");
				return;
			}
			// 如果当前是红灯(黄灯认为是红灯)
			if ( StrColor == RED || StrColor == YELLOW)
			{
				int i = 1; // 从第 i 个绿灯路口通过

				while (true){
					double longPassTime = StrlikelyEndTime + gPeriod + (rPeriod + gPeriod)*(i-1);
					double shortPassTime = longPassTime - gPeriod;
					upperSpeed = min(maxRoodSpeed, dis2inter/shortPassTime);
					bottomSpeed = max(minRoodSpeed, dis2inter/longPassTime);
					// 如果当前的建议车速区间与道路限速没有交集
					if (upperSpeed < minRoodSpeed || bottomSpeed > maxRoodSpeed){
						
						if (upperSpeed < minRoodSpeed){
							break;
						}
						else{
							i++;
						}
					}
					// 如果有交集，并且要求最快通过路口，就以当前车速区间给出建议
					else{
						my_gui.upperSpeed = upperSpeed;
						my_gui.bottomSpeed = bottomSpeed;
						my_gui.keepCurSpeed = 0;
						ROS_INFO("Current light is red, NO.%d", i);
						break;
					}
				}
			}
			// 如果当前是绿灯
			else
			{
				int i = 1;

				while(true){
					double longPassTime = StrlikelyEndTime + (rPeriod + gPeriod)*(i-1);
					double shortPassTime = max(longPassTime - gPeriod, 0.0);
					upperSpeed = min(maxRoodSpeed, dis2inter/shortPassTime);
					bottomSpeed = max(minRoodSpeed, dis2inter/longPassTime);
					// 如果当前的建议车速区间与道路限速没有交集
					if (upperSpeed < minRoodSpeed || bottomSpeed > maxRoodSpeed){
						if (upperSpeed < minRoodSpeed){
							break;
						}
						else{
							i++;
						}
					}
					// 如果有交集，并且要求最快通过路口，就以当前车速区间给出建议
					else{
						my_gui.upperSpeed = upperSpeed;
						my_gui.bottomSpeed = bottomSpeed;
						my_gui.keepCurSpeed = 0;
						ROS_INFO("Current light is green, NO.%d", i);
						break;
					}
				}
			}
		}
	}
  else
  {
    ROS_INFO("dis2inter_obu = %.1f", dis2inter_obu);
  }
	pub_gui.publish(my_gui);
	ROS_INFO("advice speed : [%.1f, %.1f], isKeepSpeed : %d", my_gui.bottomSpeed*3.6, my_gui.upperSpeed*3.6, my_gui.keepCurSpeed);
	ROS_INFO("************************************************");
//	fpcsv << stationID<< "," <<curTimeStamp << "," <<EgoSpeed << ","<< my_gui.bottomSpeed << "," << my_gui.upperSpeed << endl;
	fprintf(fp,"%d\t%.3f\t%.1f\t%.1f\t%.1f\n",stationID,curTimeStamp,EgoSpeed,my_gui.bottomSpeed,my_gui.upperSpeed);
	fflush(fp);

// 	if (dis2inter < disThreshold && dis2inter > 0 && pheMap.find(stationID) != pheMap.end())
// 	{	
// 		gPeriod = pheMap[stationID].strGreen;
// 		rPeriod = pheMap[stationID].strRed + 3;
// 		if (gPeriod == -1)
// 		{
// 			cout << "map error" << endl;
// 			return;
// 		}
// 		// 如果当前是红灯(黄灯认为是红灯)
// 		if ( StrColor == RED || StrColor == YELLOW){
// 			int i = 1; // 从第 i 个绿灯路口通过

// 			while (true){
// 				double longPassTime = StrlikelyEndTime + gPeriod + (rPeriod + gPeriod)*(i-1);
// 				double shortPassTime = longPassTime - gPeriod;
// 				upperSpeed = min(maxRoodSpeed, dis2inter/shortPassTime);
// 				bottomSpeed = max(minRoodSpeed, dis2inter/longPassTime);
// 				// 如果当前的建议车速区间与道路限速没有交集
// 				if (upperSpeed < minRoodSpeed || bottomSpeed > maxRoodSpeed){
					
// 					if (upperSpeed < minRoodSpeed){
// 						my_gui.upperSpeed = 0;
// 						my_gui.bottomSpeed = 0;
// 						my_gui.keepCurSpeed = 1;
// 						break;
// 					}
// 					else{
// 						i++;
// 					}
// 				}
// 				// 如果有交集，并且要求最快通过路口，就以当前车速区间给出建议
// 				else{
// 					my_gui.upperSpeed = upperSpeed;
// 					my_gui.bottomSpeed = bottomSpeed;
// 					my_gui.keepCurSpeed = 0;
// 					break;
// 				}
// 			}
// 		}
// 		// 如果当前是绿灯
// 		else{
// 			int i = 1;
// 			while(true){
// 				double longPassTime = StrlikelyEndTime + (rPeriod + gPeriod)*(i-1);
// 				double shortPassTime = max(longPassTime - gPeriod, 0.0);
// 				upperSpeed = min(maxRoodSpeed, dis2inter/shortPassTime);
// 				bottomSpeed = max(minRoodSpeed, dis2inter/longPassTime);
// 				// 如果当前的建议车速区间与道路限速没有交集
// 				if (upperSpeed < minRoodSpeed || bottomSpeed > maxRoodSpeed){
// 					if (upperSpeed < minRoodSpeed){
// 						my_gui.upperSpeed = 0;
// 						my_gui.bottomSpeed = 0;
// 						my_gui.keepCurSpeed = 1;
// 						break;
// 					}
// 					else{
// 						i++;
// 					}
// 				}
// 				// 如果有交集，并且要求最快通过路口，就以当前车速区间给出建议
// 				else{
// 					my_gui.upperSpeed = upperSpeed;
// 					my_gui.bottomSpeed = bottomSpeed;
// 					my_gui.keepCurSpeed = 0;
// 					break;
// 				}
// 			}
// 		}
// 	}
	
// 	else
// 	{
// 		my_gui.upperSpeed = 0;
// 		my_gui.bottomSpeed = 0;
// 		my_gui.keepCurSpeed = 1;
// 	}
// 	pub_gui.publish(my_gui);
// 	ROS_INFO("advice speed : [%.1f, %.1f], isKeepSpeed : %d", my_gui.bottomSpeed*3.6, my_gui.upperSpeed*3.6, my_gui.keepCurSpeed);
// 	ROS_INFO("************************************************");
// }

}



int main(int argc, char** argv)
{
	ros::init(argc, argv, "glosa_node");
	ros::NodeHandle nh;
	ros::NodeHandle nh_private("~");
	ros::Rate loop_rate(2);
	
	string FilePath = nh_private.param<string>("file_path","$(find glosa)/data/");
	string FileName = nh_private.param<string>("file_name","glosa.txt");
	
	
	fp = fopen((FilePath+FileName).c_str(),"w");
	
	if(fp == NULL)
	{
		ROS_INFO("open record data file %s failed !!!",(FilePath+FileName).c_str());
		return false;
	}
	
	fprintf(fp,"%s\t%s\t%s\t%s\t%s\n","stationID","curTimeStamp","curSpeed","bottomSpeed","upperSpeed");
//	fpcsv << "stationID" << "," <<"timeStamp" << "," << "curSpeed" << "," << "advMin" << "," << "advMax" << endl;

//	interUtmx = nh_private.param<double>("interUtmx",671212.901386);  // 交叉口 x
//	interUtmy = nh_private.param<double>("interUtmy",3529447.352044); // 交叉口 y
//	useVirtualPos = nh_private.param<bool>("useVirtualPos",true); // 是否使用虚拟路口
	// 定义一个订阅者，订阅glosa_topic消息，进入回调函数
	ros::Subscriber sub_glosa = nh.subscribe( nh_private.param<string>("glosa_topic","/glosa"), 1, chatterCalllback );
	// 定义一个发布者，发布gui信息
	pub_gui = nh.advertise<glosa::qt_GUI>(nh_private.param<string>("gui_topic","/gui"),2);
	
	while (true){
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}

