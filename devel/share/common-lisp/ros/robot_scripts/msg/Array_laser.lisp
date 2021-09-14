; Auto-generated. Do not edit!


(cl:in-package robot_scripts-msg)


;//! \htmlinclude Array_laser.msg.html

(cl:defclass <Array_laser> (roslisp-msg-protocol:ros-message)
  ((Scans
    :reader Scans
    :initarg :Scans
    :type (cl:vector sensor_msgs-msg:LaserScan)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:LaserScan :initial-element (cl:make-instance 'sensor_msgs-msg:LaserScan))))
)

(cl:defclass Array_laser (<Array_laser>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Array_laser>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Array_laser)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scripts-msg:<Array_laser> is deprecated: use robot_scripts-msg:Array_laser instead.")))

(cl:ensure-generic-function 'Scans-val :lambda-list '(m))
(cl:defmethod Scans-val ((m <Array_laser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scripts-msg:Scans-val is deprecated.  Use robot_scripts-msg:Scans instead.")
  (Scans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Array_laser>) ostream)
  "Serializes a message object of type '<Array_laser>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Scans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Scans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Array_laser>) istream)
  "Deserializes a message object of type '<Array_laser>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Array_laser>)))
  "Returns string type for a message object of type '<Array_laser>"
  "robot_scripts/Array_laser")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Array_laser)))
  "Returns string type for a message object of type 'Array_laser"
  "robot_scripts/Array_laser")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Array_laser>)))
  "Returns md5sum for a message object of type '<Array_laser>"
  "78bb0db4a27d3a869e1fac3f4dfb4494")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Array_laser)))
  "Returns md5sum for a message object of type 'Array_laser"
  "78bb0db4a27d3a869e1fac3f4dfb4494")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Array_laser>)))
  "Returns full string definition for message of type '<Array_laser>"
  (cl:format cl:nil "sensor_msgs/LaserScan[] Scans~%~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Array_laser)))
  "Returns full string definition for message of type 'Array_laser"
  (cl:format cl:nil "sensor_msgs/LaserScan[] Scans~%~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Array_laser>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Scans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Array_laser>))
  "Converts a ROS message object to a list"
  (cl:list 'Array_laser
    (cl:cons ':Scans (Scans msg))
))
