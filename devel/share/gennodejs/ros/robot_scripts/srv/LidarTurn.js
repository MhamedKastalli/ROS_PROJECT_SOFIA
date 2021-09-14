// Auto-generated. Do not edit!

// (in-package robot_scripts.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LidarTurnRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarTurnRequest
    // Serialize message field [cmd]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarTurnRequest
    let len;
    let data = new LidarTurnRequest(null);
    // Deserialize message field [cmd]
    data.cmd = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scripts/LidarTurnRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '461b2fa984eba9bfc07b673e65802cd0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 cmd
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarTurnRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = std_msgs.msg.Float64.Resolve(msg.cmd)
    }
    else {
      resolved.cmd = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

class LidarTurnResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarTurnResponse
    // Serialize message field [done]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarTurnResponse
    let len;
    let data = new LidarTurnResponse(null);
    // Deserialize message field [done]
    data.done = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scripts/LidarTurnResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c236c9790b7f5f3c3164ceb3563eae0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool done
    
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarTurnResponse(null);
    if (msg.done !== undefined) {
      resolved.done = std_msgs.msg.Bool.Resolve(msg.done)
    }
    else {
      resolved.done = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = {
  Request: LidarTurnRequest,
  Response: LidarTurnResponse,
  md5sum() { return 'b56007e98f35cde3af7d591f9d8a85f9'; },
  datatype() { return 'robot_scripts/LidarTurn'; }
};
