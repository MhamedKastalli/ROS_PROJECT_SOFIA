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

class Map {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.frame_id = null;
      this.last_cmd = null;
      this.floor = null;
      this.wall = null;
      this.ceiling = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.position_robot = null;
      this.type_environment = null;
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
      if (initObj.hasOwnProperty('last_cmd')) {
        this.last_cmd = initObj.last_cmd
      }
      else {
        this.last_cmd = '';
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
      if (initObj.hasOwnProperty('position_robot')) {
        this.position_robot = initObj.position_robot
      }
      else {
        this.position_robot = '';
      }
      if (initObj.hasOwnProperty('type_environment')) {
        this.type_environment = initObj.type_environment
      }
      else {
        this.type_environment = '';
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
    // Serializes a message object of type Map
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [last_cmd]
    bufferOffset = _serializer.string(obj.last_cmd, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _arraySerializer.string(obj.floor, buffer, bufferOffset, null);
    // Serialize message field [wall]
    bufferOffset = _arraySerializer.string(obj.wall, buffer, bufferOffset, null);
    // Serialize message field [ceiling]
    bufferOffset = _arraySerializer.string(obj.ceiling, buffer, bufferOffset, null);
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
    // Serialize message field [position_robot]
    bufferOffset = _serializer.string(obj.position_robot, buffer, bufferOffset);
    // Serialize message field [type_environment]
    bufferOffset = _serializer.string(obj.type_environment, buffer, bufferOffset);
    // Serialize message field [accessibility]
    bufferOffset = _arraySerializer.string(obj.accessibility, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Map
    let len;
    let data = new Map(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [last_cmd]
    data.last_cmd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [wall]
    data.wall = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [ceiling]
    data.ceiling = _arrayDeserializer.string(buffer, bufferOffset, null)
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
    // Deserialize message field [position_robot]
    data.position_robot = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type_environment]
    data.type_environment = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [accessibility]
    data.accessibility = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    length += _getByteLength(object.last_cmd);
    object.floor.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.wall.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.ceiling.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.position_robot);
    length += _getByteLength(object.type_environment);
    object.accessibility.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_navigation/Map';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7041233ff5b385e9991be074cb29ad2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    string frame_id
    string last_cmd
    string[] floor
    string[] wall
    string[] ceiling
    float64 x
    float64 y
    float64 z
    float64 roll
    float64 pitch
    float64 yaw
    string position_robot
    string type_environment
    string[] accessibility
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Map(null);
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

    if (msg.last_cmd !== undefined) {
      resolved.last_cmd = msg.last_cmd;
    }
    else {
      resolved.last_cmd = ''
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

    if (msg.position_robot !== undefined) {
      resolved.position_robot = msg.position_robot;
    }
    else {
      resolved.position_robot = ''
    }

    if (msg.type_environment !== undefined) {
      resolved.type_environment = msg.type_environment;
    }
    else {
      resolved.type_environment = ''
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

module.exports = Map;
