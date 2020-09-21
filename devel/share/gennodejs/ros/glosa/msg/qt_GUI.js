// Auto-generated. Do not edit!

// (in-package glosa.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class qt_GUI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.EgoSpeed = null;
      this.PreSpeed = null;
      this.LimitSpeed = null;
      this.Dis2Stopline = null;
      this.intersectionID = null;
      this.Latitude = null;
      this.Longitude = null;
      this.Height = null;
      this.upperSpeed = null;
      this.bottomSpeed = null;
      this.keepCurSpeed = null;
      this.Str_is_val = null;
      this.StrColor = null;
      this.StrlikelyEndTime = null;
      this.Left_is_val = null;
      this.LeftColor = null;
      this.LeftlikelyEndTime = null;
      this.Right_is_val = null;
      this.RightColor = null;
      this.RightlikelyEndTime = null;
    }
    else {
      if (initObj.hasOwnProperty('EgoSpeed')) {
        this.EgoSpeed = initObj.EgoSpeed
      }
      else {
        this.EgoSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('PreSpeed')) {
        this.PreSpeed = initObj.PreSpeed
      }
      else {
        this.PreSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('LimitSpeed')) {
        this.LimitSpeed = initObj.LimitSpeed
      }
      else {
        this.LimitSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('Dis2Stopline')) {
        this.Dis2Stopline = initObj.Dis2Stopline
      }
      else {
        this.Dis2Stopline = 0.0;
      }
      if (initObj.hasOwnProperty('intersectionID')) {
        this.intersectionID = initObj.intersectionID
      }
      else {
        this.intersectionID = 0;
      }
      if (initObj.hasOwnProperty('Latitude')) {
        this.Latitude = initObj.Latitude
      }
      else {
        this.Latitude = 0.0;
      }
      if (initObj.hasOwnProperty('Longitude')) {
        this.Longitude = initObj.Longitude
      }
      else {
        this.Longitude = 0.0;
      }
      if (initObj.hasOwnProperty('Height')) {
        this.Height = initObj.Height
      }
      else {
        this.Height = 0.0;
      }
      if (initObj.hasOwnProperty('upperSpeed')) {
        this.upperSpeed = initObj.upperSpeed
      }
      else {
        this.upperSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('bottomSpeed')) {
        this.bottomSpeed = initObj.bottomSpeed
      }
      else {
        this.bottomSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('keepCurSpeed')) {
        this.keepCurSpeed = initObj.keepCurSpeed
      }
      else {
        this.keepCurSpeed = 0;
      }
      if (initObj.hasOwnProperty('Str_is_val')) {
        this.Str_is_val = initObj.Str_is_val
      }
      else {
        this.Str_is_val = 0;
      }
      if (initObj.hasOwnProperty('StrColor')) {
        this.StrColor = initObj.StrColor
      }
      else {
        this.StrColor = 0.0;
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
      if (initObj.hasOwnProperty('LeftColor')) {
        this.LeftColor = initObj.LeftColor
      }
      else {
        this.LeftColor = 0.0;
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
      if (initObj.hasOwnProperty('RightColor')) {
        this.RightColor = initObj.RightColor
      }
      else {
        this.RightColor = 0;
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
    // Serializes a message object of type qt_GUI
    // Serialize message field [EgoSpeed]
    bufferOffset = _serializer.float64(obj.EgoSpeed, buffer, bufferOffset);
    // Serialize message field [PreSpeed]
    bufferOffset = _serializer.float64(obj.PreSpeed, buffer, bufferOffset);
    // Serialize message field [LimitSpeed]
    bufferOffset = _serializer.float64(obj.LimitSpeed, buffer, bufferOffset);
    // Serialize message field [Dis2Stopline]
    bufferOffset = _serializer.float64(obj.Dis2Stopline, buffer, bufferOffset);
    // Serialize message field [intersectionID]
    bufferOffset = _serializer.uint32(obj.intersectionID, buffer, bufferOffset);
    // Serialize message field [Latitude]
    bufferOffset = _serializer.float64(obj.Latitude, buffer, bufferOffset);
    // Serialize message field [Longitude]
    bufferOffset = _serializer.float64(obj.Longitude, buffer, bufferOffset);
    // Serialize message field [Height]
    bufferOffset = _serializer.float64(obj.Height, buffer, bufferOffset);
    // Serialize message field [upperSpeed]
    bufferOffset = _serializer.float64(obj.upperSpeed, buffer, bufferOffset);
    // Serialize message field [bottomSpeed]
    bufferOffset = _serializer.float64(obj.bottomSpeed, buffer, bufferOffset);
    // Serialize message field [keepCurSpeed]
    bufferOffset = _serializer.uint8(obj.keepCurSpeed, buffer, bufferOffset);
    // Serialize message field [Str_is_val]
    bufferOffset = _serializer.uint8(obj.Str_is_val, buffer, bufferOffset);
    // Serialize message field [StrColor]
    bufferOffset = _serializer.float64(obj.StrColor, buffer, bufferOffset);
    // Serialize message field [StrlikelyEndTime]
    bufferOffset = _serializer.float64(obj.StrlikelyEndTime, buffer, bufferOffset);
    // Serialize message field [Left_is_val]
    bufferOffset = _serializer.uint8(obj.Left_is_val, buffer, bufferOffset);
    // Serialize message field [LeftColor]
    bufferOffset = _serializer.float64(obj.LeftColor, buffer, bufferOffset);
    // Serialize message field [LeftlikelyEndTime]
    bufferOffset = _serializer.float64(obj.LeftlikelyEndTime, buffer, bufferOffset);
    // Serialize message field [Right_is_val]
    bufferOffset = _serializer.uint8(obj.Right_is_val, buffer, bufferOffset);
    // Serialize message field [RightColor]
    bufferOffset = _serializer.uint8(obj.RightColor, buffer, bufferOffset);
    // Serialize message field [RightlikelyEndTime]
    bufferOffset = _serializer.float64(obj.RightlikelyEndTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type qt_GUI
    let len;
    let data = new qt_GUI(null);
    // Deserialize message field [EgoSpeed]
    data.EgoSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [PreSpeed]
    data.PreSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LimitSpeed]
    data.LimitSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Dis2Stopline]
    data.Dis2Stopline = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intersectionID]
    data.intersectionID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Latitude]
    data.Latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Longitude]
    data.Longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Height]
    data.Height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [upperSpeed]
    data.upperSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bottomSpeed]
    data.bottomSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [keepCurSpeed]
    data.keepCurSpeed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Str_is_val]
    data.Str_is_val = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StrColor]
    data.StrColor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [StrlikelyEndTime]
    data.StrlikelyEndTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Left_is_val]
    data.Left_is_val = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LeftColor]
    data.LeftColor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LeftlikelyEndTime]
    data.LeftlikelyEndTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Right_is_val]
    data.Right_is_val = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RightColor]
    data.RightColor = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RightlikelyEndTime]
    data.RightlikelyEndTime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 121;
  }

  static datatype() {
    // Returns string type for a message object
    return 'glosa/qt_GUI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27279271049a075f93453cd8cea1d9e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 iskeepCurSpeed = 1
    uint8 notkeepCurSpeed = 0
    
    float64 EgoSpeed
    float64 PreSpeed
    float64 LimitSpeed
    float64 Dis2Stopline
    
    uint32 intersectionID
    
    float64 Latitude
    float64 Longitude
    float64 Height
    
    
    float64 upperSpeed
    float64 bottomSpeed
    uint8 keepCurSpeed
    
    uint8 Str_is_val
    float64 StrColor
    float64 StrlikelyEndTime
    
    uint8 Left_is_val
    float64 LeftColor
    float64 LeftlikelyEndTime
    
    uint8 Right_is_val
    uint8 RightColor
    float64 RightlikelyEndTime
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new qt_GUI(null);
    if (msg.EgoSpeed !== undefined) {
      resolved.EgoSpeed = msg.EgoSpeed;
    }
    else {
      resolved.EgoSpeed = 0.0
    }

    if (msg.PreSpeed !== undefined) {
      resolved.PreSpeed = msg.PreSpeed;
    }
    else {
      resolved.PreSpeed = 0.0
    }

    if (msg.LimitSpeed !== undefined) {
      resolved.LimitSpeed = msg.LimitSpeed;
    }
    else {
      resolved.LimitSpeed = 0.0
    }

    if (msg.Dis2Stopline !== undefined) {
      resolved.Dis2Stopline = msg.Dis2Stopline;
    }
    else {
      resolved.Dis2Stopline = 0.0
    }

    if (msg.intersectionID !== undefined) {
      resolved.intersectionID = msg.intersectionID;
    }
    else {
      resolved.intersectionID = 0
    }

    if (msg.Latitude !== undefined) {
      resolved.Latitude = msg.Latitude;
    }
    else {
      resolved.Latitude = 0.0
    }

    if (msg.Longitude !== undefined) {
      resolved.Longitude = msg.Longitude;
    }
    else {
      resolved.Longitude = 0.0
    }

    if (msg.Height !== undefined) {
      resolved.Height = msg.Height;
    }
    else {
      resolved.Height = 0.0
    }

    if (msg.upperSpeed !== undefined) {
      resolved.upperSpeed = msg.upperSpeed;
    }
    else {
      resolved.upperSpeed = 0.0
    }

    if (msg.bottomSpeed !== undefined) {
      resolved.bottomSpeed = msg.bottomSpeed;
    }
    else {
      resolved.bottomSpeed = 0.0
    }

    if (msg.keepCurSpeed !== undefined) {
      resolved.keepCurSpeed = msg.keepCurSpeed;
    }
    else {
      resolved.keepCurSpeed = 0
    }

    if (msg.Str_is_val !== undefined) {
      resolved.Str_is_val = msg.Str_is_val;
    }
    else {
      resolved.Str_is_val = 0
    }

    if (msg.StrColor !== undefined) {
      resolved.StrColor = msg.StrColor;
    }
    else {
      resolved.StrColor = 0.0
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

    if (msg.LeftColor !== undefined) {
      resolved.LeftColor = msg.LeftColor;
    }
    else {
      resolved.LeftColor = 0.0
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

    if (msg.RightColor !== undefined) {
      resolved.RightColor = msg.RightColor;
    }
    else {
      resolved.RightColor = 0
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

// Constants for message
qt_GUI.Constants = {
  ISKEEPCURSPEED: 1,
  NOTKEEPCURSPEED: 0,
}

module.exports = qt_GUI;
