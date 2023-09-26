// Generated by gencpp from file conti_ars408/config_MaxDistanceRequest.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_MESSAGE_CONFIG_MAXDISTANCEREQUEST_H
#define CONTI_ARS408_MESSAGE_CONFIG_MAXDISTANCEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace conti_ars408
{
template <class ContainerAllocator>
struct config_MaxDistanceRequest_
{
  typedef config_MaxDistanceRequest_<ContainerAllocator> Type;

  config_MaxDistanceRequest_()
    : max_distance(0)  {
    }
  config_MaxDistanceRequest_(const ContainerAllocator& _alloc)
    : max_distance(0)  {
  (void)_alloc;
    }



   typedef uint8_t _max_distance_type;
  _max_distance_type max_distance;





  typedef boost::shared_ptr< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct config_MaxDistanceRequest_

typedef ::conti_ars408::config_MaxDistanceRequest_<std::allocator<void> > config_MaxDistanceRequest;

typedef boost::shared_ptr< ::conti_ars408::config_MaxDistanceRequest > config_MaxDistanceRequestPtr;
typedef boost::shared_ptr< ::conti_ars408::config_MaxDistanceRequest const> config_MaxDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator1> & lhs, const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.max_distance == rhs.max_distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator1> & lhs, const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conti_ars408

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "721f4b602fafb1f59d20d474bb2d42da";
  }

  static const char* value(const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x721f4b602fafb1f5ULL;
  static const uint64_t static_value2 = 0x9d20d474bb2d42daULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ars408/config_MaxDistanceRequest";
  }

  static const char* value(const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Maximum distance of far scan (near scan maximum\n"
"# distance is set proportionally to half of the far scan).\n"
"# The maximum distance will also change the range\n"
"# resolution proportionally.\n"
"# ARS408:\n"
"# Standard Range: 96 – 260 m\n"
"# Extended Range: 96 – 1200 m \n"
"\n"
"uint8 max_distance\n"
;
  }

  static const char* value(const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.max_distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct config_MaxDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conti_ars408::config_MaxDistanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "max_distance: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.max_distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_MESSAGE_CONFIG_MAXDISTANCEREQUEST_H
