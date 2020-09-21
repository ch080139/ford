# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gps_msgs/Inspvax.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Inspvax(genpy.Message):
  _md5sum = "442bc1ce33238294992441ea03898496"
  _type = "gps_msgs/Inspvax"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

float64 latitude
float64 longitude
float64 height
float32 undulation
float64 north_velocity
float64 east_velocity
float64 up_velocity
float64 roll
float64 pitch
float64 azimuth
float32 latitude_standard_deviation
float32 longitude_standard_deviation
float32 height_standard_deviation
float32 northing_standard_deviation
float32 easting_standard_deviation
float32 uping_standard_deviation
float32 roll_standard_deviation
float32 pitch_standard_deviation
float32 azimuth_standard_deviation

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
  __slots__ = ['header','latitude','longitude','height','undulation','north_velocity','east_velocity','up_velocity','roll','pitch','azimuth','latitude_standard_deviation','longitude_standard_deviation','height_standard_deviation','northing_standard_deviation','easting_standard_deviation','uping_standard_deviation','roll_standard_deviation','pitch_standard_deviation','azimuth_standard_deviation']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float32','float64','float64','float64','float64','float64','float64','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,latitude,longitude,height,undulation,north_velocity,east_velocity,up_velocity,roll,pitch,azimuth,latitude_standard_deviation,longitude_standard_deviation,height_standard_deviation,northing_standard_deviation,easting_standard_deviation,uping_standard_deviation,roll_standard_deviation,pitch_standard_deviation,azimuth_standard_deviation

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Inspvax, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.height is None:
        self.height = 0.
      if self.undulation is None:
        self.undulation = 0.
      if self.north_velocity is None:
        self.north_velocity = 0.
      if self.east_velocity is None:
        self.east_velocity = 0.
      if self.up_velocity is None:
        self.up_velocity = 0.
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.azimuth is None:
        self.azimuth = 0.
      if self.latitude_standard_deviation is None:
        self.latitude_standard_deviation = 0.
      if self.longitude_standard_deviation is None:
        self.longitude_standard_deviation = 0.
      if self.height_standard_deviation is None:
        self.height_standard_deviation = 0.
      if self.northing_standard_deviation is None:
        self.northing_standard_deviation = 0.
      if self.easting_standard_deviation is None:
        self.easting_standard_deviation = 0.
      if self.uping_standard_deviation is None:
        self.uping_standard_deviation = 0.
      if self.roll_standard_deviation is None:
        self.roll_standard_deviation = 0.
      if self.pitch_standard_deviation is None:
        self.pitch_standard_deviation = 0.
      if self.azimuth_standard_deviation is None:
        self.azimuth_standard_deviation = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.latitude = 0.
      self.longitude = 0.
      self.height = 0.
      self.undulation = 0.
      self.north_velocity = 0.
      self.east_velocity = 0.
      self.up_velocity = 0.
      self.roll = 0.
      self.pitch = 0.
      self.azimuth = 0.
      self.latitude_standard_deviation = 0.
      self.longitude_standard_deviation = 0.
      self.height_standard_deviation = 0.
      self.northing_standard_deviation = 0.
      self.easting_standard_deviation = 0.
      self.uping_standard_deviation = 0.
      self.roll_standard_deviation = 0.
      self.pitch_standard_deviation = 0.
      self.azimuth_standard_deviation = 0.

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
      buff.write(_get_struct_3df6d9f().pack(_x.latitude, _x.longitude, _x.height, _x.undulation, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.roll, _x.pitch, _x.azimuth, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation, _x.northing_standard_deviation, _x.easting_standard_deviation, _x.uping_standard_deviation, _x.roll_standard_deviation, _x.pitch_standard_deviation, _x.azimuth_standard_deviation))
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
      end += 112
      (_x.latitude, _x.longitude, _x.height, _x.undulation, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.roll, _x.pitch, _x.azimuth, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation, _x.northing_standard_deviation, _x.easting_standard_deviation, _x.uping_standard_deviation, _x.roll_standard_deviation, _x.pitch_standard_deviation, _x.azimuth_standard_deviation,) = _get_struct_3df6d9f().unpack(str[start:end])
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
      buff.write(_get_struct_3df6d9f().pack(_x.latitude, _x.longitude, _x.height, _x.undulation, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.roll, _x.pitch, _x.azimuth, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation, _x.northing_standard_deviation, _x.easting_standard_deviation, _x.uping_standard_deviation, _x.roll_standard_deviation, _x.pitch_standard_deviation, _x.azimuth_standard_deviation))
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
      end += 112
      (_x.latitude, _x.longitude, _x.height, _x.undulation, _x.north_velocity, _x.east_velocity, _x.up_velocity, _x.roll, _x.pitch, _x.azimuth, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation, _x.northing_standard_deviation, _x.easting_standard_deviation, _x.uping_standard_deviation, _x.roll_standard_deviation, _x.pitch_standard_deviation, _x.azimuth_standard_deviation,) = _get_struct_3df6d9f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3df6d9f = None
def _get_struct_3df6d9f():
    global _struct_3df6d9f
    if _struct_3df6d9f is None:
        _struct_3df6d9f = struct.Struct("<3df6d9f")
    return _struct_3df6d9f
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
