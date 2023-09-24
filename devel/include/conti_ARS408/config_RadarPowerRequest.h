// Generated by gencpp from file conti_ARS408/config_RadarPowerRequest.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_MESSAGE_CONFIG_RADARPOWERREQUEST_H
#define CONTI_ARS408_MESSAGE_CONFIG_RADARPOWERREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace conti_ARS408
{
template <class ContainerAllocator>
struct config_RadarPowerRequest_
{
  typedef config_RadarPowerRequest_<ContainerAllocator> Type;

  config_RadarPowerRequest_()
    : radar_power(0)  {
    }
  config_RadarPowerRequest_(const ContainerAllocator& _alloc)
    : radar_power(0)  {
  (void)_alloc;
    }



   typedef uint8_t _radar_power_type;
  _radar_power_type radar_power;





  typedef boost::shared_ptr< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct config_RadarPowerRequest_

typedef ::conti_ARS408::config_RadarPowerRequest_<std::allocator<void> > config_RadarPowerRequest;

typedef boost::shared_ptr< ::conti_ARS408::config_RadarPowerRequest > config_RadarPowerRequestPtr;
typedef boost::shared_ptr< ::conti_ARS408::config_RadarPowerRequest const> config_RadarPowerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator1> & lhs, const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator2> & rhs)
{
  return lhs.radar_power == rhs.radar_power;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator1> & lhs, const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conti_ARS408

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1729e07afca5fdcd752c0c577b4694e3";
  }

  static const char* value(const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1729e07afca5fdcdULL;
  static const uint64_t static_value2 = 0x752c0c577b4694e3ULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ARS408/config_RadarPowerRequest";
  }

  static const char* value(const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Configures the transmitted radar power (Tx\n"
"# attenuation). The output RCS of cluster and objects\n"
"# will be compensated for this attenuation. Reducing\n"
"# the output power can improve detection in case of\n"
"# close range scenarios or inside rooms.\n"
"\n"
"# 0x0: Standard\n"
"# 0x1: -3dB Tx gain\n"
"# 0x2: -6dB Tx gain\n"
"# 0x3: -9dB Tx gain \n"
"\n"
"uint8 radar_power\n"
;
  }

  static const char* value(const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.radar_power);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct config_RadarPowerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conti_ARS408::config_RadarPowerRequest_<ContainerAllocator>& v)
  {
    s << indent << "radar_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.radar_power);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_MESSAGE_CONFIG_RADARPOWERREQUEST_H
