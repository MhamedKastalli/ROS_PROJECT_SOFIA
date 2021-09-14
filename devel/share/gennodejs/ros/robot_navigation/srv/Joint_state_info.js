// Auto-generated. Do not edit!

// (in-package robot_navigation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Joint_state_infoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joint_state_infoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joint_state_infoRequest
    let len;
    let data = new Joint_state_infoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_navigation/Joint_state_infoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joint_state_infoRequest(null);
    return resolved;
    }
};

class Joint_state_infoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resp_data = null;
    }
    else {
      if (initObj.hasOwnProperty('resp_data')) {
        this.resp_data = initObj.resp_data
      }
      else {
        this.resp_data = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joint_state_infoResponse
    // Serialize message field [resp_data]
    bufferOffset = _serializer.float64(obj.resp_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joint_state_infoResponse
    let len;
    let data = new Joint_state_infoResponse(null);
    // Deserialize message field [resp_data]
    data.resp_data = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_navigation/Joint_state_infoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '741558e2f9de9b48acbf05de738eda9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 resp_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joint_state_infoResponse(null);
    if (msg.resp_data !== undefined) {
      resolved.resp_data = msg.resp_data;
    }
    else {
      resolved.resp_data = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: Joint_state_infoRequest,
  Response: Joint_state_infoResponse,
  md5sum() { return '741558e2f9de9b48acbf05de738eda9c'; },
  datatype() { return 'robot_navigation/Joint_state_info'; }
};
