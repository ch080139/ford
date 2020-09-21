#include <vector>
#include <thread>
#include <iostream>
#include <ros/ros.h>
#include <controlcan.h>
#include <can_msgs/FrameArray.h>

using namespace std;
#define _NODE_NAME_ "usb_can_driver"
#define CAN_CHANNEL1 0
#define CAN_CHANNEL2 1
#define DEVICE_INDEX 0
#define CHANNEL_CNT  2

class UsbCanDriver
{
public:
	UsbCanDriver();
	~UsbCanDriver();
	void run();
	
private:
	bool rosInit();
	bool deviceInit();
	void closeDevice();
	bool configCanChannel(int channel);
	void frameArray_callback(const can_msgs::FrameArray::ConstPtr& msgs);
	void receiveThread();
	
private:
	vector<int>    mFilterMode; //0.1 all frame 
								  //2   only std frame
								  //3   only exd frame
	vector<int>    mAccCode;  // 验收码
	vector<int>    mMaskCode; // 屏蔽码
	vector<int>    mBaudrate;
	vector<string> mFrameId;     //不同frame_id 对应不同的通道
	
	ros::Subscriber mSubFrameArray; // 订阅者
	ros::Publisher  mPub;  // 发布者
};

UsbCanDriver::UsbCanDriver()
{
	mFilterMode.resize(CHANNEL_CNT);  
	mAccCode.resize(CHANNEL_CNT);
	mMaskCode.resize(CHANNEL_CNT);
	mBaudrate.resize(CHANNEL_CNT);
	mFrameId.resize(CHANNEL_CNT);
}

UsbCanDriver::~UsbCanDriver()
{
	closeDevice();
}

void UsbCanDriver::closeDevice()
{
	// 关闭设备，成功返回1
	if(1 == VCI_CloseDevice(VCI_USBCAN2,DEVICE_INDEX))
		printf("[%s] close device ok.\r\n", _NODE_NAME_);
	else
		printf("[%s] close device failed.\r\n", _NODE_NAME_);
}

bool UsbCanDriver::rosInit()
{
	ros::NodeHandle nh;
	ros::NodeHandle nh_private("~");
	bool ok = false;
	
	// 获取参数 "~filter_mode" 的值，赋值给 mFilterMode，
	ok = ros::param::get("~filter_mode",mFilterMode);

	// 如果获取失败，就给mFilterMode赋值为0
	if(!ok)
		for(int &mode:mFilterMode) mode = 0; // 将两个滤波模式设置为0

	// 获取参数 acc_code，赋值给 mAccCode
	ok = ros::param::get("~acc_code",mAccCode);
	if(!ok)
		for(int &acc:mAccCode) acc = 0x00000000; // 验收码都设置为0
	else
		for(int &acc:mAccCode) acc <<= 21; // 如果获取到了就左移21位
		
	// 获取参数 mMaskCode
	ok = ros::param::get("~mask_code",mMaskCode);
	if(!ok)
		for(int &mask:mMaskCode) mask = 0xFFFFFFFF;  // 屏蔽码都设置为1，如果为1则忽略此位
	else
		for(int &mask:mMaskCode) mask <<= 21;

	ok = ros::param::get("~baudrate",mBaudrate);
	if(!ok)
	{
		for(int &baudrate:mBaudrate) 
		{
			baudrate = 500;
			ROS_INFO("[%s] baudrate set as default:%d",_NODE_NAME_,baudrate);
		}
	}
	
	ok = ros::param::get("~frame_id",mFrameId);
	if(!ok)
	{
		ROS_ERROR("[%s] no frame_id param!",_NODE_NAME_);
		return false;
	}

	// 获取 to_can_topic 话题名，默认值 /to_usbcan
	std::string to_can_topic   = nh_private.param<std::string>("to_can_topic","/to_usbcan");

	// 获取 from_can_topic 话题名，默认值  /from_usbcan
	std::string from_can_topic = nh_private.param<std::string>("from_can_topic","/from_usbcan");

	// mSubFrameArray 设置一个订阅器，订阅 to_can_topic 的消息,拿到消息之后把他发给毫米波雷达
	mSubFrameArray = nh.subscribe(to_can_topic,100,&UsbCanDriver::frameArray_callback,this);

	// mPub 设置一个发布器，从毫米波雷达拿到数据之后发布到 from_can_topic 上，消息类型是 FrameArray
	mPub = nh.advertise<can_msgs::FrameArray>(from_can_topic, 100);
	return true;
}

