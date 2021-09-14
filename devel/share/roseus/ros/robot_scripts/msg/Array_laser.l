;; Auto-generated. Do not edit!


(when (boundp 'robot_scripts::Array_laser)
  (if (not (find-package "ROBOT_SCRIPTS"))
    (make-package "ROBOT_SCRIPTS"))
  (shadow 'Array_laser (find-package "ROBOT_SCRIPTS")))
(unless (find-package "ROBOT_SCRIPTS::ARRAY_LASER")
  (make-package "ROBOT_SCRIPTS::ARRAY_LASER"))

(in-package "ROS")
;;//! \htmlinclude Array_laser.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass robot_scripts::Array_laser
  :super ros::object
  :slots (_Scans ))

(defmethod robot_scripts::Array_laser
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

(setf (get robot_scripts::Array_laser :md5sum-) "78bb0db4a27d3a869e1fac3f4dfb4494")
(setf (get robot_scripts::Array_laser :datatype-) "robot_scripts/Array_laser")
(setf (get robot_scripts::Array_laser :definition-)
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

")



(provide :robot_scripts/Array_laser "78bb0db4a27d3a869e1fac3f4dfb4494")


