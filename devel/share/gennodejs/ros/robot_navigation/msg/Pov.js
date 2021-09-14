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

class Pov {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.frame_id = null;
      this.Direction = null;
      this.Ceiling_height_near = null;
      this.Ceiling_height_mid = null;
      this.Ceiling_height_far = null;
      this.Wall_distance_near = null;
      this.Wall_distance_mid = null;
      this.Wall_distance_far = null;
      this.Floor_distance = null;
      this.Floor_slope = null;
      this.Floor_type = null;
      this.Wall_type = null;
      this.Ceiling_type = null;
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
      if (initObj.hasOwnProperty('Direction')) {
        this.Direction = initObj.Direction
      }
      else {
        this.Direction = '';
      }
      if (initObj.hasOwnProperty('Ceiling_height_near')) {
        this.Ceiling_height_near = initObj.Ceiling_height_near
      }
      else {
        this.Ceiling_height_near = 0.0;
      }
      if (initObj.hasOwnProperty('Ceiling_height_mid')) {
        this.Ceiling_height_mid = initObj.Ceiling_height_mid
      }
      else {
        this.Ceiling_height_mid = 0.0;
      }
      if (initObj.hasOwnProperty('Ceiling_height_far')) {
        this.Ceiling_height_far = initObj.Ceiling_height_far
      }
      else {
        this.Ceiling_height_far = 0.0;
      }
      if (initObj.hasOwnProperty('Wall_distance_near')) {
        this.Wall_distance_near = initObj.Wall_distance_near
      }
      else {
        this.Wall_distance_near = 0.0;
      }
      if (initObj.hasOwnProperty('Wall_distance_mid')) {
        this.Wall_distance_mid = initObj.Wall_distance_mid
      }
      else {
        this.Wall_distance_mid = 0.0;
      }
      if (initObj.hasOwnProperty('Wall_distance_far')) {
        this.Wall_distance_far = initObj.Wall_distance_far
      }
      else {
        this.Wall_distance_far = 0.0;
      }
      if (initObj.hasOwnProperty('Floor_distance')) {
        this.Floor_distance = initObj.Floor_distance
      }
      else {
        this.Floor_distance = 0.0;
      }
      if (initObj.hasOwnProperty('Floor_slope')) {
        this.Floor_slope = initObj.Floor_slope
      }
      else {
        this.Floor_slope = 0.0;
      }
      if (initObj.hasOwnProperty('Floor_type')) {
        this.Floor_type = initObj.Floor_type
      }
      else {
        this.Floor_type = '';
      }
      if (initObj.hasOwnProperty('Wall_type')) {
        this.Wall_type = initObj.Wall_type
      }
      else {
        this.Wall_type = '';
      }
      if (initObj.hasOwnProperty('Ceiling_type')) {
        this.Ceiling_type = initObj.Ceiling_type
      }
      else {
        this.Ceiling_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pov
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [Direction]
    bufferOffset = _serializer.string(obj.Direction, buffer, bufferOffset);
    // Serialize message field [Ceiling_height_near]
    bufferOffset = _serializer.float64(obj.Ceiling_height_near, buffer, bufferOffset);
    // Serialize message field [Ceiling_height_mid]
    bufferOffset = _serializer.float64(obj.Ceiling_height_mid, buffer, bufferOffset);
    // Serialize message field [Ceiling_height_far]
    bufferOffset = _serializer.float64(obj.Ceiling_height_far, buffer, bufferOffset);
    // Serialize message field [Wall_distance_near]
    bufferOffset = _serializer.float64(obj.Wall_distance_near, buffer, bufferOffset);
    // Serialize message field [Wall_distance_mid]
    bufferOffset = _serializer.float64(obj.Wall_distance_mid, buffer, bufferOffset);
    // Serialize message field [Wall_distance_far]
    bufferOffset = _serializer.float64(obj.Wall_distance_far, buffer, bufferOffset);
    // Serialize message field [Floor_distance]
    bufferOffset = _serializer.float64(obj.Floor_distance, buffer, bufferOffset);
    // Serialize message field [Floor_slope]
    bufferOffset = _serializer.float64(obj.Floor_slope, buffer, bufferOffset);
    // Serialize message field [Floor_type]
    bufferOffset = _serializer.string(obj.Floor_type, buffer, bufferOffset);
    // Serialize message field [Wall_type]
    bufferOffset = _serializer.string(obj.Wall_type, buffer, bufferOffset);
    // Serialize message field [Ceiling_type]
    bufferOffset = _serializer.string(obj.Ceiling_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pov
    let len;
    let data = new Pov(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Direction]
    data.Direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Ceiling_height_near]
    data.Ceiling_height_near = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Ceiling_height_mid]
    data.Ceiling_height_mid = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Ceiling_height_far]
    data.Ceiling_height_far = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Wall_distance_near]
    data.Wall_distance_near = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Wall_distance_mid]
    data.Wall_distance_mid = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Wall_distance_far]
    data.Wall_distance_far = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Floor_distance]
    data.Floor_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Floor_slope]
    data.Floor_slope = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Floor_type]
    data.Floor_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Wall_type]
    data.Wall_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Ceiling_type]
    data.Ceiling_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    length += _getByteLength(object.Direction);
    length += _getByteLength(object.Floor_type);
    length += _getByteLength(object.Wall_type);
    length += _getByteLength(object.Ceiling_type);
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_navigation/Pov';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b3eac4f3850f7049a58dd73defae320';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    string frame_id
    string Direction
    float64 Ceiling_height_near
    float64 Ceiling_height_mid
    float64 Ceiling_height_far
    float64 Wall_distance_near
    float64 Wall_distance_mid
    float64 Wall_distance_far
    float64 Floor_distance
    float64 Floor_slope
    string Floor_type
    string Wall_type
    string Ceiling_type
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pov(null);
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

    if (msg.Direction !== undefined) {
      resolved.Direction = msg.Direction;
    }
    else {
      resolved.Direction = ''
    }

    if (msg.Ceiling_height_near !== undefined) {
      resolved.Ceiling_height_near = msg.Ceiling_height_near;
    }
    else {
      resolved.Ceiling_height_near = 0.0
    }

    if (msg.Ceiling_height_mid !== undefined) {
      resolved.Ceiling_height_mid = msg.Ceiling_height_mid;
    }
    else {
      resolved.Ceiling_height_mid = 0.0
    }

    if (msg.Ceiling_height_far !== undefined) {
      resolved.Ceiling_height_far = msg.Ceiling_height_far;
    }
    else {
      resolved.Ceiling_height_far = 0.0
    }

    if (msg.Wall_distance_near !== undefined) {
      resolved.Wall_distance_near = msg.Wall_distance_near;
    }
    else {
      resolved.Wall_distance_near = 0.0
    }

    if (msg.Wall_distance_mid !== undefined) {
      resolved.Wall_distance_mid = msg.Wall_distance_mid;
    }
    else {
      resolved.Wall_distance_mid = 0.0
    }

    if (msg.Wall_distance_far !== undefined) {
      resolved.Wall_distance_far = msg.Wall_distance_far;
    }
    else {
      resolved.Wall_distance_far = 0.0
    }

    if (msg.Floor_distance !== undefined) {
      resolved.Floor_distance = msg.Floor_distance;
    }
    else {
      resolved.Floor_distance = 0.0
    }

    if (msg.Floor_slope !== undefined) {
      resolved.Floor_slope = msg.Floor_slope;
    }
    else {
      resolved.Floor_slope = 0.0
    }

    if (msg.Floor_type !== undefined) {
      resolved.Floor_type = msg.Floor_type;
    }
    else {
      resolved.Floor_type = ''
    }

    if (msg.Wall_type !== undefined) {
      resolved.Wall_type = msg.Wall_type;
    }
    else {
      resolved.Wall_type = ''
    }

    if (msg.Ceiling_type !== undefined) {
      resolved.Ceiling_type = msg.Ceiling_type;
    }
    else {
      resolved.Ceiling_type = ''
    }

    return resolved;
    }
};

module.exports = Pov;
