; Auto-generated. Do not edit!


(cl:in-package robot_navigation-srv)


;//! \htmlinclude Joint_state_info-request.msg.html

(cl:defclass <Joint_state_info-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Joint_state_info-request (<Joint_state_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint_state_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint_state_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<Joint_state_info-request> is deprecated: use robot_navigation-srv:Joint_state_info-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint_state_info-request>) ostream)
  "Serializes a message object of type '<Joint_state_info-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint_state_info-request>) istream)
  "Deserializes a message object of type '<Joint_state_info-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint_state_info-request>)))
  "Returns string type for a service object of type '<Joint_state_info-request>"
  "robot_navigation/Joint_state_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_state_info-request)))
  "Returns string type for a service object of type 'Joint_state_info-request"
  "robot_navigation/Joint_state_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint_state_info-request>)))
  "Returns md5sum for a message object of type '<Joint_state_info-request>"
  "741558e2f9de9b48acbf05de738eda9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint_state_info-request)))
  "Returns md5sum for a message object of type 'Joint_state_info-request"
  "741558e2f9de9b48acbf05de738eda9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint_state_info-request>)))
  "Returns full string definition for message of type '<Joint_state_info-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint_state_info-request)))
  "Returns full string definition for message of type 'Joint_state_info-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint_state_info-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint_state_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint_state_info-request
))
;//! \htmlinclude Joint_state_info-response.msg.html

(cl:defclass <Joint_state_info-response> (roslisp-msg-protocol:ros-message)
  ((resp_data
    :reader resp_data
    :initarg :resp_data
    :type cl:float
    :initform 0.0))
)

(cl:defclass Joint_state_info-response (<Joint_state_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint_state_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint_state_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<Joint_state_info-response> is deprecated: use robot_navigation-srv:Joint_state_info-response instead.")))

(cl:ensure-generic-function 'resp_data-val :lambda-list '(m))
(cl:defmethod resp_data-val ((m <Joint_state_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:resp_data-val is deprecated.  Use robot_navigation-srv:resp_data instead.")
  (resp_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint_state_info-response>) ostream)
  "Serializes a message object of type '<Joint_state_info-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'resp_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint_state_info-response>) istream)
  "Deserializes a message object of type '<Joint_state_info-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resp_data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint_state_info-response>)))
  "Returns string type for a service object of type '<Joint_state_info-response>"
  "robot_navigation/Joint_state_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_state_info-response)))
  "Returns string type for a service object of type 'Joint_state_info-response"
  "robot_navigation/Joint_state_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint_state_info-response>)))
  "Returns md5sum for a message object of type '<Joint_state_info-response>"
  "741558e2f9de9b48acbf05de738eda9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint_state_info-response)))
  "Returns md5sum for a message object of type 'Joint_state_info-response"
  "741558e2f9de9b48acbf05de738eda9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint_state_info-response>)))
  "Returns full string definition for message of type '<Joint_state_info-response>"
  (cl:format cl:nil "float64 resp_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint_state_info-response)))
  "Returns full string definition for message of type 'Joint_state_info-response"
  (cl:format cl:nil "float64 resp_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint_state_info-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint_state_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint_state_info-response
    (cl:cons ':resp_data (resp_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Joint_state_info)))
  'Joint_state_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Joint_state_info)))
  'Joint_state_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_state_info)))
  "Returns string type for a service object of type '<Joint_state_info>"
  "robot_navigation/Joint_state_info")