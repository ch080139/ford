# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from v2x/spat.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class spat(genpy.Message):
  _md5sum = "0dc16dbf8ff4dfdc07642b27f892013d"
  _type = "v2x/spat"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

uint32 stationId

float64 SpeedLimit

float64 dis2inter

uint8 Str_is_val
uint8 StrSignalState
float64 StrlikelyEndTime

uint8 Left_is_val
uint8 LeftSignalState
float64 LeftlikelyEndTime

uint8 Right_is_val
uint8 RighSignalState
float64 RightlikelyEndTime

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
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['header','stationId','SpeedLimit','dis2inter','Str_is_val','StrSignalState','StrlikelyEndTime','Left_is_val','LeftSignalState','LeftlikelyEndTime','Right_is_val','RighSignalState','RightlikelyEndTime']
  _slot_types = ['std_msgs/Header','uint32','float64','float64','uint8','uint8','float64','uint8','uint8','float64','uint8','uint8','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,stationId,SpeedLimit,dis2inter,Str_is_val,StrSignalState,StrlikelyEndTime,Left_is_val,LeftSignalState,LeftlikelyEndTime,Right_is_val,RighSignalState,RightlikelyEndTime

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(spat, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stationId is None:
        self.stationId = 0
      if self.SpeedLimit is None:
        self.SpeedLimit = 0.
      if self.dis2inter is None:
        self.dis2inter = 0.
      if self.Str_is_val is None:
        self.Str_is_val = 0
      if self.StrSignalState is None:
        self.StrSignalState = 0
      if self.StrlikelyEndTime is None:
        self.StrlikelyEndTime = 0.
      if self.Left_is_val is None:
        self.Left_is_val = 0
      if self.LeftSignalState is None:
        self.LeftSignalState = 0
      if self.LeftlikelyEndTime is None:
        self.LeftlikelyEndTime = 0.
      if self.Right_is_val is None:
        self.Right_is_val = 0
      if self.RighSignalState is None:
        self.RighSignalState = 0
      if self.RightlikelyEndTime is None:
        self.RightlikelyEndTime = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.stationId = 0
      self.SpeedLimit = 0.
      self.dis2inter = 0.
      self.Str_is_val = 0
      self.StrSignalState = 0
      self.StrlikelyEndTime = 0.
      self.Left_is_val = 0
      self.LeftSignalState = 0
      self.LeftlikelyEndTime = 0.
      self.Right_is_val = 0
      self.RighSignalState = 0
      self.RightlikelyEndTime = 0.

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
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_I2d2Bd2Bd2Bd().pack(_x.stationId, _x.SpeedLimit, _x.dis2inter, _x.Str_is_val, _x.StrSignalState, _x.StrlikelyEndTime, _x.Left_is_val, _x.LeftSignalState, _x.LeftlikelyEndTime, _x.Right_is_val, _x.RighSignalState, _x.RightlikelyEndTime))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
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
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 50
      (_x.stationId, _x.SpeedLimit, _x.dis2inter, _x.Str_is_val, _x.StrSignalState, _x.StrlikelyEndTime, _x.Left_is_val, _x.LeftSignalState, _x.LeftlikelyEndTime, _x.Right_is_val, _x.RighSignalState, _x.RightlikelyEndTime,) = _get_struct_I2d2Bd2Bd2Bd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


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
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_I2d2Bd2Bd2Bd().pack(_x.stationId, _x.SpeedLimit, _x.dis2inter, _x.Str_is_val, _x.StrSignalState, _x.StrlikelyEndTime, _x.Left_is_val, _x.LeftSignalState, _x.LeftlikelyEndTime, _x.Right_is_val, _x.RighSignalState, _x.RightlikelyEndTime))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
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
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 50
      (_x.stationId, _x.SpeedLimit, _x.dis2inter, _x.Str_is_val, _x.StrSignalState, _x.StrlikelyEndTime, _x.Left_is_val, _x.LeftSignalState, _x.LeftlikelyEndTime, _x.Right_is_val, _x.RighSignalState, _x.RightlikelyEndTime,) = _get_struct_I2d2Bd2Bd2Bd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_I2d2Bd2Bd2Bd = None
def _get_struct_I2d2Bd2Bd2Bd():
    global _struct_I2d2Bd2Bd2Bd
    if _struct_I2d2Bd2Bd2Bd is None:
        _struct_I2d2Bd2Bd2Bd = struct.Struct("<I2d2Bd2Bd2Bd")
    return _struct_I2d2Bd2Bd2Bd
