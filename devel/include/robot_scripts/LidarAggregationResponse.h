// Generated by gencpp from file robot_scripts/LidarAggregationResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_SCRIPTS_MESSAGE_LIDARAGGREGATIONRESPONSE_H
#define ROBOT_SCRIPTS_MESSAGE_LIDARAGGREGATIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/PointCloud2.h>

namespace robot_scripts
{
template <class ContainerAllocator>
struct LidarAggregationResponse_
{
  typedef LidarAggregationResponse_<ContainerAllocator> Type;

  LidarAggregationResponse_()
    : Cloud()  {
    }
  LidarAggregationResponse_(const ContainerAllocator& _alloc)
    : Cloud(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _Cloud_type;
  _Cloud_type Cloud;





  typedef boost::shared_ptr< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct LidarAggregationResponse_

typedef ::robot_scripts::LidarAggregationResponse_<std::allocator<void> > LidarAggregationResponse;

typedef boost::shared_ptr< ::robot_scripts::LidarAggregationResponse > LidarAggregationResponsePtr;
typedef boost::shared_ptr< ::robot_scripts::LidarAggregationResponse const> LidarAggregationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator1> & lhs, const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.Cloud == rhs.Cloud;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator1> & lhs, const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scripts

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "234bf962611dc5efdbe361ae699cd4f6";
  }

  static const char* value(const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x234bf962611dc5efULL;
  static const uint64_t static_value2 = 0xdbe361ae699cd4f6ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scripts/LidarAggregationResponse";
  }

  static const char* value(const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/PointCloud2 Cloud\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
;
  }

  static const char* value(const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Cloud);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarAggregationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scripts::LidarAggregationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scripts::LidarAggregationResponse_<ContainerAllocator>& v)
  {
    s << indent << "Cloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.Cloud);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCRIPTS_MESSAGE_LIDARAGGREGATIONRESPONSE_H