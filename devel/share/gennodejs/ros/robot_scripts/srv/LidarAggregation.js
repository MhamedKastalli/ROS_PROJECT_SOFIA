// Auto-generated. Do not edit!

// (in-package robot_scripts.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LidarAggregationRequest {
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
    // Serializes a message object of type LidarAggregationRequest
    // Serialize message field [Scans]
    // Serialize the length for message field [Scans]
    bufferOffset = _serializer.uint32(obj.Scans.length, buffer, bufferOffset);
    obj.Scans.forEach((val) => {
      bufferOffset = sensor_msgs.msg.LaserScan.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarAggregationRequest
    let len;
    let data = new LidarAggregationRequest(null);
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
    // Returns string type for a service object
    return 'robot_scripts/LidarAggregationRequest';
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
    const resolved = new LidarAggregationRequest(null);
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

class LidarAggregationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Cloud = null;
    }
    else {
      if (initObj.hasOwnProperty('Cloud')) {
        this.Cloud = initObj.Cloud
      }
      else {
        this.Cloud = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarAggregationResponse
    // Serialize message field [Cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.Cloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarAggregationResponse
    let len;
    let data = new LidarAggregationResponse(null);
    // Deserialize message field [Cloud]
    data.Cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.Cloud);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scripts/LidarAggregationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '234bf962611dc5efdbe361ae699cd4f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 Cloud
    
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarAggregationResponse(null);
    if (msg.Cloud !== undefined) {
      resolved.Cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.Cloud)
    }
    else {
      resolved.Cloud = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = {
  Request: LidarAggregationRequest,
  Response: LidarAggregationResponse,
  md5sum() { return '9516ae18ce904139a5df97e1390d9329'; },
  datatype() { return 'robot_scripts/LidarAggregation'; }
};
