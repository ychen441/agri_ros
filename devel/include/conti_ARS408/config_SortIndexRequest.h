// Generated by gencpp from file conti_ARS408/config_SortIndexRequest.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_MESSAGE_CONFIG_SORTINDEXREQUEST_H
#define CONTI_ARS408_MESSAGE_CONFIG_SORTINDEXREQUEST_H


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
struct config_SortIndexRequest_
{
  typedef config_SortIndexRequest_<ContainerAllocator> Type;

  config_SortIndexRequest_()
    : sort_index(0)  {
    }
  config_SortIndexRequest_(const ContainerAllocator& _alloc)
    : sort_index(0)  {
  (void)_alloc;
    }



   typedef uint8_t _sort_index_type;
  _sort_index_type sort_index;





  typedef boost::shared_ptr< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> const> ConstPtr;

}; // struct config_SortIndexRequest_

typedef ::conti_ARS408::config_SortIndexRequest_<std::allocator<void> > config_SortIndexRequest;

typedef boost::shared_ptr< ::conti_ARS408::config_SortIndexRequest > config_SortIndexRequestPtr;
typedef boost::shared_ptr< ::conti_ARS408::config_SortIndexRequest const> config_SortIndexRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator1> & lhs, const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator2> & rhs)
{
  return lhs.sort_index == rhs.sort_index;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator1> & lhs, const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conti_ARS408

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "93fb6a7e64dbd2a0708217b8ad8f0eb8";
  }

  static const char* value(const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x93fb6a7e64dbd2a0ULL;
  static const uint64_t static_value2 = 0x708217b8ad8f0eb8ULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ARS408/config_SortIndexRequest";
  }

  static const char* value(const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Selects the sorting index for the object list (ignored for\n"
"# clusters as they are always sorted by range) \n"
"\n"
"# 0x0: no sorting\n"
"# 0x1: sorted by range\n"
"# 0x2: sorted by RCS \n"
"\n"
"uint8 sort_index\n"
;
  }

  static const char* value(const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sort_index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct config_SortIndexRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conti_ARS408::config_SortIndexRequest_<ContainerAllocator>& v)
  {
    s << indent << "sort_index: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sort_index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_MESSAGE_CONFIG_SORTINDEXREQUEST_H
