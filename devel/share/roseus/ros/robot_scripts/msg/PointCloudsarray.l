;; Auto-generated. Do not edit!


(when (boundp 'robot_scripts::PointCloudsarray)
  (if (not (find-package "ROBOT_SCRIPTS"))
    (make-package "ROBOT_SCRIPTS"))
  (shadow 'PointCloudsarray (find-package "ROBOT_SCRIPTS")))
(unless (find-package "ROBOT_SCRIPTS::POINTCLOUDSARRAY")
  (make-package "ROBOT_SCRIPTS::POINTCLOUDSARRAY"))

(in-package "ROS")
;;//! \htmlinclude PointCloudsarray.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass robot_scripts::PointCloudsarray
  :super ros::object
  :slots (_Scans ))

(defmethod robot_scripts::PointCloudsarray
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
    ;; sensor_msgs/PointCloud2[] _Scans
    (apply #'+ (send-all _Scans :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2[] _Scans
     (write-long (length _Scans) s)
     (dolist (elem _Scans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2[] _Scans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Scans (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _Scans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_scripts::PointCloudsarray :md5sum-) "8b0b19fb0b002fd1fbcdcde081c637c2")
(setf (get robot_scripts::PointCloudsarray :datatype-) "robot_scripts/PointCloudsarray")
(setf (get robot_scripts::PointCloudsarray :definition-)
      "sensor_msgs/PointCloud2[] Scans


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



(provide :robot_scripts/PointCloudsarray "8b0b19fb0b002fd1fbcdcde081c637c2")


