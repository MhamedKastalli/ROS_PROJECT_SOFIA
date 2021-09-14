; Auto-generated. Do not edit!


(cl:in-package robot_scripts-srv)


;//! \htmlinclude LidarTurn-request.msg.html

(cl:defclass <LidarTurn-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass LidarTurn-request (<LidarTurn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarTurn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarTurn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scripts-srv:<LidarTurn-request> is deprecated: use robot_scripts-srv:LidarTurn-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <LidarTurn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scripts-srv:cmd-val is deprecated.  Use robot_scripts-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarTurn-request>) ostream)
  "Serializes a message object of type '<LidarTurn-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarTurn-request>) istream)
  "Deserializes a message object of type '<LidarTurn-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarTurn-request>)))
  "Returns string type for a service object of type '<LidarTurn-request>"
  "robot_scripts/LidarTurnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarTurn-request)))
  "Returns string type for a service object of type 'LidarTurn-request"
  "robot_scripts/LidarTurnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarTurn-request>)))
  "Returns md5sum for a message object of type '<LidarTurn-request>"
  "b56007e98f35cde3af7d591f9d8a85f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarTurn-request)))
  "Returns md5sum for a message object of type 'LidarTurn-request"
  "b56007e98f35cde3af7d591f9d8a85f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarTurn-request>)))
  "Returns full string definition for message of type '<LidarTurn-request>"
  (cl:format cl:nil "std_msgs/Float64 cmd~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarTurn-request)))
  "Returns full string definition for message of type 'LidarTurn-request"
  (cl:format cl:nil "std_msgs/Float64 cmd~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarTurn-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarTurn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarTurn-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude LidarTurn-response.msg.html

(cl:defclass <LidarTurn-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass LidarTurn-response (<LidarTurn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarTurn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarTurn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scripts-srv:<LidarTurn-response> is deprecated: use robot_scripts-srv:LidarTurn-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <LidarTurn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scripts-srv:done-val is deprecated.  Use robot_scripts-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarTurn-response>) ostream)
  "Serializes a message object of type '<LidarTurn-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'done) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarTurn-response>) istream)
  "Deserializes a message object of type '<LidarTurn-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'done) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarTurn-response>)))
  "Returns string type for a service object of type '<LidarTurn-response>"
  "robot_scripts/LidarTurnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarTurn-response)))
  "Returns string type for a service object of type 'LidarTurn-response"
  "robot_scripts/LidarTurnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarTurn-response>)))
  "Returns md5sum for a message object of type '<LidarTurn-response>"
  "b56007e98f35cde3af7d591f9d8a85f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarTurn-response)))
  "Returns md5sum for a message object of type 'LidarTurn-response"
  "b56007e98f35cde3af7d591f9d8a85f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarTurn-response>)))
  "Returns full string definition for message of type '<LidarTurn-response>"
  (cl:format cl:nil "std_msgs/Bool done~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarTurn-response)))
  "Returns full string definition for message of type 'LidarTurn-response"
  (cl:format cl:nil "std_msgs/Bool done~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarTurn-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'done))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarTurn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarTurn-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LidarTurn)))
  'LidarTurn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LidarTurn)))
  'LidarTurn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarTurn)))
  "Returns string type for a service object of type '<LidarTurn>"
  "robot_scripts/LidarTurn")