; Auto-generated. Do not edit!


(cl:in-package robot_navigation-srv)


;//! \htmlinclude Cmd_vel_pub-request.msg.html

(cl:defclass <Cmd_vel_pub-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Cmd_vel_pub-request (<Cmd_vel_pub-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cmd_vel_pub-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cmd_vel_pub-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<Cmd_vel_pub-request> is deprecated: use robot_navigation-srv:Cmd_vel_pub-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Cmd_vel_pub-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:x-val is deprecated.  Use robot_navigation-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Cmd_vel_pub-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:z-val is deprecated.  Use robot_navigation-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cmd_vel_pub-request>) ostream)
  "Serializes a message object of type '<Cmd_vel_pub-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cmd_vel_pub-request>) istream)
  "Deserializes a message object of type '<Cmd_vel_pub-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cmd_vel_pub-request>)))
  "Returns string type for a service object of type '<Cmd_vel_pub-request>"
  "robot_navigation/Cmd_vel_pubRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cmd_vel_pub-request)))
  "Returns string type for a service object of type 'Cmd_vel_pub-request"
  "robot_navigation/Cmd_vel_pubRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cmd_vel_pub-request>)))
  "Returns md5sum for a message object of type '<Cmd_vel_pub-request>"
  "5e16a6b946eb627ffe9d5c82c7296a8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cmd_vel_pub-request)))
  "Returns md5sum for a message object of type 'Cmd_vel_pub-request"
  "5e16a6b946eb627ffe9d5c82c7296a8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cmd_vel_pub-request>)))
  "Returns full string definition for message of type '<Cmd_vel_pub-request>"
  (cl:format cl:nil "float64 x~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cmd_vel_pub-request)))
  "Returns full string definition for message of type 'Cmd_vel_pub-request"
  (cl:format cl:nil "float64 x~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cmd_vel_pub-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cmd_vel_pub-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Cmd_vel_pub-request
    (cl:cons ':x (x msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude Cmd_vel_pub-response.msg.html

(cl:defclass <Cmd_vel_pub-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Cmd_vel_pub-response (<Cmd_vel_pub-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cmd_vel_pub-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cmd_vel_pub-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<Cmd_vel_pub-response> is deprecated: use robot_navigation-srv:Cmd_vel_pub-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <Cmd_vel_pub-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:done-val is deprecated.  Use robot_navigation-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cmd_vel_pub-response>) ostream)
  "Serializes a message object of type '<Cmd_vel_pub-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cmd_vel_pub-response>) istream)
  "Deserializes a message object of type '<Cmd_vel_pub-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cmd_vel_pub-response>)))
  "Returns string type for a service object of type '<Cmd_vel_pub-response>"
  "robot_navigation/Cmd_vel_pubResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cmd_vel_pub-response)))
  "Returns string type for a service object of type 'Cmd_vel_pub-response"
  "robot_navigation/Cmd_vel_pubResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cmd_vel_pub-response>)))
  "Returns md5sum for a message object of type '<Cmd_vel_pub-response>"
  "5e16a6b946eb627ffe9d5c82c7296a8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cmd_vel_pub-response)))
  "Returns md5sum for a message object of type 'Cmd_vel_pub-response"
  "5e16a6b946eb627ffe9d5c82c7296a8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cmd_vel_pub-response>)))
  "Returns full string definition for message of type '<Cmd_vel_pub-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cmd_vel_pub-response)))
  "Returns full string definition for message of type 'Cmd_vel_pub-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cmd_vel_pub-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cmd_vel_pub-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Cmd_vel_pub-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Cmd_vel_pub)))
  'Cmd_vel_pub-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Cmd_vel_pub)))
  'Cmd_vel_pub-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cmd_vel_pub)))
  "Returns string type for a service object of type '<Cmd_vel_pub>"
  "robot_navigation/Cmd_vel_pub")