;; Auto-generated. Do not edit!


(when (boundp 'robot_navigation::environment_process)
  (if (not (find-package "ROBOT_NAVIGATION"))
    (make-package "ROBOT_NAVIGATION"))
  (shadow 'environment_process (find-package "ROBOT_NAVIGATION")))
(unless (find-package "ROBOT_NAVIGATION::ENVIRONMENT_PROCESS")
  (make-package "ROBOT_NAVIGATION::ENVIRONMENT_PROCESS"))
(unless (find-package "ROBOT_NAVIGATION::ENVIRONMENT_PROCESSREQUEST")
  (make-package "ROBOT_NAVIGATION::ENVIRONMENT_PROCESSREQUEST"))
(unless (find-package "ROBOT_NAVIGATION::ENVIRONMENT_PROCESSRESPONSE")
  (make-package "ROBOT_NAVIGATION::ENVIRONMENT_PROCESSRESPONSE"))

(in-package "ROS")





(defclass robot_navigation::environment_processRequest
  :super ros::object
  :slots ())

(defmethod robot_navigation::environment_processRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_navigation::environment_processResponse
  :super ros::object
  :slots (_x _y _z _roll _pitch _yaw _floor _wall _ceiling _accessibility ))

(defmethod robot_navigation::environment_processResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:floor __floor) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:wall __wall) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:ceiling __ceiling) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:accessibility __accessibility) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _floor __floor)
   (setq _wall __wall)
   (setq _ceiling __ceiling)
   (setq _accessibility __accessibility)
   self)
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
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:wall
   (&optional __wall)
   (if __wall (setq _wall __wall)) _wall)
  (:ceiling
   (&optional __ceiling)
   (if __ceiling (setq _ceiling __ceiling)) _ceiling)
  (:accessibility
   (&optional __accessibility)
   (if __accessibility (setq _accessibility __accessibility)) _accessibility)
  (:serialization-length
   ()
   (+
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
    ;; string[] _floor
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _floor)) 4
    ;; string[] _wall
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _wall)) 4
    ;; string[] _ceiling
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _ceiling)) 4
    ;; string[] _accessibility
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _accessibility)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; string[] _accessibility
     (write-long (length _accessibility) s)
     (dolist (elem _accessibility)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(defclass robot_navigation::environment_process
  :super ros::object
  :slots ())

(setf (get robot_navigation::environment_process :md5sum-) "057db96ed4fd37f01b787776b6ce3971")
(setf (get robot_navigation::environment_process :datatype-) "robot_navigation/environment_process")
(setf (get robot_navigation::environment_process :request) robot_navigation::environment_processRequest)
(setf (get robot_navigation::environment_process :response) robot_navigation::environment_processResponse)

(defmethod robot_navigation::environment_processRequest
  (:response () (instance robot_navigation::environment_processResponse :init)))

(setf (get robot_navigation::environment_processRequest :md5sum-) "057db96ed4fd37f01b787776b6ce3971")
(setf (get robot_navigation::environment_processRequest :datatype-) "robot_navigation/environment_processRequest")
(setf (get robot_navigation::environment_processRequest :definition-)
      "---
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
string[] floor
string[] wall
string[] ceiling
string[] accessibility

")

(setf (get robot_navigation::environment_processResponse :md5sum-) "057db96ed4fd37f01b787776b6ce3971")
(setf (get robot_navigation::environment_processResponse :datatype-) "robot_navigation/environment_processResponse")
(setf (get robot_navigation::environment_processResponse :definition-)
      "---
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
string[] floor
string[] wall
string[] ceiling
string[] accessibility

")



(provide :robot_navigation/environment_process "057db96ed4fd37f01b787776b6ce3971")


