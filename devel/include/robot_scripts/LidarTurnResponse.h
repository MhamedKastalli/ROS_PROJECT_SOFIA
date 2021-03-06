// Generated by gencpp from file robot_scripts/LidarTurnResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_SCRIPTS_MESSAGE_LIDARTURNRESPONSE_H
#define ROBOT_SCRIPTS_MESSAGE_LIDARTURNRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Bool.h>

namespace robot_scripts
{
template <class ContainerAllocator>
struct LidarTurnResponse_
{
  typedef LidarTurnResponse_<ContainerAllocator> Type;

  LidarTurnResponse_()
    : done()  {
    }
  LidarTurnResponse_(const ContainerAllocator& _alloc)
    : done(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Bool_<ContainerAllocator>  _done_type;
  _done_type done;





  typedef boost::shared_ptr< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> const> ConstPtr;

}; // struct LidarTurnResponse_

typedef ::robot_scripts::LidarTurnResponse_<std::allocator<void> > LidarTurnResponse;

typedef boost::shared_ptr< ::robot_scripts::LidarTurnResponse > LidarTurnResponsePtr;
typedef boost::shared_ptr< ::robot_scripts::LidarTurnResponse const> LidarTurnResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scripts::LidarTurnResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scripts::LidarTurnResponse_<ContainerAllocator1> & lhs, const ::robot_scripts::LidarTurnResponse_<ContainerAllocator2> & rhs)
{
  return lhs.done == rhs.done;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scripts::LidarTurnResponse_<ContainerAllocator1> & lhs, const ::robot_scripts::LidarTurnResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scripts

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1c236c9790b7f5f3c3164ceb3563eae0";
  }

  static const char* value(const ::robot_scripts::LidarTurnResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1c236c9790b7f5f3ULL;
  static const uint64_t static_value2 = 0xc3164ceb3563eae0ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scripts/LidarTurnResponse";
  }

  static const char* value(const ::robot_scripts::LidarTurnResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Bool done\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
;
  }

  static const char* value(const ::robot_scripts::LidarTurnResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.done);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarTurnResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scripts::LidarTurnResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scripts::LidarTurnResponse_<ContainerAllocator>& v)
  {
    s << indent << "done: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.done);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCRIPTS_MESSAGE_LIDARTURNRESPONSE_H
