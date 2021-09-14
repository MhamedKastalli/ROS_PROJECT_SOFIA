// Generated by gencpp from file robot_scripts/LidarTurn.msg
// DO NOT EDIT!


#ifndef ROBOT_SCRIPTS_MESSAGE_LIDARTURN_H
#define ROBOT_SCRIPTS_MESSAGE_LIDARTURN_H

#include <ros/service_traits.h>


#include <robot_scripts/LidarTurnRequest.h>
#include <robot_scripts/LidarTurnResponse.h>


namespace robot_scripts
{

struct LidarTurn
{

typedef LidarTurnRequest Request;
typedef LidarTurnResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LidarTurn
} // namespace robot_scripts


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_scripts::LidarTurn > {
  static const char* value()
  {
    return "b56007e98f35cde3af7d591f9d8a85f9";
  }

  static const char* value(const ::robot_scripts::LidarTurn&) { return value(); }
};

template<>
struct DataType< ::robot_scripts::LidarTurn > {
  static const char* value()
  {
    return "robot_scripts/LidarTurn";
  }

  static const char* value(const ::robot_scripts::LidarTurn&) { return value(); }
};


// service_traits::MD5Sum< ::robot_scripts::LidarTurnRequest> should match
// service_traits::MD5Sum< ::robot_scripts::LidarTurn >
template<>
struct MD5Sum< ::robot_scripts::LidarTurnRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scripts::LidarTurn >::value();
  }
  static const char* value(const ::robot_scripts::LidarTurnRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scripts::LidarTurnRequest> should match
// service_traits::DataType< ::robot_scripts::LidarTurn >
template<>
struct DataType< ::robot_scripts::LidarTurnRequest>
{
  static const char* value()
  {
    return DataType< ::robot_scripts::LidarTurn >::value();
  }
  static const char* value(const ::robot_scripts::LidarTurnRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_scripts::LidarTurnResponse> should match
// service_traits::MD5Sum< ::robot_scripts::LidarTurn >
template<>
struct MD5Sum< ::robot_scripts::LidarTurnResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scripts::LidarTurn >::value();
  }
  static const char* value(const ::robot_scripts::LidarTurnResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scripts::LidarTurnResponse> should match
// service_traits::DataType< ::robot_scripts::LidarTurn >
template<>
struct DataType< ::robot_scripts::LidarTurnResponse>
{
  static const char* value()
  {
    return DataType< ::robot_scripts::LidarTurn >::value();
  }
  static const char* value(const ::robot_scripts::LidarTurnResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_SCRIPTS_MESSAGE_LIDARTURN_H