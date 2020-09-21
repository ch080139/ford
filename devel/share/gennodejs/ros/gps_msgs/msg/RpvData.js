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

//-----------------------------------------------------------

class RpvData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xyz = null;
      this.enu = null;
      this.magnitude = null;
      this.horizontal_magnitude = null;
    }
    else {
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
      if (initObj.hasOwnProperty('magnitude')) {
        this.magnitude = initObj.magnitude
      }
      else {
        this.magnitude = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_magnitude')) {
        this.horizontal_magnitude = initObj.horizontal_magnitude
      }
      else {
        this.horizontal_magnitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RpvData
    // Serialize message field [xyz]
    bufferOffset = XYZRpvData.serialize(obj.xyz, buffer, bufferOffset);
    // Serialize message field [enu]
    bufferOffset = ENURpvData.serialize(obj.enu, buffer, bufferOffset);
    // Serialize message field [magnitude]
    bufferOffset = _serializer.float64(obj.magnitude, buffer, bufferOffset);
    // Serialize message field [horizontal_magnitude]
    bufferOffset = _serializer.float64(obj.horizontal_magnitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RpvData
    let len;
    let data = new RpvData(null);
    // Deserialize message field [xyz]
    data.xyz = XYZRpvData.deserialize(buffer, bufferOffset);
    // Deserialize message field [enu]
    data.enu = ENURpvData.deserialize(buffer, bufferOffset);
    // Deserialize message field [magnitude]
    data.magnitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontal_magnitude]
    data.horizontal_magnitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/RpvData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '072d47cf1d4834308410485efe25a2f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    XYZRpvData xyz
    ENURpvData enu
    float64 magnitude
    float64 horizontal_magnitude
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
    const resolved = new RpvData(null);
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

    if (msg.magnitude !== undefined) {
      resolved.magnitude = msg.magnitude;
    }
    else {
      resolved.magnitude = 0.0
    }

    if (msg.horizontal_magnitude !== undefined) {
      resolved.horizontal_magnitude = msg.horizontal_magnitude;
    }
    else {
      resolved.horizontal_magnitude = 0.0
    }

    return resolved;
    }
};

module.exports = RpvData;
