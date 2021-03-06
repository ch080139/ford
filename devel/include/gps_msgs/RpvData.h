// Generated by gencpp from file gps_msgs/RpvData.msg
// DO NOT EDIT!


#ifndef GPS_MSGS_MESSAGE_RPVDATA_H
#define GPS_MSGS_MESSAGE_RPVDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <gps_msgs/XYZRpvData.h>
#include <gps_msgs/ENURpvData.h>

namespace gps_msgs
{
template <class ContainerAllocator>
struct RpvData_
{
  typedef RpvData_<ContainerAllocator> Type;

  RpvData_()
    : xyz()
    , enu()
    , magnitude(0.0)
    , horizontal_magnitude(0.0)  {
    }
  RpvData_(const ContainerAllocator& _alloc)
    : xyz(_alloc)
    , enu(_alloc)
    , magnitude(0.0)
    , horizontal_magnitude(0.0)  {
  (void)_alloc;
    }



   typedef  ::gps_msgs::XYZRpvData_<ContainerAllocator>  _xyz_type;
  _xyz_type xyz;

   typedef  ::gps_msgs::ENURpvData_<ContainerAllocator>  _enu_type;
  _enu_type enu;

   typedef double _magnitude_type;
  _magnitude_type magnitude;

   typedef double _horizontal_magnitude_type;
  _horizontal_magnitude_type horizontal_magnitude;





  typedef boost::shared_ptr< ::gps_msgs::RpvData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gps_msgs::RpvData_<ContainerAllocator> const> ConstPtr;

}; // struct RpvData_

typedef ::gps_msgs::RpvData_<std::allocator<void> > RpvData;

typedef boost::shared_ptr< ::gps_msgs::RpvData > RpvDataPtr;
typedef boost::shared_ptr< ::gps_msgs::RpvData const> RpvDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gps_msgs::RpvData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gps_msgs::RpvData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gps_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'gps_msgs': ['/home/chenhao/catkin_ws/src/gps_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gps_msgs::RpvData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gps_msgs::RpvData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::RpvData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::RpvData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::RpvData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::RpvData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gps_msgs::RpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "072d47cf1d4834308410485efe25a2f4";
  }

  static const char* value(const ::gps_msgs::RpvData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x072d47cf1d483430ULL;
  static const uint64_t static_value2 = 0x8410485efe25a2f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::gps_msgs::RpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gps_msgs/RpvData";
  }

  static const char* value(const ::gps_msgs::RpvData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gps_msgs::RpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "XYZRpvData xyz\n\
ENURpvData enu\n\
float64 magnitude\n\
float64 horizontal_magnitude\n\
================================================================================\n\
MSG: gps_msgs/XYZRpvData\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: gps_msgs/ENURpvData\n\
float64 e\n\
float64 n\n\
float64 u\n\
";
  }

  static const char* value(const ::gps_msgs::RpvData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gps_msgs::RpvData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xyz);
      stream.next(m.enu);
      stream.next(m.magnitude);
      stream.next(m.horizontal_magnitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RpvData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gps_msgs::RpvData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gps_msgs::RpvData_<ContainerAllocator>& v)
  {
    s << indent << "xyz: ";
    s << std::endl;
    Printer< ::gps_msgs::XYZRpvData_<ContainerAllocator> >::stream(s, indent + "  ", v.xyz);
    s << indent << "enu: ";
    s << std::endl;
    Printer< ::gps_msgs::ENURpvData_<ContainerAllocator> >::stream(s, indent + "  ", v.enu);
    s << indent << "magnitude: ";
    Printer<double>::stream(s, indent + "  ", v.magnitude);
    s << indent << "horizontal_magnitude: ";
    Printer<double>::stream(s, indent + "  ", v.horizontal_magnitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPS_MSGS_MESSAGE_RPVDATA_H
