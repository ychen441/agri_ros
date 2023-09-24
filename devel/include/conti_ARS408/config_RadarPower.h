// Generated by gencpp from file conti_ARS408/config_RadarPower.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_MESSAGE_CONFIG_RADARPOWER_H
#define CONTI_ARS408_MESSAGE_CONFIG_RADARPOWER_H

#include <ros/service_traits.h>


#include <conti_ARS408/config_RadarPowerRequest.h>
#include <conti_ARS408/config_RadarPowerResponse.h>


namespace conti_ARS408
{

struct config_RadarPower
{

typedef config_RadarPowerRequest Request;
typedef config_RadarPowerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct config_RadarPower
} // namespace conti_ARS408


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::conti_ARS408::config_RadarPower > {
  static const char* value()
  {
    return "1729e07afca5fdcd752c0c577b4694e3";
  }

  static const char* value(const ::conti_ARS408::config_RadarPower&) { return value(); }
};

template<>
struct DataType< ::conti_ARS408::config_RadarPower > {
  static const char* value()
  {
    return "conti_ARS408/config_RadarPower";
  }

  static const char* value(const ::conti_ARS408::config_RadarPower&) { return value(); }
};


// service_traits::MD5Sum< ::conti_ARS408::config_RadarPowerRequest> should match
// service_traits::MD5Sum< ::conti_ARS408::config_RadarPower >
template<>
struct MD5Sum< ::conti_ARS408::config_RadarPowerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ARS408::config_RadarPower >::value();
  }
  static const char* value(const ::conti_ARS408::config_RadarPowerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ARS408::config_RadarPowerRequest> should match
// service_traits::DataType< ::conti_ARS408::config_RadarPower >
template<>
struct DataType< ::conti_ARS408::config_RadarPowerRequest>
{
  static const char* value()
  {
    return DataType< ::conti_ARS408::config_RadarPower >::value();
  }
  static const char* value(const ::conti_ARS408::config_RadarPowerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::conti_ARS408::config_RadarPowerResponse> should match
// service_traits::MD5Sum< ::conti_ARS408::config_RadarPower >
template<>
struct MD5Sum< ::conti_ARS408::config_RadarPowerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ARS408::config_RadarPower >::value();
  }
  static const char* value(const ::conti_ARS408::config_RadarPowerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ARS408::config_RadarPowerResponse> should match
// service_traits::DataType< ::conti_ARS408::config_RadarPower >
template<>
struct DataType< ::conti_ARS408::config_RadarPowerResponse>
{
  static const char* value()
  {
    return DataType< ::conti_ARS408::config_RadarPower >::value();
  }
  static const char* value(const ::conti_ARS408::config_RadarPowerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CONTI_ARS408_MESSAGE_CONFIG_RADARPOWER_H
