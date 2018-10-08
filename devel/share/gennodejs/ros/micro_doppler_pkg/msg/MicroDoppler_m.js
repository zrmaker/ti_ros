// Auto-generated. Do not edit!

// (in-package micro_doppler_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MicroDoppler_m {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_domain_bins = null;
      this.num_chirps = null;
      this.target_idx = null;
      this.micro_doppler_array = null;
      this.posX = null;
      this.posY = null;
      this.velX = null;
      this.velY = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_domain_bins')) {
        this.time_domain_bins = initObj.time_domain_bins
      }
      else {
        this.time_domain_bins = 0;
      }
      if (initObj.hasOwnProperty('num_chirps')) {
        this.num_chirps = initObj.num_chirps
      }
      else {
        this.num_chirps = 0;
      }
      if (initObj.hasOwnProperty('target_idx')) {
        this.target_idx = initObj.target_idx
      }
      else {
        this.target_idx = 0;
      }
      if (initObj.hasOwnProperty('micro_doppler_array')) {
        this.micro_doppler_array = initObj.micro_doppler_array
      }
      else {
        this.micro_doppler_array = [];
      }
      if (initObj.hasOwnProperty('posX')) {
        this.posX = initObj.posX
      }
      else {
        this.posX = 0.0;
      }
      if (initObj.hasOwnProperty('posY')) {
        this.posY = initObj.posY
      }
      else {
        this.posY = 0.0;
      }
      if (initObj.hasOwnProperty('velX')) {
        this.velX = initObj.velX
      }
      else {
        this.velX = 0.0;
      }
      if (initObj.hasOwnProperty('velY')) {
        this.velY = initObj.velY
      }
      else {
        this.velY = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MicroDoppler_m
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_domain_bins]
    bufferOffset = _serializer.uint16(obj.time_domain_bins, buffer, bufferOffset);
    // Serialize message field [num_chirps]
    bufferOffset = _serializer.uint16(obj.num_chirps, buffer, bufferOffset);
    // Serialize message field [target_idx]
    bufferOffset = _serializer.uint8(obj.target_idx, buffer, bufferOffset);
    // Serialize message field [micro_doppler_array]
    bufferOffset = _arraySerializer.float32(obj.micro_doppler_array, buffer, bufferOffset, null);
    // Serialize message field [posX]
    bufferOffset = _serializer.float32(obj.posX, buffer, bufferOffset);
    // Serialize message field [posY]
    bufferOffset = _serializer.float32(obj.posY, buffer, bufferOffset);
    // Serialize message field [velX]
    bufferOffset = _serializer.float32(obj.velX, buffer, bufferOffset);
    // Serialize message field [velY]
    bufferOffset = _serializer.float32(obj.velY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MicroDoppler_m
    let len;
    let data = new MicroDoppler_m(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_domain_bins]
    data.time_domain_bins = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [num_chirps]
    data.num_chirps = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_idx]
    data.target_idx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [micro_doppler_array]
    data.micro_doppler_array = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [posX]
    data.posX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posY]
    data.posY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velX]
    data.velX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velY]
    data.velY = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.micro_doppler_array.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'micro_doppler_pkg/MicroDoppler_m';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f18c4823afa7776d20d07fa149c4e3d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint16 time_domain_bins
    uint16 num_chirps
    uint8 target_idx
    float32[] micro_doppler_array
    float32 posX
    float32 posY
    float32 velX
    float32 velY
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
    const resolved = new MicroDoppler_m(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_domain_bins !== undefined) {
      resolved.time_domain_bins = msg.time_domain_bins;
    }
    else {
      resolved.time_domain_bins = 0
    }

    if (msg.num_chirps !== undefined) {
      resolved.num_chirps = msg.num_chirps;
    }
    else {
      resolved.num_chirps = 0
    }

    if (msg.target_idx !== undefined) {
      resolved.target_idx = msg.target_idx;
    }
    else {
      resolved.target_idx = 0
    }

    if (msg.micro_doppler_array !== undefined) {
      resolved.micro_doppler_array = msg.micro_doppler_array;
    }
    else {
      resolved.micro_doppler_array = []
    }

    if (msg.posX !== undefined) {
      resolved.posX = msg.posX;
    }
    else {
      resolved.posX = 0.0
    }

    if (msg.posY !== undefined) {
      resolved.posY = msg.posY;
    }
    else {
      resolved.posY = 0.0
    }

    if (msg.velX !== undefined) {
      resolved.velX = msg.velX;
    }
    else {
      resolved.velX = 0.0
    }

    if (msg.velY !== undefined) {
      resolved.velY = msg.velY;
    }
    else {
      resolved.velY = 0.0
    }

    return resolved;
    }
};

module.exports = MicroDoppler_m;
