#include<iostream>
#include"nuogeng/nuogeng.h"
#include <geodesy/utm.h>
#include <geodesy/wgs84.h>
#include <geographic_msgs/GeoPoint.h>
#include <Eigen/Dense>

// 实现构造函数，读状态初始化为false，new一个500的缓存
Nuogeng::Nuogeng():
	m_reading_status(false),
	m_pkg_buffer(new uint8_t[500])
{
}

// 实现析构函数，关闭串口，释放内存
Nuogeng::~Nuogeng()
{
	this->closeSerial();
	if(m_pkg_buffer!=NULL)
		delete [] m_pkg_buffer;
}

// nuogeng类中定义的初始化函数：初始化成功 === 打开串口成功
bool Nuogeng::init(int argc,char** argv)
{	
	// 节点初始化
	ros::init(argc,argv,"nuogeng_node");
	ros::NodeHandle nh;
	ros::NodeHandle nh_private("~");
	
	m_pub_gpsUtm = nh.advertise<gps_msgs::gpsUtm>(nh_private.param<string>("gpsUtm_topic","/gpsUtm"),1);
	
	std::string port_name = nh_private.param<std::string>("port_name","/dev/ttyUSB0"); // 端口号

	int baudrate = nh_private.param<int>("baudrate",115200); // 波特率

	if(!openSerial(port_name,baudrate))
		return false;
	return true;
}

// 打开串口
bool Nuogeng::openSerial(const std::string& port,int baudrate)
{
	m_serial_port = new serial::Serial(port,baudrate,serial::Timeout::simpleTimeout(10));  // 打开(port,baudrate)串口，串口对象

	if (!m_serial_port->isOpen())
	{
		std::stringstream output;
        output << "Serial port: " << port << " failed to open." << std::endl;
		delete m_serial_port;
		m_serial_port = NULL;
		return false;
	} 
	else 
	{
		std::stringstream output;
		output << "Serial port: " << port << " opened successfully." << std::endl;
	}
	m_serial_port->flush(); // // 刷新输入和输出缓冲区
	return true;
}

void Nuogeng::closeSerial()
{
	if(m_serial_port!=NULL)
	{
		delete m_serial_port;
		m_serial_port = NULL;
	}
		
}

// 开始读
void Nuogeng::startReading()
{
	if(m_reading_status)
		return ;

	m_read_thread_ptr = boost::shared_ptr<boost::thread>(new boost::thread(&Nuogeng::readSerialThread,this)); // 另开一个线程去读取串口
}

// 循环读
void Nuogeng::readSerialThread()
{
	m_reading_status = true;
	
	// 为了使得解析的包中存在完整数据(100字节)，传给解析程序buffer至少200字节
	// 通过多次的拼接使得至少200字节，buffer的大小就需要设置为400字节
	const int read_size = 200;
	const int buffer_size = read_size * 2;

	//
	const int left_reserve_len = 5;

	// 原始数据buffer 
	uint8_t * const raw_data_buf = new uint8_t[buffer_size+left_reserve_len];

	// buffer向右偏移了5
	uint8_t * const buffer =  raw_data_buf+ left_reserve_len;
	
	size_t offset = 0, get_len, total_len;
		   
	while(ros::ok() && m_reading_status)
	{
		try
		{	// 从串口读200个字节，写入buffer，注意需要偏移offset个字节
			get_len = m_serial_port->read(buffer+offset,read_size);
		}
		catch(std::exception &e)
		{
			ROS_ERROR("Error reading from serial port: %s",e.what());
		}
		
		total_len = offset + get_len; 
		if(total_len < read_size)
			offset = total_len;
		else
		{	// 对这至少200个字节的buffer数据进行解析
			parseIncomingData(buffer, total_len);
			offset = 0;
		}
		boost::this_thread::sleep(boost::posix_time::milliseconds(10));
	}
	
	delete [] raw_data_buf;
}

void Nuogeng::parseIncomingData(uint8_t* buffer,size_t len)
{
	static size_t pkg_buffer_index = 0; //数据包缓存定位索引
	static size_t pkg_len = 0;			//数据包长度
	static size_t remainded = 0;		//包头(5bytes)搜索完毕后buffer的剩余长度
										//remainded <=4
	//real_buffer指针位于buffer指针之前
	//上次搜索剩余的数据位于buffer之前
	//再次搜索时应从real_buffer开始
	static uint8_t *real_buffer = buffer - remainded;
	
	size_t real_buffer_len = len + remainded;
	remainded = 0; //复位
	for(size_t i=0; i<real_buffer_len; ++i)
	{
		if(pkg_buffer_index ==0) //还未找到数据头
		{
			if(real_buffer_len-i > 4 ) //剩余数据可能包含数据头(剩余bytes>=数据头bytes)(剩余数据包括索引为i的数据)
			{
				if(LRC(real_buffer+i+1,4)==real_buffer[i]) //LRC校验查找数据头，如果校验通过，real_buffer[i]就是数据头的起始位置
				{
					m_pkg_buffer[pkg_buffer_index++] = real_buffer[i];
					pkg_len = real_buffer[i+2];
					//cout << pkg_len << endl;
				}
			}
			else if(remainded ==0) // 剩余数据不足且暂未开始拼接
			{
				remainded = real_buffer_len-i; //剩余个数
				//开始拼接，剩余bytes有序放在buffer前面，且保证数据的连续性
				buffer[i-real_buffer_len] = real_buffer[i];
			}
			else
				buffer[i-real_buffer_len] = real_buffer[i]; //继续拼接
		}
		//数据头已经找到，根据包长逐个拷贝(不包括最后一个字节)
		else if(pkg_buffer_index < pkg_len+4)
			m_pkg_buffer[pkg_buffer_index++] = real_buffer[i];
		else
		{	//拷贝最后一个字节,over
			m_pkg_buffer[pkg_buffer_index] = real_buffer[i];
			pkg_buffer_index = 0; //定位索引复位
			
			if(m_pkg_buffer[3]+m_pkg_buffer[4]*256 != getCrc16ccittFalseByTable(m_pkg_buffer+5,pkg_len))
				continue; //校验失败
				
			if(20==m_pkg_buffer[1]) //ID
				parseId20Pkg(m_pkg_buffer);
		}
	}
}

