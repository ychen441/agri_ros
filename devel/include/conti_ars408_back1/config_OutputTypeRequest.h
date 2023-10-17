// Generated by gencpp from file conti_ars408_back1/config_OutputTypeRequest.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_BACK1_MESSAGE_CONFIG_OUTPUTTYPEREQUEST_H
#define CONTI_ARS408_BACK1_MESSAGE_CONFIG_OUTPUTTYPEREQUEST_H


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
struct config_OutputTypeRequest_
{
  typedef config_OutputTypeRequest_<ContainerAllocator> Type;

  config_OutputTypeRequest_()
    : output_type(0)  {
    }
  config_OutputTypeRequest_(const ContainerAllocator& _alloc)
    : output_type(0)  {
  (void)_alloc;
    }



   typedef uint8_t _output_type_type;
  _output_type_type output_type;





  typedef boost::shared_ptr< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct config_OutputTypeRequest_

typedef ::conti_ars408_back1::config_OutputTypeRequest_<std::allocator<void> > config_OutputTypeRequest;

typedef boost::shared_ptr< ::conti_ars408_back1::config_OutputTypeRequest > config_OutputTypeRequestPtr;
typedef boost::shared_ptr< ::conti_ars408_back1::config_OutputTypeRequest const> config_OutputTypeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator1> & lhs, const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.output_type == rhs.output_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator1> & lhs, const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conti_ars408_back1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84258bdfadc436fc1e07d471616d0a90";
  }

  static const char* value(const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84258bdfadc436fcULL;
  static const uint64_t static_value2 = 0x1e07d471616d0a90ULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ars408_back1/config_OutputTypeRequest";
  }

  static const char* value(const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Configures the data output to \n"
"# 0x0: none\n"
"# 0x1: send objects\n"
"# 0x2: send clusters\n"
"\n"
"uint8 output_type\n"
;
  }

  static const char* value(const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct config_OutputTypeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conti_ars408_back1::config_OutputTypeRequest_<ContainerAllocator>& v)
  {
    s << indent << "output_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.output_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_BACK1_MESSAGE_CONFIG_OUTPUTTYPEREQUEST_H
