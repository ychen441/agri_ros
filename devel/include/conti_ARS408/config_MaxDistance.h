// Generated by gencpp from file conti_ARS408/config_MaxDistance.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_MESSAGE_CONFIG_MAXDISTANCE_H
#define CONTI_ARS408_MESSAGE_CONFIG_MAXDISTANCE_H

#include <ros/service_traits.h>


#include <conti_ARS408/config_MaxDistanceRequest.h>
#include <conti_ARS408/config_MaxDistanceResponse.h>


namespace conti_ARS408
{

struct config_MaxDistance
{

typedef config_MaxDistanceRequest Request;
typedef config_MaxDistanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct config_MaxDistance
} // namespace conti_ARS408


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::conti_ARS408::config_MaxDistance > {
  static const char* value()
  {
    return "721f4b602fafb1f59d20d474bb2d42da";
  }

  static const char* value(const ::conti_ARS408::config_MaxDistance&) { return value(); }
};

template<>
struct DataType< ::conti_ARS408::config_MaxDistance > {
  static const char* value()
  {
    return "conti_ARS408/config_MaxDistance";
  }

  static const char* value(const ::conti_ARS408::config_MaxDistance&) { return value(); }
};


// service_traits::MD5Sum< ::conti_ARS408::config_MaxDistanceRequest> should match
// service_traits::MD5Sum< ::conti_ARS408::config_MaxDistance >
template<>
struct MD5Sum< ::conti_ARS408::config_MaxDistanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ARS408::config_MaxDistance >::value();
  }
  static const char* value(const ::conti_ARS408::config_MaxDistanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ARS408::config_MaxDistanceRequest> should match
// service_traits::DataType< ::conti_ARS408::config_MaxDistance >
template<>
struct DataType< ::conti_ARS408::config_MaxDistanceRequest>
{
  static const char* value()
  {
    return DataType< ::conti_ARS408::config_MaxDistance >::value();
  }
  static const char* value(const ::conti_ARS408::config_MaxDistanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::conti_ARS408::config_MaxDistanceResponse> should match
// service_traits::MD5Sum< ::conti_ARS408::config_MaxDistance >
template<>
struct MD5Sum< ::conti_ARS408::config_MaxDistanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ARS408::config_MaxDistance >::value();
  }
  static const char* value(const ::conti_ARS408::config_MaxDistanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ARS408::config_MaxDistanceResponse> should match
// service_traits::DataType< ::conti_ARS408::config_MaxDistance >
template<>
struct DataType< ::conti_ARS408::config_MaxDistanceResponse>
{
  static const char* value()
  {
    return DataType< ::conti_ARS408::config_MaxDistance >::value();
  }
  static const char* value(const ::conti_ARS408::config_MaxDistanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CONTI_ARS408_MESSAGE_CONFIG_MAXDISTANCE_H
