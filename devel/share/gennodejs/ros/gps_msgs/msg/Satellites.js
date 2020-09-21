// Auto-generated. Do not edit!

// (in-package gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Satellite = require('./Satellite.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Satellites {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.count = null;
      this.satellites = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('satellites')) {
        this.satellites = initObj.satellites
      }
      else {
        this.satellites = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Satellites
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    // Serialize message field [satellites]
    // Serialize the length for message field [satellites]
    bufferOffset = _serializer.uint32(obj.satellites.length, buffer, bufferOffset);
    obj.satellites.forEach((val) => {
      bufferOffset = Satellite.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Satellites
    let len;
    let data = new Satellites(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [satellites]
    // Deserialize array length for message field [satellites]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.satellites = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.satellites[i] = Satellite.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 10 * object.satellites.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/Satellites';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eda6446560ed799671452292ba249e75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint8 count
    gps_msgs/Satellite[] satellites
    
    
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
    MSG: gps_msgs/Satellite
    
    uint8 num
    uint8 system
    uint8 flags1
    uint8 flags2
    uint8 elevation
    uint16 azimuth
    uint8[3] frequency
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Satellites(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.satellites !== undefined) {
      resolved.satellites = new Array(msg.satellites.length);
      for (let i = 0; i < resolved.satellites.length; ++i) {
        resolved.satellites[i] = Satellite.Resolve(msg.satellites[i]);
      }
    }
    else {
      resolved.satellites = []
    }

    return resolved;
    }
};

module.exports = Satellites;
