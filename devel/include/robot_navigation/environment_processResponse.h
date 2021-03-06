// Generated by gencpp from file robot_navigation/environment_processResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_NAVIGATION_MESSAGE_ENVIRONMENT_PROCESSRESPONSE_H
#define ROBOT_NAVIGATION_MESSAGE_ENVIRONMENT_PROCESSRESPONSE_H


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
struct environment_processResponse_
{
  typedef environment_processResponse_<ContainerAllocator> Type;

  environment_processResponse_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , floor()
    , wall()
    , ceiling()
    , accessibility()  {
    }
  environment_processResponse_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , floor(_alloc)
    , wall(_alloc)
    , ceiling(_alloc)
    , accessibility(_alloc)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _floor_type;
  _floor_type floor;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _wall_type;
  _wall_type wall;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _ceiling_type;
  _ceiling_type ceiling;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _accessibility_type;
  _accessibility_type accessibility;





  typedef boost::shared_ptr< ::robot_navigation::environment_processResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_navigation::environment_processResponse_<ContainerAllocator> const> ConstPtr;

}; // struct environment_processResponse_

typedef ::robot_navigation::environment_processResponse_<std::allocator<void> > environment_processResponse;

typedef boost::shared_ptr< ::robot_navigation::environment_processResponse > environment_processResponsePtr;
typedef boost::shared_ptr< ::robot_navigation::environment_processResponse const> environment_processResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_navigation::environment_processResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_navigation::environment_processResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_navigation::environment_processResponse_<ContainerAllocator1> & lhs, const ::robot_navigation::environment_processResponse_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw &&
    lhs.floor == rhs.floor &&
    lhs.wall == rhs.wall &&
    lhs.ceiling == rhs.ceiling &&
    lhs.accessibility == rhs.accessibility;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_navigation::environment_processResponse_<ContainerAllocator1> & lhs, const ::robot_navigation::environment_processResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::environment_processResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::environment_processResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::environment_processResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "057db96ed4fd37f01b787776b6ce3971";
  }

  static const char* value(const ::robot_navigation::environment_processResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x057db96ed4fd37f0ULL;
  static const uint64_t static_value2 = 0x1b787776b6ce3971ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_navigation/environment_processResponse";
  }

  static const char* value(const ::robot_navigation::environment_processResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
"string[] floor\n"
"string[] wall\n"
"string[] ceiling\n"
"string[] accessibility\n"
"\n"
;
  }

  static const char* value(const ::robot_navigation::environment_processResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.floor);
      stream.next(m.wall);
      stream.next(m.ceiling);
      stream.next(m.accessibility);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct environment_processResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_navigation::environment_processResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_navigation::environment_processResponse_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "floor[]" << std::endl;
    for (size_t i = 0; i < v.floor.size(); ++i)
    {
      s << indent << "  floor[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.floor[i]);
    }
    s << indent << "wall[]" << std::endl;
    for (size_t i = 0; i < v.wall.size(); ++i)
    {
      s << indent << "  wall[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.wall[i]);
    }
    s << indent << "ceiling[]" << std::endl;
    for (size_t i = 0; i < v.ceiling.size(); ++i)
    {
      s << indent << "  ceiling[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ceiling[i]);
    }
    s << indent << "accessibility[]" << std::endl;
    for (size_t i = 0; i < v.accessibility.size(); ++i)
    {
      s << indent << "  accessibility[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.accessibility[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_NAVIGATION_MESSAGE_ENVIRONMENT_PROCESSRESPONSE_H
