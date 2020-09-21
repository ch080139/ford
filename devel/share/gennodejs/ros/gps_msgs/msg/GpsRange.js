// Auto-generated. Do not edit!

// (in-package gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Carrier = require('./Carrier.js');

//-----------------------------------------------------------

class GpsRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obs = null;
      this.prn = null;
      this.psr = null;
      this.psr_std = null;
      this.carrier = null;
    }
    else {
      if (initObj.hasOwnProperty('obs')) {
        this.obs = initObj.obs
      }
      else {
        this.obs = 0;
      }
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('psr')) {
        this.psr = initObj.psr
      }
      else {
        this.psr = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('psr_std')) {
        this.psr_std = initObj.psr_std
      }
      else {
        this.psr_std = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('carrier')) {
        this.carrier = initObj.carrier
      }
      else {
        this.carrier = new Carrier();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsRange
    // Serialize message field [obs]
    bufferOffset = _serializer.uint8(obj.obs, buffer, bufferOffset);
    // Check that the constant length array field [prn] has the right length
    if (obj.prn.length !== 33) {
      throw new Error('Unable to serialize array field prn - length must be 33')
    }
    // Serialize message field [prn]
    bufferOffset = _arraySerializer.uint8(obj.prn, buffer, bufferOffset, 33);
    // Check that the constant length array field [psr] has the right length
    if (obj.psr.length !== 33) {
      throw new Error('Unable to serialize array field psr - length must be 33')
    }
    // Serialize message field [psr]
    bufferOffset = _arraySerializer.float64(obj.psr, buffer, bufferOffset, 33);
    // Check that the constant length array field [psr_std] has the right length
    if (obj.psr_std.length !== 33) {
      throw new Error('Unable to serialize array field psr_std - length must be 33')
    }
    // Serialize message field [psr_std]
    bufferOffset = _arraySerializer.float32(obj.psr_std, buffer, bufferOffset, 33);
    // Serialize message field [carrier]
    bufferOffset = Carrier.serialize(obj.carrier, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsRange
    let len;
    let data = new GpsRange(null);
    // Deserialize message field [obs]
    data.obs = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [prn]
    data.prn = _arrayDeserializer.uint8(buffer, bufferOffset, 33)
    // Deserialize message field [psr]
    data.psr = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [psr_std]
    data.psr_std = _arrayDeserializer.float32(buffer, bufferOffset, 33)
    // Deserialize message field [carrier]
    data.carrier = Carrier.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1354;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/GpsRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e597bac5463f4a71cf3a7e9ae61b3675';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Useful general comment goes here
    ## Each receiver will be able to track differing numbers of satellites, so the
    ## fields are each of length 32, the number of SV's in the GPS constellation
    
    # number of observations --> how far to iterate through the arrays
    uint8 obs
    
    ## sv number for each satellite
    uint8[33] prn
    
    float64[33] psr
    float32[33] psr_std
    
    Carrier carrier
    ================================================================================
    MSG: gps_msgs/Carrier
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
    const resolved = new GpsRange(null);
    if (msg.obs !== undefined) {
      resolved.obs = msg.obs;
    }
    else {
      resolved.obs = 0
    }

    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = new Array(33).fill(0)
    }

    if (msg.psr !== undefined) {
      resolved.psr = msg.psr;
    }
    else {
      resolved.psr = new Array(33).fill(0)
    }

    if (msg.psr_std !== undefined) {
      resolved.psr_std = msg.psr_std;
    }
    else {
      resolved.psr_std = new Array(33).fill(0)
    }

    if (msg.carrier !== undefined) {
      resolved.carrier = Carrier.Resolve(msg.carrier)
    }
    else {
      resolved.carrier = new Carrier()
    }

    return resolved;
    }
};

module.exports = GpsRange;
