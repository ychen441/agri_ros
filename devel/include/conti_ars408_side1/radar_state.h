// Generated by gencpp from file conti_ars408_side1/radar_state.msg
// DO NOT EDIT!


#ifndef CONTI_ARS408_SIDE1_MESSAGE_RADAR_STATE_H
#define CONTI_ARS408_SIDE1_MESSAGE_RADAR_STATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace conti_ars408_side1
{
template <class ContainerAllocator>
struct radar_state_
{
  typedef radar_state_<ContainerAllocator> Type;

  radar_state_()
    : ReadStatus(false)
    , WriteStatus(false)
    , VoltageError(false)
    , TemporaryError(false)
    , TemperatureError(false)
    , Interference(false)
    , PersistentError(false)
    , MaxDistance(0)
    , SensorID(0)
    , SortIndex(0)
    , RadarPower(0)
    , CtrlRelay(false)
    , OutputType(0)
    , SendQuality(false)
    , SendExtInfo(false)
    , MotionRxState(0)
    , RCSThreshold(false)  {
    }
  radar_state_(const ContainerAllocator& _alloc)
    : ReadStatus(false)
    , WriteStatus(false)
    , VoltageError(false)
    , TemporaryError(false)
    , TemperatureError(false)
    , Interference(false)
    , PersistentError(false)
    , MaxDistance(0)
    , SensorID(0)
    , SortIndex(0)
    , RadarPower(0)
    , CtrlRelay(false)
    , OutputType(0)
    , SendQuality(false)
    , SendExtInfo(false)
    , MotionRxState(0)
    , RCSThreshold(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ReadStatus_type;
  _ReadStatus_type ReadStatus;

   typedef uint8_t _WriteStatus_type;
  _WriteStatus_type WriteStatus;

   typedef uint8_t _VoltageError_type;
  _VoltageError_type VoltageError;

   typedef uint8_t _TemporaryError_type;
  _TemporaryError_type TemporaryError;

   typedef uint8_t _TemperatureError_type;
  _TemperatureError_type TemperatureError;

   typedef uint8_t _Interference_type;
  _Interference_type Interference;

   typedef uint8_t _PersistentError_type;
  _PersistentError_type PersistentError;

   typedef uint16_t _MaxDistance_type;
  _MaxDistance_type MaxDistance;

   typedef int8_t _SensorID_type;
  _SensorID_type SensorID;

   typedef int8_t _SortIndex_type;
  _SortIndex_type SortIndex;

   typedef int8_t _RadarPower_type;
  _RadarPower_type RadarPower;

   typedef uint8_t _CtrlRelay_type;
  _CtrlRelay_type CtrlRelay;

   typedef int8_t _OutputType_type;
  _OutputType_type OutputType;

   typedef uint8_t _SendQuality_type;
  _SendQuality_type SendQuality;

   typedef uint8_t _SendExtInfo_type;
  _SendExtInfo_type SendExtInfo;

   typedef int8_t _MotionRxState_type;
  _MotionRxState_type MotionRxState;

   typedef uint8_t _RCSThreshold_type;
  _RCSThreshold_type RCSThreshold;





  typedef boost::shared_ptr< ::conti_ars408_side1::radar_state_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conti_ars408_side1::radar_state_<ContainerAllocator> const> ConstPtr;

}; // struct radar_state_

typedef ::conti_ars408_side1::radar_state_<std::allocator<void> > radar_state;

typedef boost::shared_ptr< ::conti_ars408_side1::radar_state > radar_statePtr;
typedef boost::shared_ptr< ::conti_ars408_side1::radar_state const> radar_stateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conti_ars408_side1::radar_state_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conti_ars408_side1::radar_state_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conti_ars408_side1::radar_state_<ContainerAllocator1> & lhs, const ::conti_ars408_side1::radar_state_<ContainerAllocator2> & rhs)
{
  return lhs.ReadStatus == rhs.ReadStatus &&
    lhs.WriteStatus == rhs.WriteStatus &&
    lhs.VoltageError == rhs.VoltageError &&
    lhs.TemporaryError == rhs.TemporaryError &&
    lhs.TemperatureError == rhs.TemperatureError &&
    lhs.Interference == rhs.Interference &&
    lhs.PersistentError == rhs.PersistentError &&
    lhs.MaxDistance == rhs.MaxDistance &&
    lhs.SensorID == rhs.SensorID &&
    lhs.SortIndex == rhs.SortIndex &&
    lhs.RadarPower == rhs.RadarPower &&
    lhs.CtrlRelay == rhs.CtrlRelay &&
    lhs.OutputType == rhs.OutputType &&
    lhs.SendQuality == rhs.SendQuality &&
    lhs.SendExtInfo == rhs.SendExtInfo &&
    lhs.MotionRxState == rhs.MotionRxState &&
    lhs.RCSThreshold == rhs.RCSThreshold;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conti_ars408_side1::radar_state_<ContainerAllocator1> & lhs, const ::conti_ars408_side1::radar_state_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conti_ars408_side1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conti_ars408_side1::radar_state_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conti_ars408_side1::radar_state_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conti_ars408_side1::radar_state_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "009d15dd11f0e87306d45f2901569726";
  }

  static const char* value(const ::conti_ars408_side1::radar_state_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x009d15dd11f0e873ULL;
  static const uint64_t static_value2 = 0x06d45f2901569726ULL;
};

template<class ContainerAllocator>
struct DataType< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conti_ars408_side1/radar_state";
  }

  static const char* value(const ::conti_ars408_side1::radar_state_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# RadarState (0x201)\n"
"\n"
"bool ReadStatus\n"
"bool WriteStatus\n"
"bool VoltageError\n"
"bool TemporaryError\n"
"bool TemperatureError\n"
"bool Interference\n"
"bool PersistentError\n"
"uint16 MaxDistance\n"
"int8 SensorID\n"
"int8 SortIndex\n"
"int8 RadarPower\n"
"bool CtrlRelay\n"
"int8 OutputType\n"
"bool SendQuality\n"
"bool SendExtInfo\n"
"int8 MotionRxState\n"
"bool RCSThreshold\n"
;
  }

  static const char* value(const ::conti_ars408_side1::radar_state_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ReadStatus);
      stream.next(m.WriteStatus);
      stream.next(m.VoltageError);
      stream.next(m.TemporaryError);
      stream.next(m.TemperatureError);
      stream.next(m.Interference);
      stream.next(m.PersistentError);
      stream.next(m.MaxDistance);
      stream.next(m.SensorID);
      stream.next(m.SortIndex);
      stream.next(m.RadarPower);
      stream.next(m.CtrlRelay);
      stream.next(m.OutputType);
      stream.next(m.SendQuality);
      stream.next(m.SendExtInfo);
      stream.next(m.MotionRxState);
      stream.next(m.RCSThreshold);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct radar_state_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conti_ars408_side1::radar_state_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conti_ars408_side1::radar_state_<ContainerAllocator>& v)
  {
    s << indent << "ReadStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ReadStatus);
    s << indent << "WriteStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.WriteStatus);
    s << indent << "VoltageError: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.VoltageError);
    s << indent << "TemporaryError: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.TemporaryError);
    s << indent << "TemperatureError: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.TemperatureError);
    s << indent << "Interference: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Interference);
    s << indent << "PersistentError: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.PersistentError);
    s << indent << "MaxDistance: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.MaxDistance);
    s << indent << "SensorID: ";
    Printer<int8_t>::stream(s, indent + "  ", v.SensorID);
    s << indent << "SortIndex: ";
    Printer<int8_t>::stream(s, indent + "  ", v.SortIndex);
    s << indent << "RadarPower: ";
    Printer<int8_t>::stream(s, indent + "  ", v.RadarPower);
    s << indent << "CtrlRelay: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.CtrlRelay);
    s << indent << "OutputType: ";
    Printer<int8_t>::stream(s, indent + "  ", v.OutputType);
    s << indent << "SendQuality: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SendQuality);
    s << indent << "SendExtInfo: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SendExtInfo);
    s << indent << "MotionRxState: ";
    Printer<int8_t>::stream(s, indent + "  ", v.MotionRxState);
    s << indent << "RCSThreshold: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.RCSThreshold);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTI_ARS408_SIDE1_MESSAGE_RADAR_STATE_H