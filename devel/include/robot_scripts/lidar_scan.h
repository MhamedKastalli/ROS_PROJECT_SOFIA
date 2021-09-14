// Generated by gencpp from file robot_scripts/lidar_scan.msg
// DO NOT EDIT!


#ifndef ROBOT_SCRIPTS_MESSAGE_LIDAR_SCAN_H
#define ROBOT_SCRIPTS_MESSAGE_LIDAR_SCAN_H

#include <ros/service_traits.h>


#include <robot_scripts/lidar_scanRequest.h>
#include <robot_scripts/lidar_scanResponse.h>


namespace robot_scripts
{

struct lidar_scan
{

typedef lidar_scanRequest Request;
typedef lidar_scanResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct lidar_scan
} // namespace robot_scripts


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_scripts::lidar_scan > {
  static const char* value()
  {
    return "89bb254424e4cffedbf494e7b0ddbfea";
  }

  static const char* value(const ::robot_scripts::lidar_scan&) { return value(); }
};

template<>
struct DataType< ::robot_scripts::lidar_scan > {
  static const char* value()
  {
    return "robot_scripts/lidar_scan";
  }

  static const char* value(const ::robot_scripts::lidar_scan&) { return value(); }
};


// service_traits::MD5Sum< ::robot_scripts::lidar_scanRequest> should match
// service_traits::MD5Sum< ::robot_scripts::lidar_scan >
template<>
struct MD5Sum< ::robot_scripts::lidar_scanRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scripts::lidar_scan >::value();
  }
  static const char* value(const ::robot_scripts::lidar_scanRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scripts::lidar_scanRequest> should match
// service_traits::DataType< ::robot_scripts::lidar_scan >
template<>
struct DataType< ::robot_scripts::lidar_scanRequest>
{
  static const char* value()
  {
    return DataType< ::robot_scripts::lidar_scan >::value();
  }
  static const char* value(const ::robot_scripts::lidar_scanRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_scripts::lidar_scanResponse> should match
// service_traits::MD5Sum< ::robot_scripts::lidar_scan >
template<>
struct MD5Sum< ::robot_scripts::lidar_scanResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scripts::lidar_scan >::value();
  }
  static const char* value(const ::robot_scripts::lidar_scanResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scripts::lidar_scanResponse> should match
// service_traits::DataType< ::robot_scripts::lidar_scan >
template<>
struct DataType< ::robot_scripts::lidar_scanResponse>
{
  static const char* value()
  {
    return DataType< ::robot_scripts::lidar_scan >::value();
  }
  static const char* value(const ::robot_scripts::lidar_scanResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_SCRIPTS_MESSAGE_LIDAR_SCAN_H
