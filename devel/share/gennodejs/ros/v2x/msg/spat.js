// Auto-generated. Do not edit!

// (in-package v2x.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class spat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stationId = null;
      this.SpeedLimit = null;
      this.dis2inter = null;
      this.Str_is_val = null;
      this.StrSignalState = null;
      this.StrlikelyEndTime = null;
      this.Left_is_val = null;
      this.LeftSignalState = null;
      this.LeftlikelyEndTime = null;
      this.Right_is_val = null;
      this.RighSignalState = null;
      this.RightlikelyEndTime = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stationId')) {
        this.stationId = initObj.stationId
      }
      else {
        this.stationId = 0;
      }
      if (initObj.hasOwnProperty('SpeedLimit')) {
        this.SpeedLimit = initObj.SpeedLimit
      }
      else {
        this.SpeedLimit = 0.0;
      }
      if (initObj.hasOwnProperty('dis2inter')) {
        this.dis2inter = initObj.dis2inter
      }
      else {
        this.dis2inter = 0.0;
      }
      if (initObj.hasOwnProperty('Str_is_val')) {
        this.Str_is_val = initObj.Str_is_val
      }
      else {
        this.Str_is_val = 0;
      }
      if (initObj.hasOwnProperty('StrSignalState')) {
        this.StrSignalState = initObj.StrSignalState
      }
      else {
        this.StrSignalState = 0;
      }
      if (initObj.hasOwnProperty('StrlikelyEndTime')) {
        this.StrlikelyEndTime = initObj.StrlikelyEndTime
      }
      else {
        this.StrlikelyEndTime = 0.0;
      }
      if (initObj.hasOwnProperty('Left_is_val')) {
        this.Left_is_val = initObj.Left_is_val
      }
      else {
        this.Left_is_val = 0;
      }
      if (initObj.hasOwnProperty('LeftSignalState')) {
        this.LeftSignalState = initObj.LeftSignalState
      }
      else {
        this.LeftSignalState = 0;
      }
      if (initObj.hasOwnProperty('LeftlikelyEndTime')) {
        this.LeftlikelyEndTime = initObj.LeftlikelyEndTime
      }
      else {
        this.LeftlikelyEndTime = 0.0;
      }
      if (initObj.hasOwnProperty('Right_is_val')) {
        this.Right_is_val = initObj.Right_is_val
      }
      else {
        this.Right_is_val = 0;
      }
      if (initObj.hasOwnProperty('RighSignalState')) {
        this.RighSignalState = initObj.RighSignalState
      }
      else {
        this.RighSignalState = 0;
      }
      if (initObj.hasOwnProperty('RightlikelyEndTime')) {
        this.RightlikelyEndTime = initObj.RightlikelyEndTime
      }
      else {
        this.RightlikelyEndTime = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type spat
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stationId]
    bufferOffset = _serializer.uint32(obj.stationId, buffer, bufferOffset);
    // Serialize message field [SpeedLimit]
    bufferOffset = _serializer.float64(obj.SpeedLimit, buffer, bufferOffset);
    // Serialize message field [dis2inter]
    bufferOffset = _serializer.float64(obj.dis2inter, buffer, bufferOffset);
    // Serialize message field [Str_is_val]
    bufferOffset = _serializer.uint8(obj.Str_is_val, buffer, bufferOffset);
    // Serialize message field [StrSignalState]
    bufferOffset = _serializer.uint8(obj.StrSignalState, buffer, bufferOffset);
    // Serialize message field [StrlikelyEndTime]
    bufferOffset = _serializer.float64(obj.StrlikelyEndTime, buffer, bufferOffset);
    // Serialize message field [Left_is_val]
    bufferOffset = _serializer.uint8(obj.Left_is_val, buffer, bufferOffset);
    // Serialize message field [LeftSignalState]
    bufferOffset = _serializer.uint8(obj.LeftSignalState, buffer, bufferOffset);
    // Serialize message field [LeftlikelyEndTime]
    bufferOffset = _serializer.float64(obj.LeftlikelyEndTime, buffer, bufferOffset);
    // Serialize message field [Right_is_val]
    bufferOffset = _serializer.uint8(obj.Right_is_val, buffer, bufferOffset);
    // Serialize message field [RighSignalState]
    bufferOffset = _serializer.uint8(obj.RighSignalState, buffer, bufferOffset);
    // Serialize message field [RightlikelyEndTime]
    bufferOffset = _serializer.float64(obj.RightlikelyEndTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type spat
    let len;
    let data = new spat(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stationId]
    data.stationId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [SpeedLimit]
    data.SpeedLimit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dis2inter]
    data.dis2inter = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Str_is_val]
    data.Str_is_val = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StrSignalState]
    data.StrSignalState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StrlikelyEndTime]
    data.StrlikelyEndTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Left_is_val]
    data.Left_is_val = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LeftSignalState]
    data.LeftSignalState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LeftlikelyEndTime]
    data.LeftlikelyEndTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Right_is_val]
    data.Right_is_val = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RighSignalState]
    data.RighSignalState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RightlikelyEndTime]
    data.RightlikelyEndTime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x/spat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dc16dbf8ff4dfdc07642b27f892013d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new spat(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stationId !== undefined) {
      resolved.stationId = msg.stationId;
    }
    else {
      resolved.stationId = 0
    }

    if (msg.SpeedLimit !== undefined) {
      resolved.SpeedLimit = msg.SpeedLimit;
    }
    else {
      resolved.SpeedLimit = 0.0
    }

    if (msg.dis2inter !== undefined) {
      resolved.dis2inter = msg.dis2inter;
    }
    else {
      resolved.dis2inter = 0.0
    }

    if (msg.Str_is_val !== undefined) {
      resolved.Str_is_val = msg.Str_is_val;
    }
    else {
      resolved.Str_is_val = 0
    }

    if (msg.StrSignalState !== undefined) {
      resolved.StrSignalState = msg.StrSignalState;
    }
    else {
      resolved.StrSignalState = 0
    }

    if (msg.StrlikelyEndTime !== undefined) {
      resolved.StrlikelyEndTime = msg.StrlikelyEndTime;
    }
    else {
      resolved.StrlikelyEndTime = 0.0
    }

    if (msg.Left_is_val !== undefined) {
      resolved.Left_is_val = msg.Left_is_val;
    }
    else {
      resolved.Left_is_val = 0
    }

    if (msg.LeftSignalState !== undefined) {
      resolved.LeftSignalState = msg.LeftSignalState;
    }
    else {
      resolved.LeftSignalState = 0
    }

    if (msg.LeftlikelyEndTime !== undefined) {
      resolved.LeftlikelyEndTime = msg.LeftlikelyEndTime;
    }
    else {
      resolved.LeftlikelyEndTime = 0.0
    }

    if (msg.Right_is_val !== undefined) {
      resolved.Right_is_val = msg.Right_is_val;
    }
    else {
      resolved.Right_is_val = 0
    }

    if (msg.RighSignalState !== undefined) {
      resolved.RighSignalState = msg.RighSignalState;
    }
    else {
      resolved.RighSignalState = 0
    }

    if (msg.RightlikelyEndTime !== undefined) {
      resolved.RightlikelyEndTime = msg.RightlikelyEndTime;
    }
    else {
      resolved.RightlikelyEndTime = 0.0
    }

    return resolved;
    }
};

module.exports = spat;
