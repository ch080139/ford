#include <ros/ros.h>
#include <unistd.h>
#include <cmath>
#include <stdlib.h>
#include<nav_msgs/Odometry.h> 
#include"gps_msgs/gpsUtm.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

using namespace std;


typedef struct
{
	double gps_time;
	double longitude;
	double latitude;
	double yaw;
	double x;
	double y;
	float curvature;
}gpsMsg_t;


// 计算两点之间的距离
float dis2Points(const gpsMsg_t& point1, const gpsMsg_t& point2,bool is_sqrt)
{
	float x = point1.x - point2.x;
	float y = point1.y - point2.y;

	if(is_sqrt)
		return sqrt(x*x +y*y);
	return x*x+y*y;
}

class Record
{
	private:
		void gps_callback(const gps_msgs::gpsUtm::ConstPtr& msg); // 回调函数
		std::string file_path_; // 文件路径
		std::string	file_name_; // 文件名
		FILE *fp;  // 文件指针
		
		gpsMsg_t last_point , current_point; // 最近记录的点，和上一次记录的点
		
		float sample_distance_; // 采样距离
		ros::Subscriber sub_gps_; // 发布者
		
	public:
		Record(); // 构造函数
		~Record(); // 析构函数
		bool init(); // 初始化
		void recordToFile(); // 写入文件
};

// 构造函数
Record::Record()
{
	last_point = {0.0,0.0,0.0,0.0,0.0,0.0,0.0}; 
	current_point = last_point;
}

// 析构函数，关掉文件
Record::~Record()
{
	if(fp != NULL)
		fclose(fp);
}

// 初始化函数
bool Record::init()
{
	ros::NodeHandle nh;
	ros::NodeHandle private_nh("~");
	
	private_nh.param<std::string>("file_path",file_path_,"");

	private_nh.param<std::string>("file_name",file_name_,"");
	
	
	if(file_path_.empty() || file_name_.empty())
	{
		ROS_ERROR("please input record file path and file name in launch file!!!");
		return false;
	}
	
	private_nh.param<float>("sample_distance",sample_distance_,0.1);

	std::string gpsUtm_topic = private_nh.param<std::string>("gpsUtm_topic","/gpsUtm");
	
	sub_gps_ = nh.subscribe(gpsUtm_topic ,1,&Record::gps_callback,this);
	
	
	// FILE * fopen ( const char * filename, const char * mode );
	fp = fopen((file_path_+file_name_).c_str(),"w");
//	fp = fopen("$(find nuogeng)/data/gps.txt","w");
	
	
	
	if(fp == NULL)
	{
		ROS_INFO("open record data file %s failed !!!",(file_path_+file_name_).c_str());
		return false;
	}
	return true;
}

void Record::gps_callback(const gps_msgs::gpsUtm::ConstPtr& msg)
{
	static size_t  row_num = 0;
	current_point.gps_time = msg->header.stamp.toSec();
	current_point.longitude = msg->longitude;
	current_point.latitude = msg->latitude;
	current_point.x = msg->pose.pose.position.x;
	current_point.y = msg->pose.pose.position.y;
	current_point.yaw = msg->pose.covariance[0];
//	ROS_INFO("from gps");
	// if(sample_distance_*sample_distance_ <= dis2Points(current_point,last_point,false))
	// {
		// fprintf(fp,"%d\t%d\t%u\t%u\n",current_point.gps_time_s,current_point.gps_time_ns,current_point.gps_time_real_s,current_point.gps_time_real_ms);
		fprintf(fp,"%.3f\t%.3f\t%.3f\t%.6f\t%.6f\t%.4f\n",current_point.gps_time,current_point.longitude,current_point.latitude,current_point.x,current_point.y,current_point.yaw);
		fflush(fp);
		// ROS_INFO("row:%d\t%d\t%d\t%u\t%u\n",row_num++,current_point.gps_time_s,current_point.gps_time_ns,current_point.gps_time_real_s,current_point.gps_time_real_ms);
		//ROS_INFO("row:%d\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f",row_num++,current_point.gps_time,current_point.longitude,current_point.latitude,current_point.x,current_point.y,current_point.yaw);
		last_point = current_point;
	// }


}


int main(int argc,char**argv)
{
	ros::init(argc,argv,"record_path_node");
	
	Record record;
	
	if(!record.init())
		return 1;

	ros::spin();
	
	return 0;
}


