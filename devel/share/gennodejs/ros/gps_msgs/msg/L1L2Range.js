// Auto-generated. Do not edit!

// (in-package gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GpsRange = require('./GpsRange.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class L1L2Range {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.gps_id = null;
      this.gps_time = null;
      this.num_obs = null;
      this.L1 = null;
      this.L2 = null;
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.lat_cov = null;
      this.lon_cov = null;
      this.alt_cov = null;
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
      if (initObj.hasOwnProperty('gps_time')) {
        this.gps_time = initObj.gps_time
      }
      else {
        this.gps_time = 0;
      }
      if (initObj.hasOwnProperty('num_obs')) {
        this.num_obs = initObj.num_obs
      }
      else {
        this.num_obs = 0;
      }
      if (initObj.hasOwnProperty('L1')) {
        this.L1 = initObj.L1
      }
      else {
        this.L1 = new GpsRange();
      }
      if (initObj.hasOwnProperty('L2')) {
        this.L2 = initObj.L2
      }
      else {
        this.L2 = new GpsRange();
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('lat_cov')) {
        this.lat_cov = initObj.lat_cov
      }
      else {
        this.lat_cov = 0.0;
      }
      if (initObj.hasOwnProperty('lon_cov')) {
        this.lon_cov = initObj.lon_cov
      }
      else {
        this.lon_cov = 0.0;
      }
      if (initObj.hasOwnProperty('alt_cov')) {
        this.alt_cov = initObj.alt_cov
      }
      else {
        this.alt_cov = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type L1L2Range
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
    // Serialize message field [gps_time]
    bufferOffset = _serializer.int64(obj.gps_time, buffer, bufferOffset);
    // Serialize message field [num_obs]
    bufferOffset = _serializer.int32(obj.num_obs, buffer, bufferOffset);
    // Serialize message field [L1]
    bufferOffset = GpsRange.serialize(obj.L1, buffer, bufferOffset);
    // Serialize message field [L2]
    bufferOffset = GpsRange.serialize(obj.L2, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [lat_cov]
    bufferOffset = _serializer.float64(obj.lat_cov, buffer, bufferOffset);
    // Serialize message field [lon_cov]
    bufferOffset = _serializer.float64(obj.lon_cov, buffer, bufferOffset);
    // Serialize message field [alt_cov]
    bufferOffset = _serializer.float64(obj.alt_cov, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type L1L2Range
    let len;
    let data = new L1L2Range(null);
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
    // Deserialize message field [gps_time]
    data.gps_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [num_obs]
    data.num_obs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [L1]
    data.L1 = GpsRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [L2]
    data.L2 = GpsRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_cov]
    data.lat_cov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_cov]
    data.lon_cov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt_cov]
    data.alt_cov = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.frame_id.length;
    length += object.gps_id.length;
    return length + 2788;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/L1L2Range';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9416a850ba54fa4c735dfb3813edd361';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## This msg created 5/30/2013
    ## originally intended for sending to DRTK or TDCP
    
    Header header
        uint32 seq
        time stamp
        string frame_id
    
    string gps_id
    int64 gps_time
    
    # number of observations to follow ( for debugging )
    int32 num_obs
    
    GpsRange L1
    GpsRange L2
    
    float64 lat
    float64 lon
    float64 alt
    float64 lat_cov
    float64 lon_cov
    float64 alt_cov
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
    MSG: gps_msgs/GpsRange
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
    const resolved = new L1L2Range(null);
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

    if (msg.gps_time !== undefined) {
      resolved.gps_time = msg.gps_time;
    }
    else {
      resolved.gps_time = 0
    }

    if (msg.num_obs !== undefined) {
      resolved.num_obs = msg.num_obs;
    }
    else {
      resolved.num_obs = 0
    }

    if (msg.L1 !== undefined) {
      resolved.L1 = GpsRange.Resolve(msg.L1)
    }
    else {
      resolved.L1 = new GpsRange()
    }

    if (msg.L2 !== undefined) {
      resolved.L2 = GpsRange.Resolve(msg.L2)
    }
    else {
      resolved.L2 = new GpsRange()
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.lat_cov !== undefined) {
      resolved.lat_cov = msg.lat_cov;
    }
    else {
      resolved.lat_cov = 0.0
    }

    if (msg.lon_cov !== undefined) {
      resolved.lon_cov = msg.lon_cov;
    }
    else {
      resolved.lon_cov = 0.0
    }

    if (msg.alt_cov !== undefined) {
      resolved.alt_cov = msg.alt_cov;
    }
    else {
      resolved.alt_cov = 0.0
    }

    return resolved;
    }
};

module.exports = L1L2Range;
