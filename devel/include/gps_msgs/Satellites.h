// Generated by gencpp from file gps_msgs/Satellites.msg
// DO NOT EDIT!


#ifndef GPS_MSGS_MESSAGE_SATELLITES_H
#define GPS_MSGS_MESSAGE_SATELLITES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <gps_msgs/Satellite.h>

namespace gps_msgs
{
template <class ContainerAllocator>
struct Satellites_
{
  typedef Satellites_<ContainerAllocator> Type;

  Satellites_()
    : header()
    , count(0)
    , satellites()  {
    }
  Satellites_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , count(0)
    , satellites(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _count_type;
  _count_type count;

   typedef std::vector< ::gps_msgs::Satellite_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::gps_msgs::Satellite_<ContainerAllocator> >::other >  _satellites_type;
  _satellites_type satellites;





  typedef boost::shared_ptr< ::gps_msgs::Satellites_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gps_msgs::Satellites_<ContainerAllocator> const> ConstPtr;

}; // struct Satellites_

typedef ::gps_msgs::Satellites_<std::allocator<void> > Satellites;

typedef boost::shared_ptr< ::gps_msgs::Satellites > SatellitesPtr;
typedef boost::shared_ptr< ::gps_msgs::Satellites const> SatellitesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gps_msgs::Satellites_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gps_msgs::Satellites_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gps_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'gps_msgs': ['/home/chenhao/catkin_ws/src/gps_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gps_msgs::Satellites_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gps_msgs::Satellites_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::Satellites_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::Satellites_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::Satellites_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::Satellites_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gps_msgs::Satellites_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eda6446560ed799671452292ba249e75";
  }

  static const char* value(const ::gps_msgs::Satellites_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeda6446560ed7996ULL;
  static const uint64_t static_value2 = 0x71452292ba249e75ULL;
};

template<class ContainerAllocator>
struct DataType< ::gps_msgs::Satellites_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gps_msgs/Satellites";
  }

  static const char* value(const ::gps_msgs::Satellites_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gps_msgs::Satellites_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
\n\
uint8 count\n\
gps_msgs/Satellite[] satellites\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: gps_msgs/Satellite\n\
\n\
uint8 num\n\
uint8 system\n\
uint8 flags1\n\
uint8 flags2\n\
uint8 elevation\n\
uint16 azimuth\n\
uint8[3] frequency\n\
";
  }

  static const char* value(const ::gps_msgs::Satellites_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gps_msgs::Satellites_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.count);
      stream.next(m.satellites);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Satellites_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gps_msgs::Satellites_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gps_msgs::Satellites_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "count: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.count);
    s << indent << "satellites[]" << std::endl;
    for (size_t i = 0; i < v.satellites.size(); ++i)
    {
      s << indent << "  satellites[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::gps_msgs::Satellite_<ContainerAllocator> >::stream(s, indent + "    ", v.satellites[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPS_MSGS_MESSAGE_SATELLITES_H
