// Generated by gencpp from file conti_ars408_side2/config_RCSThreshold.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_SIDE2_MESSAGE_CONFIG_RCSTHRESHOLD_H
#define CONTI_ARS408_SIDE2_MESSAGE_CONFIG_RCSTHRESHOLD_H

#include <ros/service_traits.h>


#include <conti_ars408_side2/config_RCSThresholdRequest.h>
#include <conti_ars408_side2/config_RCSThresholdResponse.h>


namespace conti_ars408_side2
{

struct config_RCSThreshold
{

typedef config_RCSThresholdRequest Request;
typedef config_RCSThresholdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct config_RCSThreshold
} // namespace conti_ars408_side2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::conti_ars408_side2::config_RCSThreshold > {
  static const char* value()
  {
    return "2395c11d5141075461a6a21a788a2778";
  }

  static const char* value(const ::conti_ars408_side2::config_RCSThreshold&) { return value(); }
};

template<>
struct DataType< ::conti_ars408_side2::config_RCSThreshold > {
  static const char* value()
  {
    return "conti_ars408_side2/config_RCSThreshold";
  }

  static const char* value(const ::conti_ars408_side2::config_RCSThreshold&) { return value(); }
};


// service_traits::MD5Sum< ::conti_ars408_side2::config_RCSThresholdRequest> should match
// service_traits::MD5Sum< ::conti_ars408_side2::config_RCSThreshold >
template<>
struct MD5Sum< ::conti_ars408_side2::config_RCSThresholdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ars408_side2::config_RCSThreshold >::value();
  }
  static const char* value(const ::conti_ars408_side2::config_RCSThresholdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ars408_side2::config_RCSThresholdRequest> should match
// service_traits::DataType< ::conti_ars408_side2::config_RCSThreshold >
template<>
struct DataType< ::conti_ars408_side2::config_RCSThresholdRequest>
{
  static const char* value()
  {
    return DataType< ::conti_ars408_side2::config_RCSThreshold >::value();
  }
  static const char* value(const ::conti_ars408_side2::config_RCSThresholdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::conti_ars408_side2::config_RCSThresholdResponse> should match
// service_traits::MD5Sum< ::conti_ars408_side2::config_RCSThreshold >
template<>
struct MD5Sum< ::conti_ars408_side2::config_RCSThresholdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ars408_side2::config_RCSThreshold >::value();
  }
  static const char* value(const ::conti_ars408_side2::config_RCSThresholdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ars408_side2::config_RCSThresholdResponse> should match
// service_traits::DataType< ::conti_ars408_side2::config_RCSThreshold >
template<>
struct DataType< ::conti_ars408_side2::config_RCSThresholdResponse>
{
  static const char* value()
  {
    return DataType< ::conti_ars408_side2::config_RCSThreshold >::value();
  }
  static const char* value(const ::conti_ars408_side2::config_RCSThresholdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CONTI_ARS408_SIDE2_MESSAGE_CONFIG_RCSTHRESHOLD_H
