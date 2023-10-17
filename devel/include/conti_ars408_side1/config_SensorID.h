// Generated by gencpp from file conti_ars408_side1/config_SensorID.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_SIDE1_MESSAGE_CONFIG_SENSORID_H
#define CONTI_ARS408_SIDE1_MESSAGE_CONFIG_SENSORID_H

#include <ros/service_traits.h>


#include <conti_ars408_side1/config_SensorIDRequest.h>
#include <conti_ars408_side1/config_SensorIDResponse.h>


namespace conti_ars408_side1
{

struct config_SensorID
{

typedef config_SensorIDRequest Request;
typedef config_SensorIDResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct config_SensorID
} // namespace conti_ars408_side1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::conti_ars408_side1::config_SensorID > {
  static const char* value()
  {
    return "8840ca3a2554fac83ff179bcc0342e2e";
  }

  static const char* value(const ::conti_ars408_side1::config_SensorID&) { return value(); }
};

template<>
struct DataType< ::conti_ars408_side1::config_SensorID > {
  static const char* value()
  {
    return "conti_ars408_side1/config_SensorID";
  }

  static const char* value(const ::conti_ars408_side1::config_SensorID&) { return value(); }
};


// service_traits::MD5Sum< ::conti_ars408_side1::config_SensorIDRequest> should match
// service_traits::MD5Sum< ::conti_ars408_side1::config_SensorID >
template<>
struct MD5Sum< ::conti_ars408_side1::config_SensorIDRequest>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ars408_side1::config_SensorID >::value();
  }
  static const char* value(const ::conti_ars408_side1::config_SensorIDRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ars408_side1::config_SensorIDRequest> should match
// service_traits::DataType< ::conti_ars408_side1::config_SensorID >
template<>
struct DataType< ::conti_ars408_side1::config_SensorIDRequest>
{
  static const char* value()
  {
    return DataType< ::conti_ars408_side1::config_SensorID >::value();
  }
  static const char* value(const ::conti_ars408_side1::config_SensorIDRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::conti_ars408_side1::config_SensorIDResponse> should match
// service_traits::MD5Sum< ::conti_ars408_side1::config_SensorID >
template<>
struct MD5Sum< ::conti_ars408_side1::config_SensorIDResponse>
{
  static const char* value()
  {
    return MD5Sum< ::conti_ars408_side1::config_SensorID >::value();
  }
  static const char* value(const ::conti_ars408_side1::config_SensorIDResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::conti_ars408_side1::config_SensorIDResponse> should match
// service_traits::DataType< ::conti_ars408_side1::config_SensorID >
template<>
struct DataType< ::conti_ars408_side1::config_SensorIDResponse>
{
  static const char* value()
  {
    return DataType< ::conti_ars408_side1::config_SensorID >::value();
  }
  static const char* value(const ::conti_ars408_side1::config_SensorIDResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CONTI_ARS408_SIDE1_MESSAGE_CONFIG_SENSORID_H
