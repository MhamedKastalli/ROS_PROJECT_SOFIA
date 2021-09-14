// Generated by gencpp from file robot_navigation/Pov.msg
// DO NOT EDIT!


#ifndef ROBOT_NAVIGATION_MESSAGE_POV_H
#define ROBOT_NAVIGATION_MESSAGE_POV_H


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
struct Pov_
{
  typedef Pov_<ContainerAllocator> Type;

  Pov_()
    : stamp()
    , frame_id()
    , Direction()
    , Ceiling_height_near(0.0)
    , Ceiling_height_mid(0.0)
    , Ceiling_height_far(0.0)
    , Wall_distance_near(0.0)
    , Wall_distance_mid(0.0)
    , Wall_distance_far(0.0)
    , Floor_distance(0.0)
    , Floor_slope(0.0)
    , Floor_type()
    , Wall_type()
    , Ceiling_type()  {
    }
  Pov_(const ContainerAllocator& _alloc)
    : stamp()
    , frame_id(_alloc)
    , Direction(_alloc)
    , Ceiling_height_near(0.0)
    , Ceiling_height_mid(0.0)
    , Ceiling_height_far(0.0)
    , Wall_distance_near(0.0)
    , Wall_distance_mid(0.0)
    , Wall_distance_far(0.0)
    , Floor_distance(0.0)
    , Floor_slope(0.0)
    , Floor_type(_alloc)
    , Wall_type(_alloc)
    , Ceiling_type(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_id_type;
  _frame_id_type frame_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Direction_type;
  _Direction_type Direction;

   typedef double _Ceiling_height_near_type;
  _Ceiling_height_near_type Ceiling_height_near;

   typedef double _Ceiling_height_mid_type;
  _Ceiling_height_mid_type Ceiling_height_mid;

   typedef double _Ceiling_height_far_type;
  _Ceiling_height_far_type Ceiling_height_far;

   typedef double _Wall_distance_near_type;
  _Wall_distance_near_type Wall_distance_near;

   typedef double _Wall_distance_mid_type;
  _Wall_distance_mid_type Wall_distance_mid;

   typedef double _Wall_distance_far_type;
  _Wall_distance_far_type Wall_distance_far;

   typedef double _Floor_distance_type;
  _Floor_distance_type Floor_distance;

   typedef double _Floor_slope_type;
  _Floor_slope_type Floor_slope;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Floor_type_type;
  _Floor_type_type Floor_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Wall_type_type;
  _Wall_type_type Wall_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Ceiling_type_type;
  _Ceiling_type_type Ceiling_type;





  typedef boost::shared_ptr< ::robot_navigation::Pov_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_navigation::Pov_<ContainerAllocator> const> ConstPtr;

}; // struct Pov_

typedef ::robot_navigation::Pov_<std::allocator<void> > Pov;

typedef boost::shared_ptr< ::robot_navigation::Pov > PovPtr;
typedef boost::shared_ptr< ::robot_navigation::Pov const> PovConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_navigation::Pov_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_navigation::Pov_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_navigation::Pov_<ContainerAllocator1> & lhs, const ::robot_navigation::Pov_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.frame_id == rhs.frame_id &&
    lhs.Direction == rhs.Direction &&
    lhs.Ceiling_height_near == rhs.Ceiling_height_near &&
    lhs.Ceiling_height_mid == rhs.Ceiling_height_mid &&
    lhs.Ceiling_height_far == rhs.Ceiling_height_far &&
    lhs.Wall_distance_near == rhs.Wall_distance_near &&
    lhs.Wall_distance_mid == rhs.Wall_distance_mid &&
    lhs.Wall_distance_far == rhs.Wall_distance_far &&
    lhs.Floor_distance == rhs.Floor_distance &&
    lhs.Floor_slope == rhs.Floor_slope &&
    lhs.Floor_type == rhs.Floor_type &&
    lhs.Wall_type == rhs.Wall_type &&
    lhs.Ceiling_type == rhs.Ceiling_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_navigation::Pov_<ContainerAllocator1> & lhs, const ::robot_navigation::Pov_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::Pov_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_navigation::Pov_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::Pov_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_navigation::Pov_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::Pov_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_navigation::Pov_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_navigation::Pov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b3eac4f3850f7049a58dd73defae320";
  }

  static const char* value(const ::robot_navigation::Pov_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b3eac4f3850f704ULL;
  static const uint64_t static_value2 = 0x9a58dd73defae320ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_navigation::Pov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_navigation/Pov";
  }

  static const char* value(const ::robot_navigation::Pov_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_navigation::Pov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"string frame_id\n"
"string Direction\n"
"float64 Ceiling_height_near\n"
"float64 Ceiling_height_mid\n"
"float64 Ceiling_height_far\n"
"float64 Wall_distance_near\n"
"float64 Wall_distance_mid\n"
"float64 Wall_distance_far\n"
"float64 Floor_distance\n"
"float64 Floor_slope\n"
"string Floor_type\n"
"string Wall_type\n"
"string Ceiling_type\n"
"\n"
;
  }

  static const char* value(const ::robot_navigation::Pov_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_navigation::Pov_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.frame_id);
      stream.next(m.Direction);
      stream.next(m.Ceiling_height_near);
      stream.next(m.Ceiling_height_mid);
      stream.next(m.Ceiling_height_far);
      stream.next(m.Wall_distance_near);
      stream.next(m.Wall_distance_mid);
      stream.next(m.Wall_distance_far);
      stream.next(m.Floor_distance);
      stream.next(m.Floor_slope);
      stream.next(m.Floor_type);
      stream.next(m.Wall_type);
      stream.next(m.Ceiling_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pov_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_navigation::Pov_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_navigation::Pov_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame_id);
    s << indent << "Direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Direction);
    s << indent << "Ceiling_height_near: ";
    Printer<double>::stream(s, indent + "  ", v.Ceiling_height_near);
    s << indent << "Ceiling_height_mid: ";
    Printer<double>::stream(s, indent + "  ", v.Ceiling_height_mid);
    s << indent << "Ceiling_height_far: ";
    Printer<double>::stream(s, indent + "  ", v.Ceiling_height_far);
    s << indent << "Wall_distance_near: ";
    Printer<double>::stream(s, indent + "  ", v.Wall_distance_near);
    s << indent << "Wall_distance_mid: ";
    Printer<double>::stream(s, indent + "  ", v.Wall_distance_mid);
    s << indent << "Wall_distance_far: ";
    Printer<double>::stream(s, indent + "  ", v.Wall_distance_far);
    s << indent << "Floor_distance: ";
    Printer<double>::stream(s, indent + "  ", v.Floor_distance);
    s << indent << "Floor_slope: ";
    Printer<double>::stream(s, indent + "  ", v.Floor_slope);
    s << indent << "Floor_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Floor_type);
    s << indent << "Wall_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Wall_type);
    s << indent << "Ceiling_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Ceiling_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_NAVIGATION_MESSAGE_POV_H
