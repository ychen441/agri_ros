# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from conti_ARS408/radar_cluster.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import conti_ARS408.msg
import geometry_msgs.msg
import std_msgs.msg

class radar_cluster(genpy.Message):
  _md5sum = "5444279405e342e25d3cc7da1fe8329e"
  _type = "conti_ARS408/radar_cluster"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# Data acquisition time and frame id
std_msgs/Header header

# cluster CAN messages
conti_ARS408/radar_cluster_info[] cluster_info
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: conti_ARS408/radar_cluster_info
# Cluster (0x600, 0x701, 0x702)

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
  __slots__ = ['header','cluster_info']
  _slot_types = ['std_msgs/Header','conti_ARS408/radar_cluster_info[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,cluster_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(radar_cluster, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.cluster_info is None:
        self.cluster_info = []
    else:
      self.header = std_msgs.msg.Header()
      self.cluster_info = []

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.cluster_info)
      buff.write(_struct_I.pack(length))
      for val1 in self.cluster_info:
        _x = val1.ClusterID
        buff.write(_get_struct_B().pack(_x))
        _v1 = val1.ClusterPosn
        _v2 = _v1.pose
        _v3 = _v2.position
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = _v2.orientation
        _x = _v4
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_get_struct_36d().pack(*_v1.covariance))
        _v5 = val1.ClusterVrel
        _v6 = _v5.twist
        _v7 = _v6.linear
        _x = _v7
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v8 = _v6.angular
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_36d().pack(*_v5.covariance))
        _x = val1
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.cluster_info is None:
        self.cluster_info = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cluster_info = []
      for i in range(0, length):
        val1 = conti_ARS408.msg.radar_cluster_info()
        start = end
        end += 1
        (val1.ClusterID,) = _get_struct_B().unpack(str[start:end])
        _v9 = val1.ClusterPosn
        _v10 = _v9.pose
        _v11 = _v10.position
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v12 = _v10.orientation
        _x = _v12
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 288
        _v9.covariance = _get_struct_36d().unpack(str[start:end])
        _v13 = val1.ClusterVrel
        _v14 = _v13.twist
        _v15 = _v14.linear
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = _v14.angular
        _x = _v16
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 288
        _v13.covariance = _get_struct_36d().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.ClusterDynProp, _x.ClusterRCS, _x.ClusterPdh0, _x.ClusterAmbigState, _x.ClusterInvalidState,) = _get_struct_bf3b().unpack(str[start:end])
        self.cluster_info.append(val1)
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.cluster_info)
      buff.write(_struct_I.pack(length))
      for val1 in self.cluster_info:
        _x = val1.ClusterID
        buff.write(_get_struct_B().pack(_x))
        _v17 = val1.ClusterPosn
        _v18 = _v17.pose
        _v19 = _v18.position
        _x = _v19
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v20 = _v18.orientation
        _x = _v20
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_v17.covariance.tostring())
        _v21 = val1.ClusterVrel
        _v22 = _v21.twist
        _v23 = _v22.linear
        _x = _v23
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v24 = _v22.angular
        _x = _v24
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        buff.write(_v21.covariance.tostring())
        _x = val1
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.cluster_info is None:
        self.cluster_info = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cluster_info = []
      for i in range(0, length):
        val1 = conti_ARS408.msg.radar_cluster_info()
        start = end
        end += 1
        (val1.ClusterID,) = _get_struct_B().unpack(str[start:end])
        _v25 = val1.ClusterPosn
        _v26 = _v25.pose
        _v27 = _v26.position
        _x = _v27
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v28 = _v26.orientation
        _x = _v28
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 288
        _v25.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
        _v29 = val1.ClusterVrel
        _v30 = _v29.twist
        _v31 = _v30.linear
        _x = _v31
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v32 = _v30.angular
        _x = _v32
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 288
        _v29.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
        _x = val1
        start = end
        end += 8
        (_x.ClusterDynProp, _x.ClusterRCS, _x.ClusterPdh0, _x.ClusterAmbigState, _x.ClusterInvalidState,) = _get_struct_bf3b().unpack(str[start:end])
        self.cluster_info.append(val1)
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
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_bf3b = None
def _get_struct_bf3b():
    global _struct_bf3b
    if _struct_bf3b is None:
        _struct_bf3b = struct.Struct("<bf3b")
    return _struct_bf3b
