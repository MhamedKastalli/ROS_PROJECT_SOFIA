; Auto-generated. Do not edit!


(cl:in-package robot_scripts-srv)


;//! \htmlinclude lidar_scan-request.msg.html

(cl:defclass <lidar_scan-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass lidar_scan-request (<lidar_scan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_scan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_scan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scripts-srv:<lidar_scan-request> is deprecated: use robot_scripts-srv:lidar_scan-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_scan-request>) ostream)
  "Serializes a message object of type '<lidar_scan-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_scan-request>) istream)
  "Deserializes a message object of type '<lidar_scan-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_scan-request>)))
  "Returns string type for a service object of type '<lidar_scan-request>"
  "robot_scripts/lidar_scanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_scan-request)))
  "Returns string type for a service object of type 'lidar_scan-request"
  "robot_scripts/lidar_scanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_scan-request>)))
  "Returns md5sum for a message object of type '<lidar_scan-request>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_scan-request)))
  "Returns md5sum for a message object of type 'lidar_scan-request"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_scan-request>)))
  "Returns full string definition for message of type '<lidar_scan-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_scan-request)))
  "Returns full string definition for message of type 'lidar_scan-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_scan-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_scan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_scan-request
))
;//! \htmlinclude lidar_scan-response.msg.html

(cl:defclass <lidar_scan-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass lidar_scan-response (<lidar_scan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_scan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_scan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scripts-srv:<lidar_scan-response> is deprecated: use robot_scripts-srv:lidar_scan-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <lidar_scan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scripts-srv:done-val is deprecated.  Use robot_scripts-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_scan-response>) ostream)
  "Serializes a message object of type '<lidar_scan-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_scan-response>) istream)
  "Deserializes a message object of type '<lidar_scan-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_scan-response>)))
  "Returns string type for a service object of type '<lidar_scan-response>"
  "robot_scripts/lidar_scanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_scan-response)))
  "Returns string type for a service object of type 'lidar_scan-response"
  "robot_scripts/lidar_scanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_scan-response>)))
  "Returns md5sum for a message object of type '<lidar_scan-response>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_scan-response)))
  "Returns md5sum for a message object of type 'lidar_scan-response"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_scan-response>)))
  "Returns full string definition for message of type '<lidar_scan-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_scan-response)))
  "Returns full string definition for message of type 'lidar_scan-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_scan-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_scan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_scan-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lidar_scan)))
  'lidar_scan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lidar_scan)))
  'lidar_scan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_scan)))
  "Returns string type for a service object of type '<lidar_scan>"
  "robot_scripts/lidar_scan")