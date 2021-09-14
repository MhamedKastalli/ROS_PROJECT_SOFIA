; Auto-generated. Do not edit!


(cl:in-package robot_navigation-msg)


;//! \htmlinclude Pov.msg.html

(cl:defclass <Pov> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (Direction
    :reader Direction
    :initarg :Direction
    :type cl:string
    :initform "")
   (Ceiling_height_near
    :reader Ceiling_height_near
    :initarg :Ceiling_height_near
    :type cl:float
    :initform 0.0)
   (Ceiling_height_mid
    :reader Ceiling_height_mid
    :initarg :Ceiling_height_mid
    :type cl:float
    :initform 0.0)
   (Ceiling_height_far
    :reader Ceiling_height_far
    :initarg :Ceiling_height_far
    :type cl:float
    :initform 0.0)
   (Wall_distance_near
    :reader Wall_distance_near
    :initarg :Wall_distance_near
    :type cl:float
    :initform 0.0)
   (Wall_distance_mid
    :reader Wall_distance_mid
    :initarg :Wall_distance_mid
    :type cl:float
    :initform 0.0)
   (Wall_distance_far
    :reader Wall_distance_far
    :initarg :Wall_distance_far
    :type cl:float
    :initform 0.0)
   (Floor_distance
    :reader Floor_distance
    :initarg :Floor_distance
    :type cl:float
    :initform 0.0)
   (Floor_slope
    :reader Floor_slope
    :initarg :Floor_slope
    :type cl:float
    :initform 0.0)
   (Floor_type
    :reader Floor_type
    :initarg :Floor_type
    :type cl:string
    :initform "")
   (Wall_type
    :reader Wall_type
    :initarg :Wall_type
    :type cl:string
    :initform "")
   (Ceiling_type
    :reader Ceiling_type
    :initarg :Ceiling_type
    :type cl:string
    :initform ""))
)

