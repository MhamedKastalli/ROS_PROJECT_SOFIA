; Auto-generated. Do not edit!


(cl:in-package robot_scripts-srv)


;//! \htmlinclude LidarAggregation-request.msg.html

(cl:defclass <LidarAggregation-request> (roslisp-msg-protocol:ros-message)
  ((Scans
    :reader Scans
    :initarg :Scans
    :type (cl:vector sensor_msgs-msg:LaserScan)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:LaserScan :initial-element (cl:make-instance 'sensor_msgs-msg:LaserScan))))
)

(cl:defclass LidarAggregation-request (<LidarAggregation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarAggregation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarAggregation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scripts-srv:<LidarAggregation-request> is deprecated: use robot_scripts-srv:LidarAggregation-request instead.")))

(cl:ensure-generic-function 'Scans-val :lambda-list '(m))
(cl:defmethod Scans-val ((m <LidarAggregation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scripts-srv:Scans-val is deprecated.  Use robot_scripts-srv:Scans instead.")
  (Scans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarAggregation-request>) ostream)
  "Serializes a message object of type '<LidarAggregation-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Scans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Scans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarAggregation-request>) istream)
  "Deserializes a message object of type '<LidarAggregation-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Scans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Scans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:LaserScan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarAggregation-request>)))
  "Returns string type for a service object of type '<LidarAggregation-request>"
  "robot_scripts/LidarAggregationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarAggregation-request)))
  "Returns string type for a service object of type 'LidarAggregation-request"
  "robot_scripts/LidarAggregationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarAggregation-request>)))
  "Returns md5sum for a message object of type '<LidarAggregation-request>"
  "9516ae18ce904139a5df97e1390d9329")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarAggregation-request)))
  "Returns md5sum for a message object of type 'LidarAggregation-request"
  "9516ae18ce904139a5df97e1390d9329")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarAggregation-request>)))
  "Returns full string definition for message of type '<LidarAggregation-request>"
  (cl:format cl:nil "sensor_msgs/LaserScan[] Scans~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarAggregation-request)))
  "Returns full string definition for message of type 'LidarAggregation-request"
  (cl:format cl:nil "sensor_msgs/LaserScan[] Scans~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarAggregation-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Scans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarAggregation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarAggregation-request
    (cl:cons ':Scans (Scans msg))
))
;//! \htmlinclude LidarAggregation-response.msg.html

(cl:defclass <LidarAggregation-response> (roslisp-msg-protocol:ros-message)
  ((Cloud
    :reader Cloud
    :initarg :Cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass LidarAggregation-response (<LidarAggregation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarAggregation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarAggregation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scripts-srv:<LidarAggregation-response> is deprecated: use robot_scripts-srv:LidarAggregation-response instead.")))

(cl:ensure-generic-function 'Cloud-val :lambda-list '(m))
(cl:defmethod Cloud-val ((m <LidarAggregation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scripts-srv:Cloud-val is deprecated.  Use robot_scripts-srv:Cloud instead.")
  (Cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarAggregation-response>) ostream)
  "Serializes a message object of type '<LidarAggregation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarAggregation-response>) istream)
  "Deserializes a message object of type '<LidarAggregation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarAggregation-response>)))
  "Returns string type for a service object of type '<LidarAggregation-response>"
  "robot_scripts/LidarAggregationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarAggregation-response)))
  "Returns string type for a service object of type 'LidarAggregation-response"
  "robot_scripts/LidarAggregationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarAggregation-response>)))
  "Returns md5sum for a message object of type '<LidarAggregation-response>"
  "9516ae18ce904139a5df97e1390d9329")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarAggregation-response)))
  "Returns md5sum for a message object of type 'LidarAggregation-response"
  "9516ae18ce904139a5df97e1390d9329")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarAggregation-response>)))
  "Returns full string definition for message of type '<LidarAggregation-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 Cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarAggregation-response)))
  "Returns full string definition for message of type 'LidarAggregation-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 Cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarAggregation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarAggregation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarAggregation-response
    (cl:cons ':Cloud (Cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LidarAggregation)))
  'LidarAggregation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LidarAggregation)))
  'LidarAggregation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarAggregation)))
  "Returns string type for a service object of type '<LidarAggregation>"
  "robot_scripts/LidarAggregation")