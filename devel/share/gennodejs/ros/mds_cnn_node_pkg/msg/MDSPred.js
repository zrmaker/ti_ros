// Auto-generated. Do not edit!

// (in-package mds_cnn_node_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MDSPred {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.target_idx = null;
      this.posX = null;
      this.posY = null;
      this.velX = null;
      this.velY = null;
      this.mds_pred_array = null;
      this.prediction = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('target_idx')) {
        this.target_idx = initObj.target_idx
      }
      else {
        this.target_idx = 0;
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
      if (initObj.hasOwnProperty('mds_pred_array')) {
        this.mds_pred_array = initObj.mds_pred_array
      }
      else {
        this.mds_pred_array = [];
      }
      if (initObj.hasOwnProperty('prediction')) {
        this.prediction = initObj.prediction
      }
      else {
        this.prediction = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MDSPred
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [target_idx]
    bufferOffset = _serializer.uint8(obj.target_idx, buffer, bufferOffset);
    // Serialize message field [posX]
    bufferOffset = _serializer.float32(obj.posX, buffer, bufferOffset);
    // Serialize message field [posY]
    bufferOffset = _serializer.float32(obj.posY, buffer, bufferOffset);
    // Serialize message field [velX]
    bufferOffset = _serializer.float32(obj.velX, buffer, bufferOffset);
    // Serialize message field [velY]
    bufferOffset = _serializer.float32(obj.velY, buffer, bufferOffset);
    // Serialize message field [mds_pred_array]
    bufferOffset = _arraySerializer.float32(obj.mds_pred_array, buffer, bufferOffset, null);
    // Serialize message field [prediction]
    bufferOffset = _serializer.string(obj.prediction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MDSPred
    let len;
    let data = new MDSPred(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_idx]
    data.target_idx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [posX]
    data.posX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posY]
    data.posY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velX]
    data.velX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velY]
    data.velY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mds_pred_array]
    data.mds_pred_array = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [prediction]
    data.prediction = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.mds_pred_array.length;
    length += object.prediction.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mds_cnn_node_pkg/MDSPred';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f0f31d758f114011921fb9c0d76aee9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 target_idx
    float32 posX
    float32 posY
    float32 velX
    float32 velY
    float32[] mds_pred_array
    string prediction
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
    const resolved = new MDSPred(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.target_idx !== undefined) {
      resolved.target_idx = msg.target_idx;
    }
    else {
      resolved.target_idx = 0
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

    if (msg.mds_pred_array !== undefined) {
      resolved.mds_pred_array = msg.mds_pred_array;
    }
    else {
      resolved.mds_pred_array = []
    }

    if (msg.prediction !== undefined) {
      resolved.prediction = msg.prediction;
    }
    else {
      resolved.prediction = ''
    }

    return resolved;
    }
};

module.exports = MDSPred;
