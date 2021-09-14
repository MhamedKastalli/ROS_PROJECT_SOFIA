// Generated by gencpp from file robot_scripts/lidar_scanRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_SCRIPTS_MESSAGE_LIDAR_SCANREQUEST_H
#define ROBOT_SCRIPTS_MESSAGE_LIDAR_SCANREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_scripts
{
template <class ContainerAllocator>
struct lidar_scanRequest_
{
  typedef lidar_scanRequest_<ContainerAllocator> Type;

  lidar_scanRequest_()
    {
    }
  lidar_scanRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> const> ConstPtr;

}; // struct lidar_scanRequest_

typedef ::robot_scripts::lidar_scanRequest_<std::allocator<void> > lidar_scanRequest;

typedef boost::shared_ptr< ::robot_scripts::lidar_scanRequest > lidar_scanRequestPtr;
typedef boost::shared_ptr< ::robot_scripts::lidar_scanRequest const> lidar_scanRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scripts::lidar_scanRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace robot_scripts

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robot_scripts::lidar_scanRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scripts/lidar_scanRequest";
  }

  static const char* value(const ::robot_scripts::lidar_scanRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::robot_scripts::lidar_scanRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lidar_scanRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scripts::lidar_scanRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::robot_scripts::lidar_scanRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCRIPTS_MESSAGE_LIDAR_SCANREQUEST_H