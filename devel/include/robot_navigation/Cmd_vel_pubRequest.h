// Generated by gencpp from file robot_navigation/Cmd_vel_pubRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_NAVIGATION_MESSAGE_CMD_VEL_PUBREQUEST_H
#define ROBOT_NAVIGATION_MESSAGE_CMD_VEL_PUBREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_navigation
{
template <class ContainerAllocator>
struct Cmd_vel_pubRequest_
{
  typedef Cmd_vel_pubRequest_<ContainerAllocator> Type;

  Cmd_vel_pubRequest_()
    : x(0.0)
    , z(0.0)  {
    }
  Cmd_vel_pubRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Cmd_vel_pubRequest_

typedef ::robot_navigation::Cmd_vel_pubRequest_<std::allocator<void> > Cmd_vel_pubRequest;

typedef boost::shared_ptr< ::robot_navigation::Cmd_vel_pubRequest > Cmd_vel_pubRequestPtr;
typedef boost::shared_ptr< ::robot_navigation::Cmd_vel_pubRequest const> Cmd_vel_pubRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator1> & lhs, const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator1> & lhs, const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fe27dff9cb3614cf148525a3f98d6136";
  }

  static const char* value(const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfe27dff9cb3614cfULL;
  static const uint64_t static_value2 = 0x148525a3f98d6136ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_navigation/Cmd_vel_pubRequest";
  }

  static const char* value(const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 z\n"
;
  }

  static const char* value(const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Cmd_vel_pubRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_navigation::Cmd_vel_pubRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_NAVIGATION_MESSAGE_CMD_VEL_PUBREQUEST_H