void UsbCanDriver::frameArray_callback(const can_msgs::FrameArray::ConstPtr& msgs)
{
	// 判断这个消息应该从哪一个CAN通道发出
	for(int channel=0; channel<CHANNEL_CNT; ++channel)
	{
		if(mFrameId[channel] != msgs->header.frame_id)
			continue;

		//ROS_INFO("callback %d", msgs->frames.size());

		// 将每一帧的数据都发送给ers
		for(int i=0; i< msgs->frames.size(); ++i)
		{
			if(msgs->frames[i].len ==0) 
				continue;
				
			VCI_CAN_OBJ canObj;
			canObj.ID = msgs->frames[i].id;  // 帧id
			canObj.SendType = 0; //0 auto resend if error
								 //1 never resend
			canObj.RemoteFlag = msgs->frames[i].is_rtr; // 是否是远程帧
			canObj.ExternFlag = msgs->frames[i].is_extended; // 是否是扩展帧
			canObj.DataLen =    msgs->frames[i].len;  // 帧的长度
			for(int j=0; j<canObj.DataLen; ++j)
				canObj.Data[j] =  msgs->frames[i].data[j]; // 帧数据
			
			// 发送函数
			VCI_Transmit(VCI_USBCAN2, DEVICE_INDEX, channel, &canObj, 1);
		}
	}
	
}

// 配置设备通道
bool UsbCanDriver::configCanChannel(int channel)
{
	VCI_INIT_CONFIG config; // 配置结构体
	config.AccCode = mAccCode[channel]; // 验收码
	config.AccMask = mMaskCode[channel]; // 屏蔽码  默认全部为1，都不屏蔽
	
//	cout << "[" << _NODE_NAME_ << "] " << "ch" << channel << "\t"
//		 << hex << config.AccCode << "\t" << config.AccMask << endl;  // 输出验收码和屏蔽码
	
	// 配置滤波方式
	config.Filter =  mFilterMode[channel];

	// 配置波特率
	if(mBaudrate[channel] == 125)
	{
		config.Timing0=0x03;
		config.Timing1=0x1C;
	}
	else if(mBaudrate[channel] == 250)
	{
		config.Timing0=0x01;
		config.Timing1=0x1C;
	}
	else if(mBaudrate[channel] == 500)
	{
		config.Timing0=0x00;
		config.Timing1=0x1C;
	}
	else if(mBaudrate[channel] == 1000)
	{
		config.Timing0=0x00;
		config.Timing1=0x14;
	}
	else
	{
		ROS_ERROR("[%s] channel: %d : baudrate error, \
			please query manual and update source code!",_NODE_NAME_,channel);
		return false;
	}
	
	config.Mode=0;// 0: normal,  1:only receive,  2:cycle
	
	// 初始化CAN卡的CAN通道 （设备类型、设备索引、can通道索引、配置结构体） 返回1表示操作成功
	if(VCI_InitCAN(VCI_USBCAN2,DEVICE_INDEX,channel,&config)!=1)
	{
		ROS_ERROR("[%s] init channel %d error!", _NODE_NAME_,channel);
		VCI_CloseDevice(VCI_USBCAN2,DEVICE_INDEX);
		return false;
	}

	// 启动CAN通道 （设备类型、设备索引、CAN通道索引）
	if(VCI_StartCAN(VCI_USBCAN2,DEVICE_INDEX,channel)!=1)
	{
		ROS_ERROR("[%s] start channel %d error!", _NODE_NAME_,channel);
		VCI_CloseDevice(VCI_USBCAN2,DEVICE_INDEX);
		return false;
	}
	return true;
}

