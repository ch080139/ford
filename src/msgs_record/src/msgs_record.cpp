#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include "gps_msgs/gpsUtm.h"
#include "v2x/spat.h"
#include "esr_radar/Object.h"
#include "esr_radar/ObjectArray.h"
#include "msgs_record/glosa.h"
#include<cmath>

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

using namespace std;
using namespace message_filters;

ofstream fpcsv;

ros::Publisher pub_glosa;

//void callback(const gps_msgs::gpsUtm::ConstPtr& gps_msg, const v2x::spat::ConstPtr& obu_msg, const esr_radar::Object::ConstPtr& esr_msg){
void callback(const gps_msgs::gpsUtm::ConstPtr& gps_msg, const v2x::spat::ConstPtr& obu_msg){
	ROS_INFO("************************************************");
//	ROS_INFO("from obu & gps & esr");
	ROS_INFO("from obu & gps");
	ROS_INFO("gps stamp:%.3f", gps_msg->header.stamp.toSec());
	ROS_INFO("obu stamp:%.3f", obu_msg->header.stamp.toSec());
//	ROS_INFO("esr stamp:%.3f", esr_msg->header.stamp.toSec());
//	ROS_INFO("************************************************");
	
    double curTimeStamp = gps_msg->header.stamp.toSec();

	double height = gps_msg->height; // 高度
    double longitude = gps_msg->longitude;  // 经度
    double latitude = gps_msg->latitude;  // 维度

    double cur_x = gps_msg->pose.pose.position.x;  // utmx
    double cur_y = gps_msg->pose.pose.position.y;  // utmy
//    ROS_INFO("curent longitude = %.3f, curent latitude = %.3f", longitude, latitude);
//    ROS_INFO("curent utmx = %.3f, curent utmy = %.3f", cur_x, cur_y);

    double cur_yaw = gps_msg->pose.covariance[0];  //航向 弧度
//    ROS_INFO("curent yaw = %.3f",cur_yaw);


    double north_speed = gps_msg->north_velocity; // 北向速度 m/s
    double east_speed = gps_msg->east_velocity; // 东向速度 m/s
    double cur_speed =  east_speed*sin(cur_yaw) + north_speed * cos(cur_yaw); // 车辆速度 m/s

    int stationId =  obu_msg->stationId;  // 路口id
    double SpeedLimit = obu_msg->SpeedLimit; // 道路限速
//    ROS_INFO("stationId = %d, SpeedLimit = %d",stationId, SpeedLimit);
    double dis2inter = obu_msg->dis2inter; // 到路口的距离s
    
//    ROS_INFO("dis2inter = %.1f",dis2inter);

    int Str_is_val = obu_msg->Str_is_val;  // 直行是否有效，直行灯的状态，直行剩余时间
    int StrSignalState = obu_msg->StrSignalState;
    double StrlikelyEndTime = obu_msg->StrlikelyEndTime;
    
    int Left_is_val = obu_msg->Left_is_val;  // 左转是否有效，左转灯的状态，左转剩余时间
    int LeftSignalState = obu_msg->LeftSignalState;
    double LeftlikelyEndTime = obu_msg->LeftlikelyEndTime;

    int Right_is_val = obu_msg->Right_is_val; // 右转是否有效，右转灯的状态，右转剩余时间
    int RighSignalState = obu_msg->RighSignalState;
    double RightlikelyEndTime = obu_msg->RightlikelyEndTime;
//    ROS_INFO("stationId = %d, SpeedLimit = %d",stationId, SpeedLimit);
    
//    if (StrSignalState == 3)
//		ROS_INFO("StrColor is red = %.1f",StrlikelyEndTime);
//	else if (StrSignalState == 5)
//		ROS_INFO("StrColor is green = %.1f", StrlikelyEndTime);
//	else if (StrSignalState == 7)
//		ROS_INFO("StrColor is yellow = %.1f", StrlikelyEndTime);

//    int TarId = esr_msg->id;  // 目标ID
//    double TarDistance = esr_msg->distance; // 目标距离
//    double TarAngle = esr_msg->azimuth; // 目标角度
//    double TarSpeed = esr_msg->speed; // 目标速度

    msgs_record::glosa my_glosa;
    
    my_glosa.header.frame_id = "glosa";
    my_glosa.header.stamp = gps_msg->header.stamp;
    
    my_glosa.latitude = latitude;
    my_glosa.longitude = longitude;
	my_glosa.height = height;
    my_glosa.Utmx = cur_x;
    my_glosa.Utmy = cur_y;
    my_glosa.Yaw = cur_yaw; // 弧度
	my_glosa.EgoSpeed = cur_speed; // 自车车速  m/s
    
    my_glosa.stationId = stationId; // 路口id
    my_glosa.SpeedLimit = SpeedLimit; // 道路限速 m/s
    my_glosa.dis2inter = dis2inter; // 路口距离
    
    my_glosa.Str_is_val = Str_is_val;  // 直行
    my_glosa.StrSignalState = StrSignalState; 
    my_glosa.StrlikelyEndTime = StrlikelyEndTime;
    
    my_glosa.Left_is_val = Left_is_val; // 左转
    my_glosa.LeftSignalState = LeftSignalState;
    my_glosa.LeftlikelyEndTime = LeftlikelyEndTime;
    
    my_glosa.Right_is_val = Right_is_val; // 右转
    my_glosa.RighSignalState = RighSignalState;
    my_glosa.RightlikelyEndTime = RightlikelyEndTime;
    
//    my_glosa.azimuth = TarAngle; // 方位角  度
//    my_glosa.distance = TarDistance;  // 距离
//    my_glosa.speed = TarSpeed; // 障碍物速度 m/s
//    my_glosa.status =  // 障碍物类别
//    my_glosa.id = TarId;  // 障碍物id
    
    pub_glosa.publish(my_glosa);
    
    fpcsv << to_string(curTimeStamp)+"\t" << ","<< to_string(longitude)+"\t" << "," << to_string(latitude)+"\t" << "," <<to_string(cur_x)+"\t" << "," << to_string(cur_y)+"\t" << "," <<to_string(cur_yaw) +"\t"<< "," << to_string(cur_speed*3.6)+"\t" << ",";
    fpcsv << to_string(stationId)+"\t" << "," << to_string(SpeedLimit)+"\t" << "," << to_string(dis2inter)+"\t" << ',';
    fpcsv << to_string(Str_is_val) + "\t" << ',' << to_string(StrSignalState)+"\t" << ','<< to_string(StrlikelyEndTime)+"\t" << ',';
    fpcsv << to_string(Left_is_val)+"\t" << ',' << to_string(LeftSignalState)+"\t" << ','<< to_string(LeftlikelyEndTime)+"\t" << ',';
//    fpcsv << to_string(Right_is_val)+"\t" << ',' << to_string(RighSignalState)+"\t"  << ',' << to_string(RightlikelyEndTime)+"\t" << ",";
//    fpcsv << to_string(TarId)+"\t" << ',' << to_string(TarDistance)+"\t" << ',' << to_string(TarAngle)+"\t" << "," << to_string(TarSpeed)+"\t" << endl;
    
    fpcsv << to_string(Right_is_val)+"\t" << ',' << to_string(RighSignalState)+"\t"  << ',' << to_string(RightlikelyEndTime)+"\t" << endl;
    

}


