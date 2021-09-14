// Auto-generated. Do not edit!

// (in-package robot_navigation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Environment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.frame_id = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.floor = null;
      this.wall = null;
      this.ceiling = null;
      this.accessibility = null;
    }
    else {
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
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
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
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = [];
      }
      if (initObj.hasOwnProperty('wall')) {
        this.wall = initObj.wall
      }
      else {
        this.wall = [];
      }
      if (initObj.hasOwnProperty('ceiling')) {
        this.ceiling = initObj.ceiling
      }
      else {
        this.ceiling = [];
      }
      if (initObj.hasOwnProperty('accessibility')) {
        this.accessibility = initObj.accessibility
      }
      else {
        this.accessibility = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Environment
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _arraySerializer.string(obj.floor, buffer, bufferOffset, null);
    // Serialize message field [wall]
    bufferOffset = _arraySerializer.string(obj.wall, buffer, bufferOffset, null);
    // Serialize message field [ceiling]
    bufferOffset = _arraySerializer.string(obj.ceiling, buffer, bufferOffset, null);
    // Serialize message field [accessibility]
    bufferOffset = _arraySerializer.string(obj.accessibility, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Environment
    let len;
    let data = new Environment(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [wall]
    data.wall = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [ceiling]
    data.ceiling = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [accessibility]
    data.accessibility = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    object.floor.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.wall.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.ceiling.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.accessibility.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_navigation/Environment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c1d618632bf1f049883f90efb2e06b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    string frame_id
    float64 x
    float64 y
    float64 z
    float64 roll
    float64 pitch
    float64 yaw
    string[] floor
    string[] wall
    string[] ceiling
    string[] accessibility
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Environment(null);
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

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
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

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = []
    }

    if (msg.wall !== undefined) {
      resolved.wall = msg.wall;
    }
    else {
      resolved.wall = []
    }

    if (msg.ceiling !== undefined) {
      resolved.ceiling = msg.ceiling;
    }
    else {
      resolved.ceiling = []
    }

    if (msg.accessibility !== undefined) {
      resolved.accessibility = msg.accessibility;
    }
    else {
      resolved.accessibility = []
    }

    return resolved;
    }
};

module.exports = Environment;