bool UsbCanDriver::deviceInit()
{	
	// 定义了一个结构体数组，表示USB CAN卡的设备信息
	VCI_BOARD_INFO deviceInfos[5];

	// 返回已经插入的usb-CAN 适配器个数
	int deviceCnt = VCI_FindUsbDevice2(deviceInfos);
	if(deviceCnt <1 )
	{
		ROS_ERROR("[%s] : No available can device.",_NODE_NAME_);
		return false;
	}
	
	// 打开一个CAN分析仪 （设备类型，设备索引、保留位） 返回值1表示操作成功
	if(VCI_OpenDevice(VCI_USBCAN2,DEVICE_INDEX,0)==1)
		ROS_INFO("[%s] : open usbcan deivce success!",_NODE_NAME_);
	else
	{
		ROS_ERROR("[%s] : open usbcan deivce failed!",_NODE_NAME_);
		return false;
	}
	
	// 配置CAN分析仪的两个通道
	for(int i=0; i<CHANNEL_CNT; ++i)
	{
		if(!configCanChannel(i))
			return false;
	}
	return true;
}

void UsbCanDriver::receiveThread()
{
	const int MaxLen = 500;
	VCI_CAN_OBJ msgs[MaxLen]; // 最多500个CAN帧消息
	can_msgs::FrameArray frames; // 定义了msg对象
	int reclen;
	while(ros::ok())
	{
		for(int channel=0; channel<CHANNEL_CNT; ++channel)
		{
			// 此函数从指定的设备CAN通道的接收缓冲区中读取数据 （设备类型、设备索引、CAN通道索引、接收的帧结构体VCI_CAN_OBJ数组的首指针、用来接收的帧结构体数组的长度）
			// 返回接收到的帧数
			reclen = VCI_Receive(VCI_USBCAN2,DEVICE_INDEX,channel,msgs,MaxLen,100);
			if(reclen <= 0) continue;
			//ROS_INFO("[%s] receive msgs len: %d",_NODE_NAME_,reclen);
			
			frames.frames.resize(reclen);
			frames.header.frame_id = mFrameId[channel]; // 表明这一组帧消息是从哪一个CAN通道发出
			
			// 把接收的到每一帧消息都复制给frams中
			for(int i=0; i<reclen; ++i)
			{
				frames.frames[i].id          = msgs[i].ID;
				frames.frames[i].is_rtr      = msgs[i].RemoteFlag;
				frames.frames[i].is_extended = msgs[i].ExternFlag;
				frames.frames[i].len         = msgs[i].DataLen;
				for(int j=0; j<frames.frames[i].len; ++j)
					frames.frames[i].data[j] = msgs[i].Data[j];
			}
			mPub.publish(frames);
//			ROS_INFO("[%s] : published ",_NODE_NAME_);
		}
		
		usleep(10000);
		
	}
}


void UsbCanDriver::run()
{
	if(!rosInit())    return; //else ROS_INFO("rosInit ok");
	if(!deviceInit()) return; //else ROS_INFO("deviceInit ok");
	
	std::thread t (&UsbCanDriver::receiveThread,this);
	
	ros::spin();
	closeDevice();
}

int main(int argc,char** argv)
{
	ros::init(argc, argv, _NODE_NAME_);
	
	UsbCanDriver app;
	app.run();
	
	ros::Duration(0.5).sleep();
	
	return 0;
}


// ros::init 定义节点名称
// run()
//	rosInit() 获取一些CAN卡配置参数，定义发布者和订阅者
//	deviceInit() 打开CAN 分析仪
//		configCanChannel() 配置参数，初始化CAN通道、启动CAN通道
//	receiveThread() 另开一个线程读CAN读取CAN分析仪中的数据，并发布
// 延迟0.5s
 
