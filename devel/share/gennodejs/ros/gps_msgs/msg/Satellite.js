// Auto-generated. Do not edit!

// (in-package gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Satellite {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.system = null;
      this.flags1 = null;
      this.flags2 = null;
      this.elevation = null;
      this.azimuth = null;
      this.frequency = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = 0;
      }
      if (initObj.hasOwnProperty('flags1')) {
        this.flags1 = initObj.flags1
      }
      else {
        this.flags1 = 0;
      }
      if (initObj.hasOwnProperty('flags2')) {
        this.flags2 = initObj.flags2
      }
      else {
        this.flags2 = 0;
      }
      if (initObj.hasOwnProperty('elevation')) {
        this.elevation = initObj.elevation
      }
      else {
        this.elevation = 0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Satellite
    // Serialize message field [num]
    bufferOffset = _serializer.uint8(obj.num, buffer, bufferOffset);
    // Serialize message field [system]
    bufferOffset = _serializer.uint8(obj.system, buffer, bufferOffset);
    // Serialize message field [flags1]
    bufferOffset = _serializer.uint8(obj.flags1, buffer, bufferOffset);
    // Serialize message field [flags2]
    bufferOffset = _serializer.uint8(obj.flags2, buffer, bufferOffset);
    // Serialize message field [elevation]
    bufferOffset = _serializer.uint8(obj.elevation, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.uint16(obj.azimuth, buffer, bufferOffset);
    // Check that the constant length array field [frequency] has the right length
    if (obj.frequency.length !== 3) {
      throw new Error('Unable to serialize array field frequency - length must be 3')
    }
    // Serialize message field [frequency]
    bufferOffset = _arraySerializer.uint8(obj.frequency, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Satellite
    let len;
    let data = new Satellite(null);
    // Deserialize message field [num]
    data.num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [system]
    data.system = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags1]
    data.flags1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags2]
    data.flags2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [elevation]
    data.elevation = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/Satellite';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e43ed4aebf909b95af15ba72c23c4a2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    const resolved = new Satellite(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.system !== undefined) {
      resolved.system = msg.system;
    }
    else {
      resolved.system = 0
    }

    if (msg.flags1 !== undefined) {
      resolved.flags1 = msg.flags1;
    }
    else {
      resolved.flags1 = 0
    }

    if (msg.flags2 !== undefined) {
      resolved.flags2 = msg.flags2;
    }
    else {
      resolved.flags2 = 0
    }

    if (msg.elevation !== undefined) {
      resolved.elevation = msg.elevation;
    }
    else {
      resolved.elevation = 0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = Satellite;
