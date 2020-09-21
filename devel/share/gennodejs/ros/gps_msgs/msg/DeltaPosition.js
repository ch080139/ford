// Auto-generated. Do not edit!

// (in-package gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let XYZRpvData = require('./XYZRpvData.js');
let ENURpvData = require('./ENURpvData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DeltaPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.gps_id = null;
      this.gps_time0 = null;
      this.gps_time1 = null;
      this.dt = null;
      this.status = null;
      this.xyz = null;
      this.enu = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('gps_id')) {
        this.gps_id = initObj.gps_id
      }
      else {
        this.gps_id = '';
      }
      if (initObj.hasOwnProperty('gps_time0')) {
        this.gps_time0 = initObj.gps_time0
      }
      else {
        this.gps_time0 = 0.0;
      }
      if (initObj.hasOwnProperty('gps_time1')) {
        this.gps_time1 = initObj.gps_time1
      }
      else {
        this.gps_time1 = 0.0;
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = new XYZRpvData();
      }
      if (initObj.hasOwnProperty('enu')) {
        this.enu = initObj.enu
      }
      else {
        this.enu = new ENURpvData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeltaPosition
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [gps_id]
    bufferOffset = _serializer.string(obj.gps_id, buffer, bufferOffset);
    // Serialize message field [gps_time0]
    bufferOffset = _serializer.float64(obj.gps_time0, buffer, bufferOffset);
    // Serialize message field [gps_time1]
    bufferOffset = _serializer.float64(obj.gps_time1, buffer, bufferOffset);
    // Serialize message field [dt]
    bufferOffset = _serializer.float64(obj.dt, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [xyz]
    bufferOffset = XYZRpvData.serialize(obj.xyz, buffer, bufferOffset);
    // Serialize message field [enu]
    bufferOffset = ENURpvData.serialize(obj.enu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeltaPosition
    let len;
    let data = new DeltaPosition(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_id]
    data.gps_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_time0]
    data.gps_time0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_time1]
    data.gps_time1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dt]
    data.dt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [xyz]
    data.xyz = XYZRpvData.deserialize(buffer, bufferOffset);
    // Deserialize message field [enu]
    data.enu = ENURpvData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.frame_id.length;
    length += object.gps_id.length;
    return length + 93;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/DeltaPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c73c8087b50ba1930a88250b581bfacb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message output by TDCP
    
    Header header
        uint32 seq
        time stamp
        string frame_id
    
    string  gps_id
    float64 gps_time0
    float64 gps_time1
    
    float64 dt
    
    ## Status
    ##      0: Fault, standard positioning solution reported
    ##      1: All good
    uint8 status
    
    XYZRpvData xyz
    ENURpvData enu
    
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
    
    ================================================================================
    MSG: gps_msgs/XYZRpvData
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: gps_msgs/ENURpvData
    float64 e
    float64 n
    float64 u
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeltaPosition(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.gps_id !== undefined) {
      resolved.gps_id = msg.gps_id;
    }
    else {
      resolved.gps_id = ''
    }

    if (msg.gps_time0 !== undefined) {
      resolved.gps_time0 = msg.gps_time0;
    }
    else {
      resolved.gps_time0 = 0.0
    }

    if (msg.gps_time1 !== undefined) {
      resolved.gps_time1 = msg.gps_time1;
    }
    else {
      resolved.gps_time1 = 0.0
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.xyz !== undefined) {
      resolved.xyz = XYZRpvData.Resolve(msg.xyz)
    }
    else {
      resolved.xyz = new XYZRpvData()
    }

    if (msg.enu !== undefined) {
      resolved.enu = ENURpvData.Resolve(msg.enu)
    }
    else {
      resolved.enu = new ENURpvData()
    }

    return resolved;
    }
};

module.exports = DeltaPosition;
