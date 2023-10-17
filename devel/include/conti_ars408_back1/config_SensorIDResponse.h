// Generated by gencpp from file conti_ars408_back1/config_SensorIDResponse.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_BACK1_MESSAGE_CONFIG_SENSORIDRESPONSE_H
#define CONTI_ARS408_BACK1_MESSAGE_CONFIG_SENSORIDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace conti_ars408_back1
{
template <class ContainerAllocator>
struct config_SensorIDResponse_
{
  typedef config_SensorIDResponse_<ContainerAllocator> Type;

  config_SensorIDResponse_()
    {
    }
  config_SensorIDResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> const> ConstPtr;

}; // struct config_SensorIDResponse_

typedef ::conti_ars408_back1::config_SensorIDResponse_<std::allocator<void> > config_SensorIDResponse;

typedef boost::shared_ptr< ::conti_ars408_back1::config_SensorIDResponse > config_SensorIDResponsePtr;
typedef boost::shared_ptr< ::conti_ars408_back1::config_SensorIDResponse const> config_SensorIDResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace conti_ars408_back1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ars408_back1/config_SensorIDResponse";
  }

  static const char* value(const ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct config_SensorIDResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::conti_ars408_back1::config_SensorIDResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_BACK1_MESSAGE_CONFIG_SENSORIDRESPONSE_H
