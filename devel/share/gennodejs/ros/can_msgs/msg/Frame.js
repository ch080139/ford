// Auto-generated. Do not edit!

// (in-package can_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.is_rtr = null;
      this.is_extended = null;
      this.is_error = null;
      this.len = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('is_rtr')) {
        this.is_rtr = initObj.is_rtr
      }
      else {
        this.is_rtr = false;
      }
      if (initObj.hasOwnProperty('is_extended')) {
        this.is_extended = initObj.is_extended
      }
      else {
        this.is_extended = false;
      }
      if (initObj.hasOwnProperty('is_error')) {
        this.is_error = initObj.is_error
      }
      else {
        this.is_error = false;
      }
      if (initObj.hasOwnProperty('len')) {
        this.len = initObj.len
      }
      else {
        this.len = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frame
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [is_rtr]
    bufferOffset = _serializer.bool(obj.is_rtr, buffer, bufferOffset);
    // Serialize message field [is_extended]
    bufferOffset = _serializer.bool(obj.is_extended, buffer, bufferOffset);
    // Serialize message field [is_error]
    bufferOffset = _serializer.bool(obj.is_error, buffer, bufferOffset);
    // Serialize message field [len]
    bufferOffset = _serializer.uint8(obj.len, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 8) {
      throw new Error('Unable to serialize array field data - length must be 8')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frame
    let len;
    let data = new Frame(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [is_rtr]
    data.is_rtr = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_extended]
    data.is_extended = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_error]
    data.is_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [len]
    data.len = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_msgs/Frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cb4169590eea9366f0510af7121fabe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    bool is_rtr
    bool is_extended
    bool is_error
    uint8 len
    uint8[8] data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frame(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.is_rtr !== undefined) {
      resolved.is_rtr = msg.is_rtr;
    }
    else {
      resolved.is_rtr = false
    }

    if (msg.is_extended !== undefined) {
      resolved.is_extended = msg.is_extended;
    }
    else {
      resolved.is_extended = false
    }

    if (msg.is_error !== undefined) {
      resolved.is_error = msg.is_error;
    }
    else {
      resolved.is_error = false
    }

    if (msg.len !== undefined) {
      resolved.len = msg.len;
    }
    else {
      resolved.len = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(8).fill(0)
    }

    return resolved;
    }
};

module.exports = Frame;