void Nuogeng::parseId20Pkg(const uint8_t* buffer)
{
	auto gpsPtr = (const pkg20Msgs_t *)buffer;

	m_gpsUtm.header.stamp = ros::Time::now();
	m_gpsUtm.header.frame_id = "gps";
	m_gpsUtm.latitude = gpsPtr->latitude *180.0/M_PI; // 纬度，转化为度数
	m_gpsUtm.longitude = gpsPtr->longitude *180.0/M_PI;// 经度
	m_gpsUtm.height = gpsPtr->height; // 高度
	m_gpsUtm.north_velocity = gpsPtr->north_velocity; // 北向速度 m/s
	m_gpsUtm.east_velocity = gpsPtr->east_velocity; // 东向速度 m/s
	m_gpsUtm.up_velocity = gpsPtr->down_velocity; // 地向速度 m/s
	m_gpsUtm.roll = gpsPtr->roll; // 侧倾
	m_gpsUtm.pitch = gpsPtr->pitch; // 俯仰
	m_gpsUtm.azimuth = gpsPtr->yaw *180.0/M_PI; // 方位角  角度
	m_gpsUtm.latitude_standard_deviation = gpsPtr->latitude_std_deviation;// 维度标准差
	m_gpsUtm.longitude_standard_deviation = gpsPtr->longitude_std_deviation;// 经度标准差
	m_gpsUtm.height_standard_deviation = gpsPtr->height_std_deviation; // 高度标准差


	geographic_msgs::GeoPoint point; // geographic_msgs::GeoPoint 这个消息里面就是经度 维度 高度
	point.latitude = m_gpsUtm.latitude; // 维度
	point.longitude = m_gpsUtm.longitude; // 经度
	point.altitude = m_gpsUtm.height; // 高程

	geodesy::UTMPoint utm;
	// 将GPS坐标转换为utm坐标
	geodesy::fromMsg(point, utm);

	m_gpsUtm.pose.pose.position.x = utm.easting;  // 输出1 位置x
	m_gpsUtm.pose.pose.position.y = utm.northing; // 输出2 位置y
	m_gpsUtm.pose.pose.position.z = utm.altitude; 
	
	Eigen::AngleAxisd rollAngle(deg2rad(m_gpsUtm.roll), Eigen::Vector3d::UnitX());
	Eigen::AngleAxisd yawAngle(-deg2rad(m_gpsUtm.azimuth-90.0), Eigen::Vector3d::UnitZ());
	Eigen::AngleAxisd pitchAngle(deg2rad(m_gpsUtm.pitch), Eigen::Vector3d::UnitY());
	Eigen::Quaterniond q = rollAngle * yawAngle * pitchAngle; // 四元素

	m_gpsUtm.pose.pose.orientation.x = q.x();
	m_gpsUtm.pose.pose.orientation.y = q.y();
	m_gpsUtm.pose.pose.orientation.z = q.z();
	m_gpsUtm.pose.pose.orientation.w = q.w();

	m_gpsUtm.pose.covariance[0] = m_gpsUtm.azimuth *M_PI / 180.0;  // 输出 yaw 弧度
  ROS_INFO("cur yaw = %.1f", m_gpsUtm.azimuth);
	m_pub_gpsUtm.publish(m_gpsUtm);
}

void Nuogeng::stopReading()
{
	m_reading_status = false;
}


int main(int argc,char** argv)
{
	Nuogeng gps;

	// 初始化程序，定义程序节点，定义了2个发布者，分别发布gps数据和里程计数据，从launch文件中获取参数，打开串口
	if(gps.init(argc,argv))
	{
		gps.startReading();  // 单独开一个线程去读串口数据，先读到一个较大的连续数据段，保证至少存在一个完整的数据包，然后找头，断出完整的数据包，然后解析数据，然后发布
		ROS_INFO("%s initial ok...",ros::this_node::getName().c_str());
	}
	
	ros::spin();
}



