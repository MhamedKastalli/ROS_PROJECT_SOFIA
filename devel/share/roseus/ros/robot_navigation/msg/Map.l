;; Auto-generated. Do not edit!


(when (boundp 'robot_navigation::Map)
  (if (not (find-package "ROBOT_NAVIGATION"))
    (make-package "ROBOT_NAVIGATION"))
  (shadow 'Map (find-package "ROBOT_NAVIGATION")))
(unless (find-package "ROBOT_NAVIGATION::MAP")
  (make-package "ROBOT_NAVIGATION::MAP"))

(in-package "ROS")
;;//! \htmlinclude Map.msg.html


(defclass robot_navigation::Map
  :super ros::object
  :slots (_stamp _frame_id _last_cmd _floor _wall _ceiling _x _y _z _roll _pitch _yaw _position_robot _type_environment _accessibility ))

(defmethod robot_navigation::Map
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:last_cmd __last_cmd) "")
    ((:floor __floor) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:wall __wall) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:ceiling __ceiling) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:position_robot __position_robot) "")
    ((:type_environment __type_environment) "")
    ((:accessibility __accessibility) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _last_cmd (string __last_cmd))
   (setq _floor __floor)
   (setq _wall __wall)
   (setq _ceiling __ceiling)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _position_robot (string __position_robot))
   (setq _type_environment (string __type_environment))
   (setq _accessibility __accessibility)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:last_cmd
   (&optional __last_cmd)
   (if __last_cmd (setq _last_cmd __last_cmd)) _last_cmd)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:wall
   (&optional __wall)
   (if __wall (setq _wall __wall)) _wall)
  (:ceiling
   (&optional __ceiling)
   (if __ceiling (setq _ceiling __ceiling)) _ceiling)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:position_robot
   (&optional __position_robot)
   (if __position_robot (setq _position_robot __position_robot)) _position_robot)
  (:type_environment
   (&optional __type_environment)
   (if __type_environment (setq _type_environment __type_environment)) _type_environment)
  (:accessibility
   (&optional __accessibility)
   (if __accessibility (setq _accessibility __accessibility)) _accessibility)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _last_cmd
    4 (length _last_cmd)
    ;; string[] _floor
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _floor)) 4
    ;; string[] _wall
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _wall)) 4
    ;; string[] _ceiling
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _ceiling)) 4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; string _position_robot
    4 (length _position_robot)
    ;; string _type_environment
    4 (length _type_environment)
    ;; string[] _accessibility
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _accessibility)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _last_cmd
       (write-long (length _last_cmd) s) (princ _last_cmd s)
     ;; string[] _floor
     (write-long (length _floor) s)
     (dolist (elem _floor)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _wall
     (write-long (length _wall) s)
     (dolist (elem _wall)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _ceiling
     (write-long (length _ceiling) s)
     (dolist (elem _ceiling)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _position_robot
       (write-long (length _position_robot) s) (princ _position_robot s)
     ;; string _type_environment
       (write-long (length _type_environment) s) (princ _type_environment s)
     ;; string[] _accessibility
     (write-long (length _accessibility) s)
     (dolist (elem _accessibility)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _last_cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _floor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _floor (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _floor i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _wall
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wall (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _wall i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _ceiling
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ceiling (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _ceiling i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _position_robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type_environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _accessibility
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accessibility (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _accessibility i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get robot_navigation::Map :md5sum-) "a7041233ff5b385e9991be074cb29ad2")
(setf (get robot_navigation::Map :datatype-) "robot_navigation/Map")
(setf (get robot_navigation::Map :definition-)
      "time stamp
string frame_id
string last_cmd
string[] floor
string[] wall
string[] ceiling
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
string position_robot
string type_environment
string[] accessibility

")



(provide :robot_navigation/Map "a7041233ff5b385e9991be074cb29ad2")


