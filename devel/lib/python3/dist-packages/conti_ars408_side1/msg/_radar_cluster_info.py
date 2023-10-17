# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from conti_ars408_side1/radar_cluster_info.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class radar_cluster_info(genpy.Message):
  _md5sum = "6a7156caed52057af535274d12fd49d8"
  _type = "conti_ars408_side1/radar_cluster_info"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Cluster (0x600, 0x701, 0x702)

uint8 ClusterID
geometry_msgs/PoseWithCovariance ClusterPosn
geometry_msgs/TwistWithCovariance ClusterVrel
int8 ClusterDynProp
float32 ClusterRCS
int8 ClusterPdh0
int8 ClusterAmbigState
int8 ClusterInvalidState

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['ClusterID','ClusterPosn','ClusterVrel','ClusterDynProp','ClusterRCS','ClusterPdh0','ClusterAmbigState','ClusterInvalidState']
  _slot_types = ['uint8','geometry_msgs/PoseWithCovariance','geometry_msgs/TwistWithCovariance','int8','float32','int8','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ClusterID,ClusterPosn,ClusterVrel,ClusterDynProp,ClusterRCS,ClusterPdh0,ClusterAmbigState,ClusterInvalidState

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(radar_cluster_info, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ClusterID is None:
        self.ClusterID = 0
      if self.ClusterPosn is None:
        self.ClusterPosn = geometry_msgs.msg.PoseWithCovariance()
      if self.ClusterVrel is None:
        self.ClusterVrel = geometry_msgs.msg.TwistWithCovariance()
      if self.ClusterDynProp is None:
        self.ClusterDynProp = 0
      if self.ClusterRCS is None:
        self.ClusterRCS = 0.
      if self.ClusterPdh0 is None:
        self.ClusterPdh0 = 0
      if self.ClusterAmbigState is None:
        self.ClusterAmbigState = 0
      if self.ClusterInvalidState is None:
        self.ClusterInvalidState = 0
    else:
      self.ClusterID = 0
      self.ClusterPosn = geometry_msgs.msg.PoseWithCovariance()
      self.ClusterVrel = geometry_msgs.msg.TwistWithCovariance()
      self.ClusterDynProp = 0
      self.ClusterRCS = 0.
      self.ClusterPdh0 = 0
      self.ClusterAmbigState = 0
      self.ClusterInvalidState = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B7d().pack(_x.ClusterID, _x.ClusterPosn.pose.position.x, _x.ClusterPosn.pose.position.y, _x.ClusterPosn.pose.position.z, _x.ClusterPosn.pose.orientation.x, _x.ClusterPosn.pose.orientation.y, _x.ClusterPosn.pose.orientation.z, _x.ClusterPosn.pose.orientation.w))
      buff.write(_get_struct_36d().pack(*self.ClusterPosn.covariance))
      _x = self
      buff.write(_get_struct_6d().pack(_x.ClusterVrel.twist.linear.x, _x.ClusterVrel.twist.linear.y, _x.ClusterVrel.twist.linear.z, _x.ClusterVrel.twist.angular.x, _x.ClusterVrel.twist.angular.y, _x.ClusterVrel.twist.angular.z))
      buff.write(_get_struct_36d().pack(*self.ClusterVrel.covariance))
      _x = self
      buff.write(_get_struct_bf3b().pack(_x.ClusterDynProp, _x.ClusterRCS, _x.ClusterPdh0, _x.ClusterAmbigState, _x.ClusterInvalidState))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ClusterPosn is None:
        self.ClusterPosn = geometry_msgs.msg.PoseWithCovariance()
      if self.ClusterVrel is None:
        self.ClusterVrel = geometry_msgs.msg.TwistWithCovariance()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.ClusterID, _x.ClusterPosn.pose.position.x, _x.ClusterPosn.pose.position.y, _x.ClusterPosn.pose.position.z, _x.ClusterPosn.pose.orientation.x, _x.ClusterPosn.pose.orientation.y, _x.ClusterPosn.pose.orientation.z, _x.ClusterPosn.pose.orientation.w,) = _get_struct_B7d().unpack(str[start:end])
      start = end
      end += 288
      self.ClusterPosn.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.ClusterVrel.twist.linear.x, _x.ClusterVrel.twist.linear.y, _x.ClusterVrel.twist.linear.z, _x.ClusterVrel.twist.angular.x, _x.ClusterVrel.twist.angular.y, _x.ClusterVrel.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.ClusterVrel.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 8
      (_x.ClusterDynProp, _x.ClusterRCS, _x.ClusterPdh0, _x.ClusterAmbigState, _x.ClusterInvalidState,) = _get_struct_bf3b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B7d().pack(_x.ClusterID, _x.ClusterPosn.pose.position.x, _x.ClusterPosn.pose.position.y, _x.ClusterPosn.pose.position.z, _x.ClusterPosn.pose.orientation.x, _x.ClusterPosn.pose.orientation.y, _x.ClusterPosn.pose.orientation.z, _x.ClusterPosn.pose.orientation.w))
      buff.write(self.ClusterPosn.covariance.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.ClusterVrel.twist.linear.x, _x.ClusterVrel.twist.linear.y, _x.ClusterVrel.twist.linear.z, _x.ClusterVrel.twist.angular.x, _x.ClusterVrel.twist.angular.y, _x.ClusterVrel.twist.angular.z))
      buff.write(self.ClusterVrel.covariance.tostring())
      _x = self
      buff.write(_get_struct_bf3b().pack(_x.ClusterDynProp, _x.ClusterRCS, _x.ClusterPdh0, _x.ClusterAmbigState, _x.ClusterInvalidState))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ClusterPosn is None:
        self.ClusterPosn = geometry_msgs.msg.PoseWithCovariance()
      if self.ClusterVrel is None:
        self.ClusterVrel = geometry_msgs.msg.TwistWithCovariance()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.ClusterID, _x.ClusterPosn.pose.position.x, _x.ClusterPosn.pose.position.y, _x.ClusterPosn.pose.position.z, _x.ClusterPosn.pose.orientation.x, _x.ClusterPosn.pose.orientation.y, _x.ClusterPosn.pose.orientation.z, _x.ClusterPosn.pose.orientation.w,) = _get_struct_B7d().unpack(str[start:end])
      start = end
      end += 288
      self.ClusterPosn.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.ClusterVrel.twist.linear.x, _x.ClusterVrel.twist.linear.y, _x.ClusterVrel.twist.linear.z, _x.ClusterVrel.twist.angular.x, _x.ClusterVrel.twist.angular.y, _x.ClusterVrel.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.ClusterVrel.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 8
      (_x.ClusterDynProp, _x.ClusterRCS, _x.ClusterPdh0, _x.ClusterAmbigState, _x.ClusterInvalidState,) = _get_struct_bf3b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
_struct_B7d = None
def _get_struct_B7d():
    global _struct_B7d
    if _struct_B7d is None:
        _struct_B7d = struct.Struct("<B7d")
    return _struct_B7d
_struct_bf3b = None
def _get_struct_bf3b():
    global _struct_bf3b
    if _struct_bf3b is None:
        _struct_bf3b = struct.Struct("<bf3b")
    return _struct_bf3b