int main(int argc, char ** argv){
    ros::init(argc, argv, "msgs_record_node");
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");
    
    pub_glosa = nh.advertise<msgs_record::glosa>(nh_private.param<string>("glosa_topic","/glosa"),1);
	string FilePath = nh_private.param<string>("file_path","$(find msgs_record)/data/");
	string FileName = nh_private.param<string>("file_name","gps_obu_esr.csv");

	fpcsv.open(FilePath + FileName,ios::out);

	// 采集数据名称
	fpcsv << "curTimeStamp" << "," << "longitude" << "," << "latitude" <<"," << "UtmX" << "," << "UtmY" << "," << "Yaw" << "," << "Speed" << ",";
	fpcsv << "stationId" << "," << "SpeedLimit" << "," << "dis2inter" << "," ;
	fpcsv << "Str_is_val" << ',' << "StrSignalState" << ',' << "StrlikelyEndTime" << ",";
	fpcsv << "Left_is_val" << "," << "LeftSignalState" << "," << "LeftlikelyEndTime" << ",";
	fpcsv << "Right_is_val" << "," << "RighSignalState" << "," << "RightlikelyEndTime" << ",";
	fpcsv << "TarId" << "," << "TarDistance" << "," << "TarAngle" << "," << "TarSpeed" << endl;
	
	
	
    message_filters::Subscriber<gps_msgs::gpsUtm> gps_sub(nh,"gpsUtm",1);
    message_filters::Subscriber<v2x::spat> obu_sub(nh,"v2x_spat",1);
//    message_filters::Subscriber<esr_radar::Object> ers_sub(nh,"esr_object",1);
    
//    typedef sync_policies::ApproximateTime<gps_msgs::gpsUtm, v2x::spat, esr_radar::Object> MySyncPolicy;
    
    typedef sync_policies::ApproximateTime<gps_msgs::gpsUtm, v2x::spat> MySyncPolicy;
    
//    Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), gps_sub, obu_sub, ers_sub);
    
    Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), gps_sub, obu_sub);
    
//    sync.registerCallback(boost::bind(&callback, _1, _2, _3));
    
    sync.registerCallback(boost::bind(&callback, _1, _2));

    ros::spin();

    return 0;

}
































