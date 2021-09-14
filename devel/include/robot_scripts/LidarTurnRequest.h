// Generated by gencpp from file robot_scripts/LidarTurnRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_SCRIPTS_MESSAGE_LIDARTURNREQUEST_H
#define ROBOT_SCRIPTS_MESSAGE_LIDARTURNREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64.h>

namespace robot_scripts
{
template <class ContainerAllocator>
struct LidarTurnRequest_
{
  typedef LidarTurnRequest_<ContainerAllocator> Type;

  LidarTurnRequest_()
    : cmd()  {
    }
  LidarTurnRequest_(const ContainerAllocator& _alloc)
    : cmd(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64_<ContainerAllocator>  _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LidarTurnRequest_

typedef ::robot_scripts::LidarTurnRequest_<std::allocator<void> > LidarTurnRequest;

typedef boost::shared_ptr< ::robot_scripts::LidarTurnRequest > LidarTurnRequestPtr;
typedef boost::shared_ptr< ::robot_scripts::LidarTurnRequest const> LidarTurnRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scripts::LidarTurnRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scripts::LidarTurnRequest_<ContainerAllocator1> & lhs, const ::robot_scripts::LidarTurnRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd == rhs.cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scripts::LidarTurnRequest_<ContainerAllocator1> & lhs, const ::robot_scripts::LidarTurnRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scripts

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "461b2fa984eba9bfc07b673e65802cd0";
  }

  static const char* value(const ::robot_scripts::LidarTurnRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x461b2fa984eba9bfULL;
  static const uint64_t static_value2 = 0xc07b673e65802cd0ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scripts/LidarTurnRequest";
  }

  static const char* value(const ::robot_scripts::LidarTurnRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64 cmd\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64\n"
"float64 data\n"
;
  }

  static const char* value(const ::robot_scripts::LidarTurnRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarTurnRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scripts::LidarTurnRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scripts::LidarTurnRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCRIPTS_MESSAGE_LIDARTURNREQUEST_H
