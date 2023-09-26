# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from conti_ars408/radar_state.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class radar_state(genpy.Message):
  _md5sum = "009d15dd11f0e87306d45f2901569726"
  _type = "conti_ars408/radar_state"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# RadarState (0x201)

bool ReadStatus
bool WriteStatus
bool VoltageError
bool TemporaryError
bool TemperatureError
bool Interference
bool PersistentError
uint16 MaxDistance
int8 SensorID
int8 SortIndex
int8 RadarPower
bool CtrlRelay
int8 OutputType
bool SendQuality
bool SendExtInfo
int8 MotionRxState
bool RCSThreshold"""
  __slots__ = ['ReadStatus','WriteStatus','VoltageError','TemporaryError','TemperatureError','Interference','PersistentError','MaxDistance','SensorID','SortIndex','RadarPower','CtrlRelay','OutputType','SendQuality','SendExtInfo','MotionRxState','RCSThreshold']
  _slot_types = ['bool','bool','bool','bool','bool','bool','bool','uint16','int8','int8','int8','bool','int8','bool','bool','int8','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ReadStatus,WriteStatus,VoltageError,TemporaryError,TemperatureError,Interference,PersistentError,MaxDistance,SensorID,SortIndex,RadarPower,CtrlRelay,OutputType,SendQuality,SendExtInfo,MotionRxState,RCSThreshold

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(radar_state, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ReadStatus is None:
        self.ReadStatus = False
      if self.WriteStatus is None:
        self.WriteStatus = False
      if self.VoltageError is None:
        self.VoltageError = False
      if self.TemporaryError is None:
        self.TemporaryError = False
      if self.TemperatureError is None:
        self.TemperatureError = False
      if self.Interference is None:
        self.Interference = False
      if self.PersistentError is None:
        self.PersistentError = False
      if self.MaxDistance is None:
        self.MaxDistance = 0
      if self.SensorID is None:
        self.SensorID = 0
      if self.SortIndex is None:
        self.SortIndex = 0
      if self.RadarPower is None:
        self.RadarPower = 0
      if self.CtrlRelay is None:
        self.CtrlRelay = False
      if self.OutputType is None:
        self.OutputType = 0
      if self.SendQuality is None:
        self.SendQuality = False
      if self.SendExtInfo is None:
        self.SendExtInfo = False
      if self.MotionRxState is None:
        self.MotionRxState = 0
      if self.RCSThreshold is None:
        self.RCSThreshold = False
    else:
      self.ReadStatus = False
      self.WriteStatus = False
      self.VoltageError = False
      self.TemporaryError = False
      self.TemperatureError = False
      self.Interference = False
      self.PersistentError = False
      self.MaxDistance = 0
      self.SensorID = 0
      self.SortIndex = 0
      self.RadarPower = 0
      self.CtrlRelay = False
      self.OutputType = 0
      self.SendQuality = False
      self.SendExtInfo = False
      self.MotionRxState = 0
      self.RCSThreshold = False

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
      buff.write(_get_struct_7BH3bBb2BbB().pack(_x.ReadStatus, _x.WriteStatus, _x.VoltageError, _x.TemporaryError, _x.TemperatureError, _x.Interference, _x.PersistentError, _x.MaxDistance, _x.SensorID, _x.SortIndex, _x.RadarPower, _x.CtrlRelay, _x.OutputType, _x.SendQuality, _x.SendExtInfo, _x.MotionRxState, _x.RCSThreshold))
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
      end = 0
      _x = self
      start = end
      end += 18
      (_x.ReadStatus, _x.WriteStatus, _x.VoltageError, _x.TemporaryError, _x.TemperatureError, _x.Interference, _x.PersistentError, _x.MaxDistance, _x.SensorID, _x.SortIndex, _x.RadarPower, _x.CtrlRelay, _x.OutputType, _x.SendQuality, _x.SendExtInfo, _x.MotionRxState, _x.RCSThreshold,) = _get_struct_7BH3bBb2BbB().unpack(str[start:end])
      self.ReadStatus = bool(self.ReadStatus)
      self.WriteStatus = bool(self.WriteStatus)
      self.VoltageError = bool(self.VoltageError)
      self.TemporaryError = bool(self.TemporaryError)
      self.TemperatureError = bool(self.TemperatureError)
      self.Interference = bool(self.Interference)
      self.PersistentError = bool(self.PersistentError)
      self.CtrlRelay = bool(self.CtrlRelay)
      self.SendQuality = bool(self.SendQuality)
      self.SendExtInfo = bool(self.SendExtInfo)
      self.RCSThreshold = bool(self.RCSThreshold)
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
      buff.write(_get_struct_7BH3bBb2BbB().pack(_x.ReadStatus, _x.WriteStatus, _x.VoltageError, _x.TemporaryError, _x.TemperatureError, _x.Interference, _x.PersistentError, _x.MaxDistance, _x.SensorID, _x.SortIndex, _x.RadarPower, _x.CtrlRelay, _x.OutputType, _x.SendQuality, _x.SendExtInfo, _x.MotionRxState, _x.RCSThreshold))
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
      end = 0
      _x = self
      start = end
      end += 18
      (_x.ReadStatus, _x.WriteStatus, _x.VoltageError, _x.TemporaryError, _x.TemperatureError, _x.Interference, _x.PersistentError, _x.MaxDistance, _x.SensorID, _x.SortIndex, _x.RadarPower, _x.CtrlRelay, _x.OutputType, _x.SendQuality, _x.SendExtInfo, _x.MotionRxState, _x.RCSThreshold,) = _get_struct_7BH3bBb2BbB().unpack(str[start:end])
      self.ReadStatus = bool(self.ReadStatus)
      self.WriteStatus = bool(self.WriteStatus)
      self.VoltageError = bool(self.VoltageError)
      self.TemporaryError = bool(self.TemporaryError)
      self.TemperatureError = bool(self.TemperatureError)
      self.Interference = bool(self.Interference)
      self.PersistentError = bool(self.PersistentError)
      self.CtrlRelay = bool(self.CtrlRelay)
      self.SendQuality = bool(self.SendQuality)
      self.SendExtInfo = bool(self.SendExtInfo)
      self.RCSThreshold = bool(self.RCSThreshold)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7BH3bBb2BbB = None
def _get_struct_7BH3bBb2BbB():
    global _struct_7BH3bBb2BbB
    if _struct_7BH3bBb2BbB is None:
        _struct_7BH3bBb2BbB = struct.Struct("<7BH3bBb2BbB")
    return _struct_7BH3bBb2BbB