(cl:defclass Pov (<Pov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-msg:<Pov> is deprecated: use robot_navigation-msg:Pov instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:stamp-val is deprecated.  Use robot_navigation-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:frame_id-val is deprecated.  Use robot_navigation-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'Direction-val :lambda-list '(m))
(cl:defmethod Direction-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Direction-val is deprecated.  Use robot_navigation-msg:Direction instead.")
  (Direction m))

(cl:ensure-generic-function 'Ceiling_height_near-val :lambda-list '(m))
(cl:defmethod Ceiling_height_near-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Ceiling_height_near-val is deprecated.  Use robot_navigation-msg:Ceiling_height_near instead.")
  (Ceiling_height_near m))

(cl:ensure-generic-function 'Ceiling_height_mid-val :lambda-list '(m))
(cl:defmethod Ceiling_height_mid-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Ceiling_height_mid-val is deprecated.  Use robot_navigation-msg:Ceiling_height_mid instead.")
  (Ceiling_height_mid m))

(cl:ensure-generic-function 'Ceiling_height_far-val :lambda-list '(m))
(cl:defmethod Ceiling_height_far-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Ceiling_height_far-val is deprecated.  Use robot_navigation-msg:Ceiling_height_far instead.")
  (Ceiling_height_far m))

(cl:ensure-generic-function 'Wall_distance_near-val :lambda-list '(m))
(cl:defmethod Wall_distance_near-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Wall_distance_near-val is deprecated.  Use robot_navigation-msg:Wall_distance_near instead.")
  (Wall_distance_near m))

(cl:ensure-generic-function 'Wall_distance_mid-val :lambda-list '(m))
(cl:defmethod Wall_distance_mid-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Wall_distance_mid-val is deprecated.  Use robot_navigation-msg:Wall_distance_mid instead.")
  (Wall_distance_mid m))

(cl:ensure-generic-function 'Wall_distance_far-val :lambda-list '(m))
(cl:defmethod Wall_distance_far-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Wall_distance_far-val is deprecated.  Use robot_navigation-msg:Wall_distance_far instead.")
  (Wall_distance_far m))

(cl:ensure-generic-function 'Floor_distance-val :lambda-list '(m))
(cl:defmethod Floor_distance-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Floor_distance-val is deprecated.  Use robot_navigation-msg:Floor_distance instead.")
  (Floor_distance m))

(cl:ensure-generic-function 'Floor_slope-val :lambda-list '(m))
(cl:defmethod Floor_slope-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Floor_slope-val is deprecated.  Use robot_navigation-msg:Floor_slope instead.")
  (Floor_slope m))

(cl:ensure-generic-function 'Floor_type-val :lambda-list '(m))
(cl:defmethod Floor_type-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Floor_type-val is deprecated.  Use robot_navigation-msg:Floor_type instead.")
  (Floor_type m))

(cl:ensure-generic-function 'Wall_type-val :lambda-list '(m))
(cl:defmethod Wall_type-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Wall_type-val is deprecated.  Use robot_navigation-msg:Wall_type instead.")
  (Wall_type m))

(cl:ensure-generic-function 'Ceiling_type-val :lambda-list '(m))
(cl:defmethod Ceiling_type-val ((m <Pov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-msg:Ceiling_type-val is deprecated.  Use robot_navigation-msg:Ceiling_type instead.")
  (Ceiling_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pov>) ostream)
  "Serializes a message object of type '<Pov>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Direction))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Ceiling_height_near))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Ceiling_height_mid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Ceiling_height_far))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Wall_distance_near))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Wall_distance_mid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Wall_distance_far))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Floor_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Floor_slope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Floor_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Floor_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Wall_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Wall_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Ceiling_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Ceiling_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pov>) istream)
  "Deserializes a message object of type '<Pov>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ceiling_height_near) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ceiling_height_mid) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ceiling_height_far) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Wall_distance_near) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Wall_distance_mid) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Wall_distance_far) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Floor_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Floor_slope) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Floor_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Floor_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Wall_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Wall_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Ceiling_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Ceiling_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pov>)))
  "Returns string type for a message object of type '<Pov>"
  "robot_navigation/Pov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pov)))
  "Returns string type for a message object of type 'Pov"
  "robot_navigation/Pov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pov>)))
  "Returns md5sum for a message object of type '<Pov>"
  "2b3eac4f3850f7049a58dd73defae320")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pov)))
  "Returns md5sum for a message object of type 'Pov"
  "2b3eac4f3850f7049a58dd73defae320")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pov>)))
  "Returns full string definition for message of type '<Pov>"
  (cl:format cl:nil "time stamp~%string frame_id~%string Direction~%float64 Ceiling_height_near~%float64 Ceiling_height_mid~%float64 Ceiling_height_far~%float64 Wall_distance_near~%float64 Wall_distance_mid~%float64 Wall_distance_far~%float64 Floor_distance~%float64 Floor_slope~%string Floor_type~%string Wall_type~%string Ceiling_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pov)))
  "Returns full string definition for message of type 'Pov"
  (cl:format cl:nil "time stamp~%string frame_id~%string Direction~%float64 Ceiling_height_near~%float64 Ceiling_height_mid~%float64 Ceiling_height_far~%float64 Wall_distance_near~%float64 Wall_distance_mid~%float64 Wall_distance_far~%float64 Floor_distance~%float64 Floor_slope~%string Floor_type~%string Wall_type~%string Ceiling_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pov>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:length (cl:slot-value msg 'Direction))
     8
     8
     8
     8
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'Floor_type))
     4 (cl:length (cl:slot-value msg 'Wall_type))
     4 (cl:length (cl:slot-value msg 'Ceiling_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pov>))
  "Converts a ROS message object to a list"
  (cl:list 'Pov
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':Direction (Direction msg))
    (cl:cons ':Ceiling_height_near (Ceiling_height_near msg))
    (cl:cons ':Ceiling_height_mid (Ceiling_height_mid msg))
    (cl:cons ':Ceiling_height_far (Ceiling_height_far msg))
    (cl:cons ':Wall_distance_near (Wall_distance_near msg))
    (cl:cons ':Wall_distance_mid (Wall_distance_mid msg))
    (cl:cons ':Wall_distance_far (Wall_distance_far msg))
    (cl:cons ':Floor_distance (Floor_distance msg))
    (cl:cons ':Floor_slope (Floor_slope msg))
    (cl:cons ':Floor_type (Floor_type msg))
    (cl:cons ':Wall_type (Wall_type msg))
    (cl:cons ':Ceiling_type (Ceiling_type msg))
))
