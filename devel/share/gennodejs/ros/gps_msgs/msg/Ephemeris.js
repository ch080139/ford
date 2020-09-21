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

class Ephemeris {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.gps_id = null;
      this.gps_time = null;
      this.obs = null;
      this.prn = null;
      this.health = null;
      this.semimajor_axis = null;
      this.mean_anomaly = null;
      this.eccentricity = null;
      this.perigee_arg = null;
      this.cos_latitude = null;
      this.sin_latitude = null;
      this.cos_orbit_radius = null;
      this.sin_orbit_radius = null;
      this.cos_inclination = null;
      this.sin_inclination = null;
      this.inclination_angle = null;
      this.right_ascension = null;
      this.mean_motion_diff = null;
      this.inclination_rate = null;
      this.ascension_rate = null;
      this.time_of_week = null;
      this.reference_time = null;
      this.clock_correction = null;
      this.group_delay = null;
      this.clock_aging_1 = null;
      this.clock_aging_2 = null;
      this.clock_aging_3 = null;
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
        this.gps_time = 0.0;
      }
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
      if (initObj.hasOwnProperty('health')) {
        this.health = initObj.health
      }
      else {
        this.health = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('semimajor_axis')) {
        this.semimajor_axis = initObj.semimajor_axis
      }
      else {
        this.semimajor_axis = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('mean_anomaly')) {
        this.mean_anomaly = initObj.mean_anomaly
      }
      else {
        this.mean_anomaly = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('eccentricity')) {
        this.eccentricity = initObj.eccentricity
      }
      else {
        this.eccentricity = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('perigee_arg')) {
        this.perigee_arg = initObj.perigee_arg
      }
      else {
        this.perigee_arg = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('cos_latitude')) {
        this.cos_latitude = initObj.cos_latitude
      }
      else {
        this.cos_latitude = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('sin_latitude')) {
        this.sin_latitude = initObj.sin_latitude
      }
      else {
        this.sin_latitude = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('cos_orbit_radius')) {
        this.cos_orbit_radius = initObj.cos_orbit_radius
      }
      else {
        this.cos_orbit_radius = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('sin_orbit_radius')) {
        this.sin_orbit_radius = initObj.sin_orbit_radius
      }
      else {
        this.sin_orbit_radius = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('cos_inclination')) {
        this.cos_inclination = initObj.cos_inclination
      }
      else {
        this.cos_inclination = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('sin_inclination')) {
        this.sin_inclination = initObj.sin_inclination
      }
      else {
        this.sin_inclination = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('inclination_angle')) {
        this.inclination_angle = initObj.inclination_angle
      }
      else {
        this.inclination_angle = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('right_ascension')) {
        this.right_ascension = initObj.right_ascension
      }
      else {
        this.right_ascension = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('mean_motion_diff')) {
        this.mean_motion_diff = initObj.mean_motion_diff
      }
      else {
        this.mean_motion_diff = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('inclination_rate')) {
        this.inclination_rate = initObj.inclination_rate
      }
      else {
        this.inclination_rate = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('ascension_rate')) {
        this.ascension_rate = initObj.ascension_rate
      }
      else {
        this.ascension_rate = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('time_of_week')) {
        this.time_of_week = initObj.time_of_week
      }
      else {
        this.time_of_week = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('reference_time')) {
        this.reference_time = initObj.reference_time
      }
      else {
        this.reference_time = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('clock_correction')) {
        this.clock_correction = initObj.clock_correction
      }
      else {
        this.clock_correction = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('group_delay')) {
        this.group_delay = initObj.group_delay
      }
      else {
        this.group_delay = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('clock_aging_1')) {
        this.clock_aging_1 = initObj.clock_aging_1
      }
      else {
        this.clock_aging_1 = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('clock_aging_2')) {
        this.clock_aging_2 = initObj.clock_aging_2
      }
      else {
        this.clock_aging_2 = new Array(33).fill(0);
      }
      if (initObj.hasOwnProperty('clock_aging_3')) {
        this.clock_aging_3 = initObj.clock_aging_3
      }
      else {
        this.clock_aging_3 = new Array(33).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ephemeris
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
    bufferOffset = _serializer.float64(obj.gps_time, buffer, bufferOffset);
    // Serialize message field [obs]
    bufferOffset = _serializer.int8(obj.obs, buffer, bufferOffset);
    // Check that the constant length array field [prn] has the right length
    if (obj.prn.length !== 33) {
      throw new Error('Unable to serialize array field prn - length must be 33')
    }
    // Serialize message field [prn]
    bufferOffset = _arraySerializer.int8(obj.prn, buffer, bufferOffset, 33);
    // Check that the constant length array field [health] has the right length
    if (obj.health.length !== 33) {
      throw new Error('Unable to serialize array field health - length must be 33')
    }
    // Serialize message field [health]
    bufferOffset = _arraySerializer.int8(obj.health, buffer, bufferOffset, 33);
    // Check that the constant length array field [semimajor_axis] has the right length
    if (obj.semimajor_axis.length !== 33) {
      throw new Error('Unable to serialize array field semimajor_axis - length must be 33')
    }
    // Serialize message field [semimajor_axis]
    bufferOffset = _arraySerializer.float64(obj.semimajor_axis, buffer, bufferOffset, 33);
    // Check that the constant length array field [mean_anomaly] has the right length
    if (obj.mean_anomaly.length !== 33) {
      throw new Error('Unable to serialize array field mean_anomaly - length must be 33')
    }
    // Serialize message field [mean_anomaly]
    bufferOffset = _arraySerializer.float64(obj.mean_anomaly, buffer, bufferOffset, 33);
    // Check that the constant length array field [eccentricity] has the right length
    if (obj.eccentricity.length !== 33) {
      throw new Error('Unable to serialize array field eccentricity - length must be 33')
    }
    // Serialize message field [eccentricity]
    bufferOffset = _arraySerializer.float64(obj.eccentricity, buffer, bufferOffset, 33);
    // Check that the constant length array field [perigee_arg] has the right length
    if (obj.perigee_arg.length !== 33) {
      throw new Error('Unable to serialize array field perigee_arg - length must be 33')
    }
    // Serialize message field [perigee_arg]
    bufferOffset = _arraySerializer.float64(obj.perigee_arg, buffer, bufferOffset, 33);
    // Check that the constant length array field [cos_latitude] has the right length
    if (obj.cos_latitude.length !== 33) {
      throw new Error('Unable to serialize array field cos_latitude - length must be 33')
    }
    // Serialize message field [cos_latitude]
    bufferOffset = _arraySerializer.float64(obj.cos_latitude, buffer, bufferOffset, 33);
    // Check that the constant length array field [sin_latitude] has the right length
    if (obj.sin_latitude.length !== 33) {
      throw new Error('Unable to serialize array field sin_latitude - length must be 33')
    }
    // Serialize message field [sin_latitude]
    bufferOffset = _arraySerializer.float64(obj.sin_latitude, buffer, bufferOffset, 33);
    // Check that the constant length array field [cos_orbit_radius] has the right length
    if (obj.cos_orbit_radius.length !== 33) {
      throw new Error('Unable to serialize array field cos_orbit_radius - length must be 33')
    }
    // Serialize message field [cos_orbit_radius]
    bufferOffset = _arraySerializer.float64(obj.cos_orbit_radius, buffer, bufferOffset, 33);
    // Check that the constant length array field [sin_orbit_radius] has the right length
    if (obj.sin_orbit_radius.length !== 33) {
      throw new Error('Unable to serialize array field sin_orbit_radius - length must be 33')
    }
    // Serialize message field [sin_orbit_radius]
    bufferOffset = _arraySerializer.float64(obj.sin_orbit_radius, buffer, bufferOffset, 33);
    // Check that the constant length array field [cos_inclination] has the right length
    if (obj.cos_inclination.length !== 33) {
      throw new Error('Unable to serialize array field cos_inclination - length must be 33')
    }
    // Serialize message field [cos_inclination]
    bufferOffset = _arraySerializer.float64(obj.cos_inclination, buffer, bufferOffset, 33);
    // Check that the constant length array field [sin_inclination] has the right length
    if (obj.sin_inclination.length !== 33) {
      throw new Error('Unable to serialize array field sin_inclination - length must be 33')
    }
    // Serialize message field [sin_inclination]
    bufferOffset = _arraySerializer.float64(obj.sin_inclination, buffer, bufferOffset, 33);
    // Check that the constant length array field [inclination_angle] has the right length
    if (obj.inclination_angle.length !== 33) {
      throw new Error('Unable to serialize array field inclination_angle - length must be 33')
    }
    // Serialize message field [inclination_angle]
    bufferOffset = _arraySerializer.float64(obj.inclination_angle, buffer, bufferOffset, 33);
    // Check that the constant length array field [right_ascension] has the right length
    if (obj.right_ascension.length !== 33) {
      throw new Error('Unable to serialize array field right_ascension - length must be 33')
    }
    // Serialize message field [right_ascension]
    bufferOffset = _arraySerializer.float64(obj.right_ascension, buffer, bufferOffset, 33);
    // Check that the constant length array field [mean_motion_diff] has the right length
    if (obj.mean_motion_diff.length !== 33) {
      throw new Error('Unable to serialize array field mean_motion_diff - length must be 33')
    }
    // Serialize message field [mean_motion_diff]
    bufferOffset = _arraySerializer.float64(obj.mean_motion_diff, buffer, bufferOffset, 33);
    // Check that the constant length array field [inclination_rate] has the right length
    if (obj.inclination_rate.length !== 33) {
      throw new Error('Unable to serialize array field inclination_rate - length must be 33')
    }
    // Serialize message field [inclination_rate]
    bufferOffset = _arraySerializer.float64(obj.inclination_rate, buffer, bufferOffset, 33);
    // Check that the constant length array field [ascension_rate] has the right length
    if (obj.ascension_rate.length !== 33) {
      throw new Error('Unable to serialize array field ascension_rate - length must be 33')
    }
    // Serialize message field [ascension_rate]
    bufferOffset = _arraySerializer.float64(obj.ascension_rate, buffer, bufferOffset, 33);
    // Check that the constant length array field [time_of_week] has the right length
    if (obj.time_of_week.length !== 33) {
      throw new Error('Unable to serialize array field time_of_week - length must be 33')
    }
    // Serialize message field [time_of_week]
    bufferOffset = _arraySerializer.float64(obj.time_of_week, buffer, bufferOffset, 33);
    // Check that the constant length array field [reference_time] has the right length
    if (obj.reference_time.length !== 33) {
      throw new Error('Unable to serialize array field reference_time - length must be 33')
    }
    // Serialize message field [reference_time]
    bufferOffset = _arraySerializer.float64(obj.reference_time, buffer, bufferOffset, 33);
    // Check that the constant length array field [clock_correction] has the right length
    if (obj.clock_correction.length !== 33) {
      throw new Error('Unable to serialize array field clock_correction - length must be 33')
    }
    // Serialize message field [clock_correction]
    bufferOffset = _arraySerializer.float64(obj.clock_correction, buffer, bufferOffset, 33);
    // Check that the constant length array field [group_delay] has the right length
    if (obj.group_delay.length !== 33) {
      throw new Error('Unable to serialize array field group_delay - length must be 33')
    }
    // Serialize message field [group_delay]
    bufferOffset = _arraySerializer.float64(obj.group_delay, buffer, bufferOffset, 33);
    // Check that the constant length array field [clock_aging_1] has the right length
    if (obj.clock_aging_1.length !== 33) {
      throw new Error('Unable to serialize array field clock_aging_1 - length must be 33')
    }
    // Serialize message field [clock_aging_1]
    bufferOffset = _arraySerializer.float64(obj.clock_aging_1, buffer, bufferOffset, 33);
    // Check that the constant length array field [clock_aging_2] has the right length
    if (obj.clock_aging_2.length !== 33) {
      throw new Error('Unable to serialize array field clock_aging_2 - length must be 33')
    }
    // Serialize message field [clock_aging_2]
    bufferOffset = _arraySerializer.float64(obj.clock_aging_2, buffer, bufferOffset, 33);
    // Check that the constant length array field [clock_aging_3] has the right length
    if (obj.clock_aging_3.length !== 33) {
      throw new Error('Unable to serialize array field clock_aging_3 - length must be 33')
    }
    // Serialize message field [clock_aging_3]
    bufferOffset = _arraySerializer.float64(obj.clock_aging_3, buffer, bufferOffset, 33);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ephemeris
    let len;
    let data = new Ephemeris(null);
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
    data.gps_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [obs]
    data.obs = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [prn]
    data.prn = _arrayDeserializer.int8(buffer, bufferOffset, 33)
    // Deserialize message field [health]
    data.health = _arrayDeserializer.int8(buffer, bufferOffset, 33)
    // Deserialize message field [semimajor_axis]
    data.semimajor_axis = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [mean_anomaly]
    data.mean_anomaly = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [eccentricity]
    data.eccentricity = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [perigee_arg]
    data.perigee_arg = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [cos_latitude]
    data.cos_latitude = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [sin_latitude]
    data.sin_latitude = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [cos_orbit_radius]
    data.cos_orbit_radius = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [sin_orbit_radius]
    data.sin_orbit_radius = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [cos_inclination]
    data.cos_inclination = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [sin_inclination]
    data.sin_inclination = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [inclination_angle]
    data.inclination_angle = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [right_ascension]
    data.right_ascension = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [mean_motion_diff]
    data.mean_motion_diff = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [inclination_rate]
    data.inclination_rate = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [ascension_rate]
    data.ascension_rate = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [time_of_week]
    data.time_of_week = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [reference_time]
    data.reference_time = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [clock_correction]
    data.clock_correction = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [group_delay]
    data.group_delay = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [clock_aging_1]
    data.clock_aging_1 = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [clock_aging_2]
    data.clock_aging_2 = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    // Deserialize message field [clock_aging_3]
    data.clock_aging_3 = _arrayDeserializer.float64(buffer, bufferOffset, 33)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.frame_id.length;
    length += object.gps_id.length;
    return length + 5903;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msgs/Ephemeris';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e93179ee4a59fd3267f8021405bbe35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Ephemeris Data for each satellite
    
    ## There are 33 ephemeris channels so that the element number will correspond to
    ##  the PRN number
    
    Header header
        uint32 seq
        time stamp
        string frame_id
    
    string  gps_id
    float64 gps_time
    
    # how far to iterate in.
    int8 obs
    int8[33] prn
    
    int8[33]    health
    
    # Positioning
    float64[33] semimajor_axis    # sqrt(A), SQUARE ROOT of semi major axis (meters)
    float64[33] mean_anomaly      # M0, Mean anomoly of reference time (rad)
    float64[33] eccentricity      # ecc, 
    float64[33] perigee_arg       # omega, Arguement of perigee (rad)
    float64[33] cos_latitude      # cuc, Arguement of latitude, amplitude of cosine (rad)
    float64[33] sin_latitude      # cus, Arguement of latitude, amplitude of sine (rad)
    float64[33] cos_orbit_radius  # crc, Orbit radius, amplitude of cosine (rad)
    float64[33] sin_orbit_radius  # crs, Orbit radius, amplitude of sine (rad)
    float64[33] cos_inclination   # cic, Inclination, amplitude of cosine (rad)
    float64[33] sin_inclination   # cis, Inclination, amplitude of sine (rad)
    float64[33] inclination_angle # I0, Inclination angle at reference time (rad)
    float64[33] right_ascension   # omega0,  Right ascension (rad)
    
    # Movement
    float64[33] mean_motion_diff  # Delta N, Mean motion difference (rad/s)
    float64[33] inclination_rate  # I dot, Rate of inclination angle (rad/s)
    float64[33] ascension_rate    # omega0 dot, Rate of right ascension (rad/s)
    
    # Timing
    float64[33] time_of_week      # tow, Time stamp of subframe 0 (seconds)
    float64[33] reference_time    # toe, Reference time for ephemeris (seconds)
    float64[33] clock_correction  # toc, SV clock correction term (seconds)
    float64[33] group_delay       # tgd, Estimated group delay difference (seconds)
    float64[33] clock_aging_1     # af0, Clock aging parameter (seconds)
    float64[33] clock_aging_2     # af1, Clock aging parameter (seconds/seconds)
    float64[33] clock_aging_3     # af2, Clock aging parameter (seconds/seconds/seconds)
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
    const resolved = new Ephemeris(null);
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
      resolved.gps_time = 0.0
    }

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

    if (msg.health !== undefined) {
      resolved.health = msg.health;
    }
    else {
      resolved.health = new Array(33).fill(0)
    }

    if (msg.semimajor_axis !== undefined) {
      resolved.semimajor_axis = msg.semimajor_axis;
    }
    else {
      resolved.semimajor_axis = new Array(33).fill(0)
    }

    if (msg.mean_anomaly !== undefined) {
      resolved.mean_anomaly = msg.mean_anomaly;
    }
    else {
      resolved.mean_anomaly = new Array(33).fill(0)
    }

    if (msg.eccentricity !== undefined) {
      resolved.eccentricity = msg.eccentricity;
    }
    else {
      resolved.eccentricity = new Array(33).fill(0)
    }

    if (msg.perigee_arg !== undefined) {
      resolved.perigee_arg = msg.perigee_arg;
    }
    else {
      resolved.perigee_arg = new Array(33).fill(0)
    }

    if (msg.cos_latitude !== undefined) {
      resolved.cos_latitude = msg.cos_latitude;
    }
    else {
      resolved.cos_latitude = new Array(33).fill(0)
    }

    if (msg.sin_latitude !== undefined) {
      resolved.sin_latitude = msg.sin_latitude;
    }
    else {
      resolved.sin_latitude = new Array(33).fill(0)
    }

    if (msg.cos_orbit_radius !== undefined) {
      resolved.cos_orbit_radius = msg.cos_orbit_radius;
    }
    else {
      resolved.cos_orbit_radius = new Array(33).fill(0)
    }

    if (msg.sin_orbit_radius !== undefined) {
      resolved.sin_orbit_radius = msg.sin_orbit_radius;
    }
    else {
      resolved.sin_orbit_radius = new Array(33).fill(0)
    }

    if (msg.cos_inclination !== undefined) {
      resolved.cos_inclination = msg.cos_inclination;
    }
    else {
      resolved.cos_inclination = new Array(33).fill(0)
    }

    if (msg.sin_inclination !== undefined) {
      resolved.sin_inclination = msg.sin_inclination;
    }
    else {
      resolved.sin_inclination = new Array(33).fill(0)
    }

    if (msg.inclination_angle !== undefined) {
      resolved.inclination_angle = msg.inclination_angle;
    }
    else {
      resolved.inclination_angle = new Array(33).fill(0)
    }

    if (msg.right_ascension !== undefined) {
      resolved.right_ascension = msg.right_ascension;
    }
    else {
      resolved.right_ascension = new Array(33).fill(0)
    }

    if (msg.mean_motion_diff !== undefined) {
      resolved.mean_motion_diff = msg.mean_motion_diff;
    }
    else {
      resolved.mean_motion_diff = new Array(33).fill(0)
    }

    if (msg.inclination_rate !== undefined) {
      resolved.inclination_rate = msg.inclination_rate;
    }
    else {
      resolved.inclination_rate = new Array(33).fill(0)
    }

    if (msg.ascension_rate !== undefined) {
      resolved.ascension_rate = msg.ascension_rate;
    }
    else {
      resolved.ascension_rate = new Array(33).fill(0)
    }

    if (msg.time_of_week !== undefined) {
      resolved.time_of_week = msg.time_of_week;
    }
    else {
      resolved.time_of_week = new Array(33).fill(0)
    }

    if (msg.reference_time !== undefined) {
      resolved.reference_time = msg.reference_time;
    }
    else {
      resolved.reference_time = new Array(33).fill(0)
    }

    if (msg.clock_correction !== undefined) {
      resolved.clock_correction = msg.clock_correction;
    }
    else {
      resolved.clock_correction = new Array(33).fill(0)
    }

    if (msg.group_delay !== undefined) {
      resolved.group_delay = msg.group_delay;
    }
    else {
      resolved.group_delay = new Array(33).fill(0)
    }

    if (msg.clock_aging_1 !== undefined) {
      resolved.clock_aging_1 = msg.clock_aging_1;
    }
    else {
      resolved.clock_aging_1 = new Array(33).fill(0)
    }

    if (msg.clock_aging_2 !== undefined) {
      resolved.clock_aging_2 = msg.clock_aging_2;
    }
    else {
      resolved.clock_aging_2 = new Array(33).fill(0)
    }

    if (msg.clock_aging_3 !== undefined) {
      resolved.clock_aging_3 = msg.clock_aging_3;
    }
    else {
      resolved.clock_aging_3 = new Array(33).fill(0)
    }

    return resolved;
    }
};

module.exports = Ephemeris;
