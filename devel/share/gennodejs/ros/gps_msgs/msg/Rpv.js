// Auto-generated. Do not edit!

// (in-package gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RpvData = require('./RpvData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Rpv {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.gps_id_from = null;
      this.gps_id_to = null;
      this.gps_time = null;
      this.status = null;
      this.ratio = null;
      this.input_obs = null;
      this.non_fault_obs = null;
      this.amb_obs = null;
      this.sp = null;
      this.lp = null;
      this.hp = null;
      this.base_prn_float = null;
      this.base_prn_fixed = null;
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
      if (initObj.hasOwnProperty('gps_id_from')) {
        this.gps_id_from = initObj.gps_id_from
      }
      else {
        this.gps_id_from = '';
      }
      if (initObj.hasOwnProperty('gps_id_to')) {
        this.gps_id_to = initObj.gps_id_to
      }
      else {
        this.gps_id_to = '';
      }
      if (initObj.hasOwnProperty('gps_time')) {
        this.gps_time = initObj.gps_time
      }
      else {
        this.gps_time = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('ratio')) {
        this.ratio = initObj.ratio
      }
      else {
        this.ratio = 0.0;
      }
      if (initObj.hasOwnProperty('input_obs')) {
        this.input_obs = initObj.input_obs
      }
      else {
        this.input_obs = 0;
      }
      if (initObj.hasOwnProperty('non_fault_obs')) {
        this.non_fault_obs = initObj.non_fault_obs
      }
      else {
        this.non_fault_obs = 0;
      }
      if (initObj.hasOwnProperty('amb_obs')) {
        this.amb_obs = initObj.amb_obs
      }
      else {
        this.amb_obs = 0;
      }
      if (initObj.hasOwnProperty('sp')) {
        this.sp = initObj.sp
      }
      else {
        this.sp = new RpvData();
      }
      if (initObj.hasOwnProperty('lp')) {
        this.lp = initObj.lp
      }
      else {
        this.lp = new RpvData();
      }
      if (initObj.hasOwnProperty('hp')) {
        this.hp = initObj.hp
      }
      else {
        this.hp = new RpvData();
      }
      if (initObj.hasOwnProperty('base_prn_float')) {
        this.base_prn_float = initObj.base_prn_float
      }
      else {
        this.base_prn_float = 0;
      }
      if (initObj.hasOwnProperty('base_prn_fixed')) {
        this.base_prn_fixed = initObj.base_prn_fixed
      }
      else {
        this.base_prn_fixed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rpv
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [gps_id_from]
    bufferOffset = _serializer.string(obj.gps_id_from, buffer, bufferOffset);
    // Serialize message field [gps_id_to]
    bufferOffset = _serializer.string(obj.gps_id_to, buffer, bufferOffset);
    // Serialize message field [gps_time]
    bufferOffset = _serializer.int64(obj.gps_time, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [ratio]
    bufferOffset = _serializer.float64(obj.ratio, buffer, bufferOffset);
    // Serialize message field [input_obs]
    bufferOffset = _serializer.int32(obj.input_obs, buffer, bufferOffset);
    // Serialize message field [non_fault_obs]
    bufferOffset = _serializer.int32(obj.non_fault_obs, buffer, bufferOffset);
    // Serialize message field [amb_obs]
    bufferOffset = _serializer.int32(obj.amb_obs, buffer, bufferOffset);
    // Serialize message field [sp]
    bufferOffset = RpvData.serialize(obj.sp, buffer, bufferOffset);
    // Serialize message field [lp]
    bufferOffset = RpvData.serialize(obj.lp, buffer, bufferOffset);
    // Serialize message field [hp]
    bufferOffset = RpvData.serialize(obj.hp, buffer, bufferOffset);
    // Serialize message field [base_prn_float]
    bufferOffset = _serializer.int32(obj.base_prn_float, buffer, bufferOffset);
    // Serialize message field [base_prn_fixed]
    bufferOffset = _serializer.int32(obj.base_prn_fixed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rpv
    let len;
    let data = new Rpv(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_id_from]
    data.gps_id_from = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_id_to]
    data.gps_id_to = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_time]
    data.gps_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ratio]
    data.ratio = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [input_obs]
    data.input_obs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [non_fault_obs]
    data.non_fault_obs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [amb_obs]
    data.amb_obs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sp]
    data.sp = RpvData.deserialize(buffer, bufferOffset);
    // Deserialize message field [lp]
    data.lp = RpvData.deserialize(buffer, bufferOffset);
    // Deserialize message field [hp]
    data.hp = RpvData.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_prn_float]
    data.base_prn_float = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [base_prn_fixed]
    data.base_prn_fixed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.frame_id.length;
    length += object.gps_id_from.length;
    length += object.gps_id_to.length;
    return length + 253;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/Rpv';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0dd395e0a43da31b99eaff5928463a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## This is the advanced output message for DRTK. It is used primarily for 
    ## debugging and contains much information that is of no use to the end user.
    Header header
        uint32 seq
        time stamp
        string frame_id
    
    # Assuming that the gps
    string gps_id_from
    string gps_id_to
    
    # GPS Time of output (ms into week)
    int64 gps_time
    
    int8 status # Output status
                #  2 : High precision solution available
                #  1 : Low precision solution only (high precision is zero)
                #  0 : Insufficient observations
                # -1 : Time stamps of input data do not match
                # -2 : Already computed solution for time stamp on input data
                # -3 : No L1 range measurements on receiver 1
                # -4 : No L2 range measurements on receiver 1
                # -5 : No L1 range measurements on receiver 2
                # -6 : No L2 range measurements on receiver 2
    
    # ratio resultant from the LAMBDA method
    float64 ratio
    
    # number of input observations common across all with no cycle slip and which 
    # are continuous between timesteps
    int32 input_obs
    
    # numb of 
    int32 non_fault_obs
    # Number of fixed ambiguiity observations
    int32 amb_obs
    
    
    # Standard Positioning 
    RpvData sp
    
    # Low Precision
    RpvData lp
    
    # High Precision
    RpvData hp
    
    ## base prn used for double differencing - floating ambiguities
    int32 base_prn_float
    
    ## base prn used for double differencing - fixed integer ambiguities
    int32 base_prn_fixed
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
    MSG: gps_msgs/RpvData
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
    const resolved = new Rpv(null);
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

    if (msg.gps_id_from !== undefined) {
      resolved.gps_id_from = msg.gps_id_from;
    }
    else {
      resolved.gps_id_from = ''
    }

    if (msg.gps_id_to !== undefined) {
      resolved.gps_id_to = msg.gps_id_to;
    }
    else {
      resolved.gps_id_to = ''
    }

    if (msg.gps_time !== undefined) {
      resolved.gps_time = msg.gps_time;
    }
    else {
      resolved.gps_time = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.ratio !== undefined) {
      resolved.ratio = msg.ratio;
    }
    else {
      resolved.ratio = 0.0
    }

    if (msg.input_obs !== undefined) {
      resolved.input_obs = msg.input_obs;
    }
    else {
      resolved.input_obs = 0
    }

    if (msg.non_fault_obs !== undefined) {
      resolved.non_fault_obs = msg.non_fault_obs;
    }
    else {
      resolved.non_fault_obs = 0
    }

    if (msg.amb_obs !== undefined) {
      resolved.amb_obs = msg.amb_obs;
    }
    else {
      resolved.amb_obs = 0
    }

    if (msg.sp !== undefined) {
      resolved.sp = RpvData.Resolve(msg.sp)
    }
    else {
      resolved.sp = new RpvData()
    }

    if (msg.lp !== undefined) {
      resolved.lp = RpvData.Resolve(msg.lp)
    }
    else {
      resolved.lp = new RpvData()
    }

    if (msg.hp !== undefined) {
      resolved.hp = RpvData.Resolve(msg.hp)
    }
    else {
      resolved.hp = new RpvData()
    }

    if (msg.base_prn_float !== undefined) {
      resolved.base_prn_float = msg.base_prn_float;
    }
    else {
      resolved.base_prn_float = 0
    }

    if (msg.base_prn_fixed !== undefined) {
      resolved.base_prn_fixed = msg.base_prn_fixed;
    }
    else {
      resolved.base_prn_fixed = 0
    }

    return resolved;
    }
};

module.exports = Rpv;
