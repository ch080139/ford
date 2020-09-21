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

class Carrier {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.doppler = null;
      this.noise = null;
      this.phase = null;
      this.phase_std = null;
    }
    else {
      if (initObj.hasOwnProperty('doppler')) {
        this.doppler = initObj.doppler
      }
      else {
        this.doppler = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('phase_std')) {
        this.phase_std = initObj.phase_std
      }
      else {
        this.phase_std = new Array(33).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Carrier
    // Check that the constant length array field [doppler] has the right length
    if (obj.doppler.length !== 33) {
      throw new Error('Unable to serialize array field doppler - length must be 33')
    }
    // Serialize message field [doppler]
    bufferOffset = _arraySerializer.float64(obj.doppler, buffer, bufferOffset, 33);
    // Check that the constant length array field [noise] has the right length
    if (obj.noise.length !== 33) {
      throw new Error('Unable to serialize array field noise - length must be 33')
    }
    // Serialize message field [noise]
    bufferOffset = _arraySerializer.float64(obj.noise, buffer, bufferOffset, 33);
    // Check that the constant length array field [phase] has the right length
    if (obj.phase.length !== 33) {
      throw new Error('Unable to serialize array field phase - length must be 33')
    }
    // Serialize message field [phase]
    bufferOffset = _arraySerializer.float64(obj.phase, buffer, bufferOffset, 33);
    // Check that the constant length array field [phase_std] has the right length
    if (obj.phase_std.length !== 33) {
      throw new Error('Unable to serialize array field phase_std - length must be 33')
    }
    // Serialize message field [phase_std]
    bufferOffset = _arraySerializer.float32(obj.phase_std, buffer, bufferOffset, 33);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Carrier
    let len;
    let data = new Carrier(null);
    // Deserialize message field [doppler]
    data.doppler = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [noise]
    data.noise = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [phase]
    data.phase = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [phase_std]
    data.phase_std = _arrayDeserializer.float32(buffer, bufferOffset, 33)
    return data;
  }

  static getMessageSize(object) {
    return 924;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/Carrier';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eb5fb9988376e04bce4e625a341bd27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Useful comments go here
    
    float64[33] doppler
    
    ## signal to noise ratio ,Cn0
    float64[33] noise
    
    ## equivalent to the negative of the accumulated doppler
    float64[33] phase
    float32[33] phase_std
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Carrier(null);
    if (msg.doppler !== undefined) {
      resolved.doppler = msg.doppler;
    }
    else {
      resolved.doppler = new Array(33).fill(0)
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = new Array(33).fill(0)
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = new Array(33).fill(0)
    }

    if (msg.phase_std !== undefined) {
      resolved.phase_std = msg.phase_std;
    }
    else {
      resolved.phase_std = new Array(33).fill(0)
    }

    return resolved;
    }
};

module.exports = Carrier;
