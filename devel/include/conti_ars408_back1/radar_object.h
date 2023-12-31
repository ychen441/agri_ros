// Generated by gencpp from file conti_ars408_back1/radar_object.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_BACK1_MESSAGE_RADAR_OBJECT_H
#define CONTI_ARS408_BACK1_MESSAGE_RADAR_OBJECT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <conti_ars408_back1/radar_object_info.h>

namespace conti_ars408_back1
{
template <class ContainerAllocator>
struct radar_object_
{
  typedef radar_object_<ContainerAllocator> Type;

  radar_object_()
    : header()
    , object_info()  {
    }
  radar_object_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , object_info(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::conti_ars408_back1::radar_object_info_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::conti_ars408_back1::radar_object_info_<ContainerAllocator> >> _object_info_type;
  _object_info_type object_info;





  typedef boost::shared_ptr< ::conti_ars408_back1::radar_object_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ars408_back1::radar_object_<ContainerAllocator> const> ConstPtr;

}; // struct radar_object_

typedef ::conti_ars408_back1::radar_object_<std::allocator<void> > radar_object;

typedef boost::shared_ptr< ::conti_ars408_back1::radar_object > radar_objectPtr;
typedef boost::shared_ptr< ::conti_ars408_back1::radar_object const> radar_objectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ars408_back1::radar_object_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ars408_back1::radar_object_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conti_ars408_back1::radar_object_<ContainerAllocator1> & lhs, const ::conti_ars408_back1::radar_object_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.object_info == rhs.object_info;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conti_ars408_back1::radar_object_<ContainerAllocator1> & lhs, const ::conti_ars408_back1::radar_object_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conti_ars408_back1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_back1::radar_object_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_back1::radar_object_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_back1::radar_object_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c8360e2c7cdc8ab4ae558f060a4140ee";
  }

  static const char* value(const ::conti_ars408_back1::radar_object_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc8360e2c7cdc8ab4ULL;
  static const uint64_t static_value2 = 0xae558f060a4140eeULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ars408_back1/radar_object";
  }

  static const char* value(const ::conti_ars408_back1::radar_object_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Data acquisition time and frame id\n"
"std_msgs/Header header\n"
"\n"
"# Object CAN messages\n"
"conti_ars408_back1/radar_object_info[] object_info\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: conti_ars408_back1/radar_object_info\n"
"# Object (0x60A, 0x60B, 0x60C, 0x60D)\n"
"\n"
"uint8 ObjectID\n"
"geometry_msgs/PoseWithCovariance ObjectPosn\n"
"geometry_msgs/TwistWithCovariance ObjectVrel\n"
"geometry_msgs/AccelWithCovariance ObjectArel\n"
"int8 ObjectDynProp\n"
"float32 ObjectRCS\n"
"int8 ObjectMeasState\n"
"int8 ObjectProbOfExist\n"
"int8 ObjectClass\n"
"float32 ObjectOrientationAngle\n"
"float32 ObjectLength\n"
"float32 ObjectWidth\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/AccelWithCovariance\n"
"# This expresses acceleration in free space with uncertainty.\n"
"\n"
"Accel accel\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::conti_ars408_back1::radar_object_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.object_info);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct radar_object_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ars408_back1::radar_object_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conti_ars408_back1::radar_object_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "object_info[]" << std::endl;
    for (size_t i = 0; i < v.object_info.size(); ++i)
    {
      s << indent << "  object_info[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::conti_ars408_back1::radar_object_info_<ContainerAllocator> >::stream(s, indent + "    ", v.object_info[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_BACK1_MESSAGE_RADAR_OBJECT_H
