// Generated by gencpp from file robot_scripts/LidarAggregation.msg
// DO NOT EDIT!


#ifndef ROBOT_SCRIPTS_MESSAGE_LIDARAGGREGATION_H
#define ROBOT_SCRIPTS_MESSAGE_LIDARAGGREGATION_H

#include <ros/service_traits.h>


#include <robot_scripts/LidarAggregationRequest.h>
#include <robot_scripts/LidarAggregationResponse.h>


namespace robot_scripts
{

struct LidarAggregation
{

typedef LidarAggregationRequest Request;
typedef LidarAggregationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LidarAggregation
} // namespace robot_scripts


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_scripts::LidarAggregation > {
  static const char* value()
  {
    return "9516ae18ce904139a5df97e1390d9329";
  }

  static const char* value(const ::robot_scripts::LidarAggregation&) { return value(); }
};

template<>
struct DataType< ::robot_scripts::LidarAggregation > {
  static const char* value()
  {
    return "robot_scripts/LidarAggregation";
  }

  static const char* value(const ::robot_scripts::LidarAggregation&) { return value(); }
};


// service_traits::MD5Sum< ::robot_scripts::LidarAggregationRequest> should match
// service_traits::MD5Sum< ::robot_scripts::LidarAggregation >
template<>
struct MD5Sum< ::robot_scripts::LidarAggregationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scripts::LidarAggregation >::value();
  }
  static const char* value(const ::robot_scripts::LidarAggregationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scripts::LidarAggregationRequest> should match
// service_traits::DataType< ::robot_scripts::LidarAggregation >
template<>
struct DataType< ::robot_scripts::LidarAggregationRequest>
{
  static const char* value()
  {
    return DataType< ::robot_scripts::LidarAggregation >::value();
  }
  static const char* value(const ::robot_scripts::LidarAggregationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_scripts::LidarAggregationResponse> should match
// service_traits::MD5Sum< ::robot_scripts::LidarAggregation >
template<>
struct MD5Sum< ::robot_scripts::LidarAggregationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scripts::LidarAggregation >::value();
  }
  static const char* value(const ::robot_scripts::LidarAggregationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scripts::LidarAggregationResponse> should match
// service_traits::DataType< ::robot_scripts::LidarAggregation >
template<>
struct DataType< ::robot_scripts::LidarAggregationResponse>
{
  static const char* value()
  {
    return DataType< ::robot_scripts::LidarAggregation >::value();
  }
  static const char* value(const ::robot_scripts::LidarAggregationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_SCRIPTS_MESSAGE_LIDARAGGREGATION_H