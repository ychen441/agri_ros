// Generated by gencpp from file conti_ARS408/radar_cluster_info.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_MESSAGE_RADAR_CLUSTER_INFO_H
#define CONTI_ARS408_MESSAGE_RADAR_CLUSTER_INFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseWithCovariance.h>
#include <geometry_msgs/TwistWithCovariance.h>

namespace conti_ARS408
{
template <class ContainerAllocator>
struct radar_cluster_info_
{
  typedef radar_cluster_info_<ContainerAllocator> Type;

  radar_cluster_info_()
    : ClusterID(0)
    , ClusterPosn()
    , ClusterVrel()
    , ClusterDynProp(0)
    , ClusterRCS(0.0)
    , ClusterPdh0(0)
    , ClusterAmbigState(0)
    , ClusterInvalidState(0)  {
    }
  radar_cluster_info_(const ContainerAllocator& _alloc)
    : ClusterID(0)
    , ClusterPosn(_alloc)
    , ClusterVrel(_alloc)
    , ClusterDynProp(0)
    , ClusterRCS(0.0)
    , ClusterPdh0(0)
    , ClusterAmbigState(0)
    , ClusterInvalidState(0)  {
  (void)_alloc;
    }



   typedef uint8_t _ClusterID_type;
  _ClusterID_type ClusterID;

   typedef  ::geometry_msgs::PoseWithCovariance_<ContainerAllocator>  _ClusterPosn_type;
  _ClusterPosn_type ClusterPosn;

   typedef  ::geometry_msgs::TwistWithCovariance_<ContainerAllocator>  _ClusterVrel_type;
  _ClusterVrel_type ClusterVrel;

   typedef int8_t _ClusterDynProp_type;
  _ClusterDynProp_type ClusterDynProp;

   typedef float _ClusterRCS_type;
  _ClusterRCS_type ClusterRCS;

   typedef int8_t _ClusterPdh0_type;
  _ClusterPdh0_type ClusterPdh0;

   typedef int8_t _ClusterAmbigState_type;
  _ClusterAmbigState_type ClusterAmbigState;

   typedef int8_t _ClusterInvalidState_type;
  _ClusterInvalidState_type ClusterInvalidState;





  typedef boost::shared_ptr< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> const> ConstPtr;

}; // struct radar_cluster_info_

typedef ::conti_ARS408::radar_cluster_info_<std::allocator<void> > radar_cluster_info;

typedef boost::shared_ptr< ::conti_ARS408::radar_cluster_info > radar_cluster_infoPtr;
typedef boost::shared_ptr< ::conti_ARS408::radar_cluster_info const> radar_cluster_infoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ARS408::radar_cluster_info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conti_ARS408::radar_cluster_info_<ContainerAllocator1> & lhs, const ::conti_ARS408::radar_cluster_info_<ContainerAllocator2> & rhs)
{
  return lhs.ClusterID == rhs.ClusterID &&
    lhs.ClusterPosn == rhs.ClusterPosn &&
    lhs.ClusterVrel == rhs.ClusterVrel &&
    lhs.ClusterDynProp == rhs.ClusterDynProp &&
    lhs.ClusterRCS == rhs.ClusterRCS &&
    lhs.ClusterPdh0 == rhs.ClusterPdh0 &&
    lhs.ClusterAmbigState == rhs.ClusterAmbigState &&
    lhs.ClusterInvalidState == rhs.ClusterInvalidState;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conti_ARS408::radar_cluster_info_<ContainerAllocator1> & lhs, const ::conti_ARS408::radar_cluster_info_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conti_ARS408

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a7156caed52057af535274d12fd49d8";
  }

  static const char* value(const ::conti_ARS408::radar_cluster_info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a7156caed52057aULL;
  static const uint64_t static_value2 = 0xf535274d12fd49d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ARS408/radar_cluster_info";
  }

  static const char* value(const ::conti_ARS408::radar_cluster_info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Cluster (0x600, 0x701, 0x702)\n"
"\n"
"uint8 ClusterID\n"
"geometry_msgs/PoseWithCovariance ClusterPosn\n"
"geometry_msgs/TwistWithCovariance ClusterVrel\n"
"int8 ClusterDynProp\n"
"float32 ClusterRCS\n"
"int8 ClusterPdh0\n"
"int8 ClusterAmbigState\n"
"int8 ClusterInvalidState\n"
"\n"
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
;
  }

  static const char* value(const ::conti_ARS408::radar_cluster_info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ClusterID);
      stream.next(m.ClusterPosn);
      stream.next(m.ClusterVrel);
      stream.next(m.ClusterDynProp);
      stream.next(m.ClusterRCS);
      stream.next(m.ClusterPdh0);
      stream.next(m.ClusterAmbigState);
      stream.next(m.ClusterInvalidState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct radar_cluster_info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ARS408::radar_cluster_info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conti_ARS408::radar_cluster_info_<ContainerAllocator>& v)
  {
    s << indent << "ClusterID: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ClusterID);
    s << indent << "ClusterPosn: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.ClusterPosn);
    s << indent << "ClusterVrel: ";
    s << std::endl;
    Printer< ::geometry_msgs::TwistWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.ClusterVrel);
    s << indent << "ClusterDynProp: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ClusterDynProp);
    s << indent << "ClusterRCS: ";
    Printer<float>::stream(s, indent + "  ", v.ClusterRCS);
    s << indent << "ClusterPdh0: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ClusterPdh0);
    s << indent << "ClusterAmbigState: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ClusterAmbigState);
    s << indent << "ClusterInvalidState: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ClusterInvalidState);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_MESSAGE_RADAR_CLUSTER_INFO_H
