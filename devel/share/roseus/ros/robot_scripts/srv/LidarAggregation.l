;; Auto-generated. Do not edit!


(when (boundp 'robot_scripts::LidarAggregation)
  (if (not (find-package "ROBOT_SCRIPTS"))
    (make-package "ROBOT_SCRIPTS"))
  (shadow 'LidarAggregation (find-package "ROBOT_SCRIPTS")))
(unless (find-package "ROBOT_SCRIPTS::LIDARAGGREGATION")
  (make-package "ROBOT_SCRIPTS::LIDARAGGREGATION"))
(unless (find-package "ROBOT_SCRIPTS::LIDARAGGREGATIONREQUEST")
  (make-package "ROBOT_SCRIPTS::LIDARAGGREGATIONREQUEST"))
(unless (find-package "ROBOT_SCRIPTS::LIDARAGGREGATIONRESPONSE")
  (make-package "ROBOT_SCRIPTS::LIDARAGGREGATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass robot_scripts::LidarAggregationRequest
  :super ros::object
  :slots (_Scans ))

(defmethod robot_scripts::LidarAggregationRequest
  (:init
   (&key
    ((:Scans __Scans) ())
    )
   (send-super :init)
   (setq _Scans __Scans)
   self)
  (:Scans
   (&rest __Scans)
   (if (keywordp (car __Scans))
       (send* _Scans __Scans)
     (progn
       (if __Scans (setq _Scans (car __Scans)))
       _Scans)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/LaserScan[] _Scans
    (apply #'+ (send-all _Scans :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/LaserScan[] _Scans
     (write-long (length _Scans) s)
     (dolist (elem _Scans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/LaserScan[] _Scans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Scans (let (r) (dotimes (i n) (push (instance sensor_msgs::LaserScan :init) r)) r))
     (dolist (elem- _Scans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robot_scripts::LidarAggregationResponse
  :super ros::object
  :slots (_Cloud ))

(defmethod robot_scripts::LidarAggregationResponse
  (:init
   (&key
    ((:Cloud __Cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _Cloud __Cloud)
   self)
  (:Cloud
   (&rest __Cloud)
   (if (keywordp (car __Cloud))
       (send* _Cloud __Cloud)
     (progn
       (if __Cloud (setq _Cloud (car __Cloud)))
       _Cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _Cloud
    (send _Cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _Cloud
       (send _Cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _Cloud
     (send _Cloud :deserialize buf ptr-) (incf ptr- (send _Cloud :serialization-length))
   ;;
   self)
  )

(defclass robot_scripts::LidarAggregation
  :super ros::object
  :slots ())

(setf (get robot_scripts::LidarAggregation :md5sum-) "9516ae18ce904139a5df97e1390d9329")
(setf (get robot_scripts::LidarAggregation :datatype-) "robot_scripts/LidarAggregation")
(setf (get robot_scripts::LidarAggregation :request) robot_scripts::LidarAggregationRequest)
(setf (get robot_scripts::LidarAggregation :response) robot_scripts::LidarAggregationResponse)

(defmethod robot_scripts::LidarAggregationRequest
  (:response () (instance robot_scripts::LidarAggregationResponse :init)))

(setf (get robot_scripts::LidarAggregationRequest :md5sum-) "9516ae18ce904139a5df97e1390d9329")
(setf (get robot_scripts::LidarAggregationRequest :datatype-) "robot_scripts/LidarAggregationRequest")
(setf (get robot_scripts::LidarAggregationRequest :definition-)
      "sensor_msgs/LaserScan[] Scans

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
---
sensor_msgs/PointCloud2 Cloud


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

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
")

(setf (get robot_scripts::LidarAggregationResponse :md5sum-) "9516ae18ce904139a5df97e1390d9329")
(setf (get robot_scripts::LidarAggregationResponse :datatype-) "robot_scripts/LidarAggregationResponse")
(setf (get robot_scripts::LidarAggregationResponse :definition-)
      "sensor_msgs/LaserScan[] Scans

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
---
sensor_msgs/PointCloud2 Cloud


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

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
")



(provide :robot_scripts/LidarAggregation "9516ae18ce904139a5df97e1390d9329")


