// Auto-generated. Do not edit!

// (in-package robot_scripts.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Array_laser {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Scans = null;
    }
    else {
      if (initObj.hasOwnProperty('Scans')) {
        this.Scans = initObj.Scans
      }
      else {
        this.Scans = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Array_laser
    // Serialize message field [Scans]
    // Serialize the length for message field [Scans]
    bufferOffset = _serializer.uint32(obj.Scans.length, buffer, bufferOffset);
    obj.Scans.forEach((val) => {
      bufferOffset = sensor_msgs.msg.LaserScan.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Array_laser
    let len;
    let data = new Array_laser(null);
    // Deserialize message field [Scans]
    // Deserialize array length for message field [Scans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Scans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Scans[i] = sensor_msgs.msg.LaserScan.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Scans.forEach((val) => {
      length += sensor_msgs.msg.LaserScan.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scripts/Array_laser';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78bb0db4a27d3a869e1fac3f4dfb4494';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/LaserScan[] Scans
    
    
    ================================================================================
    MSG: sensor_msgs/LaserScan
    # Single scan from a planar laser range-finder
    #
    # If you have another ranging device with different behavior (e.g. a sonar
    # array), please find or create a different message, since applications
    # will make fairly laser-specific assumptions about this data
    
    Header header            # timestamp in the header is the acquisition time of 
                             # the first ray in the scan.
                             #
                             # in frame frame_id, angles are measured around 
                             # the positive Z axis (counterclockwise, if Z is up)
                             # with zero angle being forward along the x axis
                             
    float32 angle_min        # start angle of the scan [rad]
    float32 angle_max        # end angle of the scan [rad]
    float32 angle_increment  # angular distance between measurements [rad]
    
    float32 time_increment   # time between measurements [seconds] - if your scanner
                             # is moving, this will be used in interpolating position
                             # of 3d points
    float32 scan_time        # time between scans [seconds]
    
    float32 range_min        # minimum range value [m]
    float32 range_max        # maximum range value [m]
    
    float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
    float32[] intensities    # intensity data [device-specific units].  If your
                             # device does not provide intensities, please leave
                             # the array empty.
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Array_laser(null);
    if (msg.Scans !== undefined) {
      resolved.Scans = new Array(msg.Scans.length);
      for (let i = 0; i < resolved.Scans.length; ++i) {
        resolved.Scans[i] = sensor_msgs.msg.LaserScan.Resolve(msg.Scans[i]);
      }
    }
    else {
      resolved.Scans = []
    }

    return resolved;
    }
};

module.exports = Array_laser;
