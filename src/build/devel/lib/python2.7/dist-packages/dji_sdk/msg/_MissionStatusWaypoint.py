# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dji_sdk/MissionStatusWaypoint.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MissionStatusWaypoint(genpy.Message):
  _md5sum = "4f2b7b1e7f32be55abc541c1b7552d41"
  _type = "dji_sdk/MissionStatusWaypoint"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 mission_type
uint8 target_waypoint
uint8 current_status
uint8 error_code
"""
  __slots__ = ['mission_type','target_waypoint','current_status','error_code']
  _slot_types = ['uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mission_type,target_waypoint,current_status,error_code

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MissionStatusWaypoint, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.mission_type is None:
        self.mission_type = 0
      if self.target_waypoint is None:
        self.target_waypoint = 0
      if self.current_status is None:
        self.current_status = 0
      if self.error_code is None:
        self.error_code = 0
    else:
      self.mission_type = 0
      self.target_waypoint = 0
      self.current_status = 0
      self.error_code = 0

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
      buff.write(_struct_4B.pack(_x.mission_type, _x.target_waypoint, _x.current_status, _x.error_code))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.mission_type, _x.target_waypoint, _x.current_status, _x.error_code,) = _struct_4B.unpack(str[start:end])
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
      buff.write(_struct_4B.pack(_x.mission_type, _x.target_waypoint, _x.current_status, _x.error_code))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.mission_type, _x.target_waypoint, _x.current_status, _x.error_code,) = _struct_4B.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4B = struct.Struct("<4B")
