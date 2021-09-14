// Generated by gencpp from file robot_navigation/Map.msg
// DO NOT EDIT!


#ifndef ROBOT_NAVIGATION_MESSAGE_MAP_H
#define ROBOT_NAVIGATION_MESSAGE_MAP_H


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
struct Map_
{
  typedef Map_<ContainerAllocator> Type;

  Map_()
    : stamp()
    , frame_id()
    , last_cmd()
    , floor()
    , wall()
    , ceiling()
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , position_robot()
    , type_environment()
    , accessibility()  {
    }
  Map_(const ContainerAllocator& _alloc)
    : stamp()
    , frame_id(_alloc)
    , last_cmd(_alloc)
    , floor(_alloc)
    , wall(_alloc)
    , ceiling(_alloc)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , position_robot(_alloc)
    , type_environment(_alloc)
    , accessibility(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_id_type;
  _frame_id_type frame_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _last_cmd_type;
  _last_cmd_type last_cmd;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _floor_type;
  _floor_type floor;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _wall_type;
  _wall_type wall;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _ceiling_type;
  _ceiling_type ceiling;

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

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _position_robot_type;
  _position_robot_type position_robot;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_environment_type;
  _type_environment_type type_environment;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _accessibility_type;
  _accessibility_type accessibility;





  typedef boost::shared_ptr< ::robot_navigation::Map_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_navigation::Map_<ContainerAllocator> const> ConstPtr;

}; // struct Map_

typedef ::robot_navigation::Map_<std::allocator<void> > Map;

typedef boost::shared_ptr< ::robot_navigation::Map > MapPtr;
typedef boost::shared_ptr< ::robot_navigation::Map const> MapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_navigation::Map_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_navigation::Map_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_navigation::Map_<ContainerAllocator1> & lhs, const ::robot_navigation::Map_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.frame_id == rhs.frame_id &&
    lhs.last_cmd == rhs.last_cmd &&
    lhs.floor == rhs.floor &&
    lhs.wall == rhs.wall &&
    lhs.ceiling == rhs.ceiling &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw &&
    lhs.position_robot == rhs.position_robot &&
    lhs.type_environment == rhs.type_environment &&
    lhs.accessibility == rhs.accessibility;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_navigation::Map_<ContainerAllocator1> & lhs, const ::robot_navigation::Map_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::Map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::Map_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::Map_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::Map_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_navigation::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a7041233ff5b385e9991be074cb29ad2";
  }

  static const char* value(const ::robot_navigation::Map_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa7041233ff5b385eULL;
  static const uint64_t static_value2 = 0x9991be074cb29ad2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_navigation::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_navigation/Map";
  }

  static const char* value(const ::robot_navigation::Map_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_navigation::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"string frame_id\n"
"string last_cmd\n"
"string[] floor\n"
"string[] wall\n"
"string[] ceiling\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
"string position_robot\n"
"string type_environment\n"
"string[] accessibility\n"
;
  }

  static const char* value(const ::robot_navigation::Map_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_navigation::Map_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.frame_id);
      stream.next(m.last_cmd);
      stream.next(m.floor);
      stream.next(m.wall);
      stream.next(m.ceiling);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.position_robot);
      stream.next(m.type_environment);
      stream.next(m.accessibility);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Map_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_navigation::Map_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_navigation::Map_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame_id);
    s << indent << "last_cmd: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.last_cmd);
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
    s << indent << "position_robot: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.position_robot);
    s << indent << "type_environment: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type_environment);
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

#endif // ROBOT_NAVIGATION_MESSAGE_MAP_H