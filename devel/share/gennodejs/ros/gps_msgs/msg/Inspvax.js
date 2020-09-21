// Auto-generated. Do not edit!

// (in-package gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Inspvax {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latitude = null;
      this.longitude = null;
      this.height = null;
      this.undulation = null;
      this.north_velocity = null;
      this.east_velocity = null;
      this.up_velocity = null;
      this.roll = null;
      this.pitch = null;
      this.azimuth = null;
      this.latitude_standard_deviation = null;
      this.longitude_standard_deviation = null;
      this.height_standard_deviation = null;
      this.northing_standard_deviation = null;
      this.easting_standard_deviation = null;
      this.uping_standard_deviation = null;
      this.roll_standard_deviation = null;
      this.pitch_standard_deviation = null;
      this.azimuth_standard_deviation = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('north_velocity')) {
        this.north_velocity = initObj.north_velocity
      }
      else {
        this.north_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('east_velocity')) {
        this.east_velocity = initObj.east_velocity
      }
      else {
        this.east_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('up_velocity')) {
        this.up_velocity = initObj.up_velocity
      }
      else {
        this.up_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('latitude_standard_deviation')) {
        this.latitude_standard_deviation = initObj.latitude_standard_deviation
      }
      else {
        this.latitude_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_standard_deviation')) {
        this.longitude_standard_deviation = initObj.longitude_standard_deviation
      }
      else {
        this.longitude_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('height_standard_deviation')) {
        this.height_standard_deviation = initObj.height_standard_deviation
      }
      else {
        this.height_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('northing_standard_deviation')) {
        this.northing_standard_deviation = initObj.northing_standard_deviation
      }
      else {
        this.northing_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('easting_standard_deviation')) {
        this.easting_standard_deviation = initObj.easting_standard_deviation
      }
      else {
        this.easting_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('uping_standard_deviation')) {
        this.uping_standard_deviation = initObj.uping_standard_deviation
      }
      else {
        this.uping_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('roll_standard_deviation')) {
        this.roll_standard_deviation = initObj.roll_standard_deviation
      }
      else {
        this.roll_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_standard_deviation')) {
        this.pitch_standard_deviation = initObj.pitch_standard_deviation
      }
      else {
        this.pitch_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth_standard_deviation')) {
        this.azimuth_standard_deviation = initObj.azimuth_standard_deviation
      }
      else {
        this.azimuth_standard_deviation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Inspvax
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float32(obj.undulation, buffer, bufferOffset);
    // Serialize message field [north_velocity]
    bufferOffset = _serializer.float64(obj.north_velocity, buffer, bufferOffset);
    // Serialize message field [east_velocity]
    bufferOffset = _serializer.float64(obj.east_velocity, buffer, bufferOffset);
    // Serialize message field [up_velocity]
    bufferOffset = _serializer.float64(obj.up_velocity, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float64(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [latitude_standard_deviation]
    bufferOffset = _serializer.float32(obj.latitude_standard_deviation, buffer, bufferOffset);
    // Serialize message field [longitude_standard_deviation]
    bufferOffset = _serializer.float32(obj.longitude_standard_deviation, buffer, bufferOffset);
    // Serialize message field [height_standard_deviation]
    bufferOffset = _serializer.float32(obj.height_standard_deviation, buffer, bufferOffset);
    // Serialize message field [northing_standard_deviation]
    bufferOffset = _serializer.float32(obj.northing_standard_deviation, buffer, bufferOffset);
    // Serialize message field [easting_standard_deviation]
    bufferOffset = _serializer.float32(obj.easting_standard_deviation, buffer, bufferOffset);
    // Serialize message field [uping_standard_deviation]
    bufferOffset = _serializer.float32(obj.uping_standard_deviation, buffer, bufferOffset);
    // Serialize message field [roll_standard_deviation]
    bufferOffset = _serializer.float32(obj.roll_standard_deviation, buffer, bufferOffset);
    // Serialize message field [pitch_standard_deviation]
    bufferOffset = _serializer.float32(obj.pitch_standard_deviation, buffer, bufferOffset);
    // Serialize message field [azimuth_standard_deviation]
    bufferOffset = _serializer.float32(obj.azimuth_standard_deviation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Inspvax
    let len;
    let data = new Inspvax(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [north_velocity]
    data.north_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east_velocity]
    data.east_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_velocity]
    data.up_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_standard_deviation]
    data.latitude_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_standard_deviation]
    data.longitude_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height_standard_deviation]
    data.height_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [northing_standard_deviation]
    data.northing_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [easting_standard_deviation]
    data.easting_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [uping_standard_deviation]
    data.uping_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_standard_deviation]
    data.roll_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_standard_deviation]
    data.pitch_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth_standard_deviation]
    data.azimuth_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/Inspvax';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '442bc1ce33238294992441ea03898496';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Inspvax(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.north_velocity !== undefined) {
      resolved.north_velocity = msg.north_velocity;
    }
    else {
      resolved.north_velocity = 0.0
    }

    if (msg.east_velocity !== undefined) {
      resolved.east_velocity = msg.east_velocity;
    }
    else {
      resolved.east_velocity = 0.0
    }

    if (msg.up_velocity !== undefined) {
      resolved.up_velocity = msg.up_velocity;
    }
    else {
      resolved.up_velocity = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.latitude_standard_deviation !== undefined) {
      resolved.latitude_standard_deviation = msg.latitude_standard_deviation;
    }
    else {
      resolved.latitude_standard_deviation = 0.0
    }

    if (msg.longitude_standard_deviation !== undefined) {
      resolved.longitude_standard_deviation = msg.longitude_standard_deviation;
    }
    else {
      resolved.longitude_standard_deviation = 0.0
    }

    if (msg.height_standard_deviation !== undefined) {
      resolved.height_standard_deviation = msg.height_standard_deviation;
    }
    else {
      resolved.height_standard_deviation = 0.0
    }

    if (msg.northing_standard_deviation !== undefined) {
      resolved.northing_standard_deviation = msg.northing_standard_deviation;
    }
    else {
      resolved.northing_standard_deviation = 0.0
    }

    if (msg.easting_standard_deviation !== undefined) {
      resolved.easting_standard_deviation = msg.easting_standard_deviation;
    }
    else {
      resolved.easting_standard_deviation = 0.0
    }

    if (msg.uping_standard_deviation !== undefined) {
      resolved.uping_standard_deviation = msg.uping_standard_deviation;
    }
    else {
      resolved.uping_standard_deviation = 0.0
    }

    if (msg.roll_standard_deviation !== undefined) {
      resolved.roll_standard_deviation = msg.roll_standard_deviation;
    }
    else {
      resolved.roll_standard_deviation = 0.0
    }

    if (msg.pitch_standard_deviation !== undefined) {
      resolved.pitch_standard_deviation = msg.pitch_standard_deviation;
    }
    else {
      resolved.pitch_standard_deviation = 0.0
    }

    if (msg.azimuth_standard_deviation !== undefined) {
      resolved.azimuth_standard_deviation = msg.azimuth_standard_deviation;
    }
    else {
      resolved.azimuth_standard_deviation = 0.0
    }

    return resolved;
    }
};

module.exports = Inspvax;
