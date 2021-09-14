;; Auto-generated. Do not edit!


(when (boundp 'robot_scripts::LidarTurn)
  (if (not (find-package "ROBOT_SCRIPTS"))
    (make-package "ROBOT_SCRIPTS"))
  (shadow 'LidarTurn (find-package "ROBOT_SCRIPTS")))
(unless (find-package "ROBOT_SCRIPTS::LIDARTURN")
  (make-package "ROBOT_SCRIPTS::LIDARTURN"))
(unless (find-package "ROBOT_SCRIPTS::LIDARTURNREQUEST")
  (make-package "ROBOT_SCRIPTS::LIDARTURNREQUEST"))
(unless (find-package "ROBOT_SCRIPTS::LIDARTURNRESPONSE")
  (make-package "ROBOT_SCRIPTS::LIDARTURNRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_scripts::LidarTurnRequest
  :super ros::object
  :slots (_cmd ))

(defmethod robot_scripts::LidarTurnRequest
  (:init
   (&key
    ((:cmd __cmd) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _cmd __cmd)
   self)
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _cmd
    (send _cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _cmd
       (send _cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _cmd
     (send _cmd :deserialize buf ptr-) (incf ptr- (send _cmd :serialization-length))
   ;;
   self)
  )

(defclass robot_scripts::LidarTurnResponse
  :super ros::object
  :slots (_done ))

(defmethod robot_scripts::LidarTurnResponse
  (:init
   (&key
    ((:done __done) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&rest __done)
   (if (keywordp (car __done))
       (send* _done __done)
     (progn
       (if __done (setq _done (car __done)))
       _done)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _done
    (send _done :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _done
       (send _done :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _done
     (send _done :deserialize buf ptr-) (incf ptr- (send _done :serialization-length))
   ;;
   self)
  )

(defclass robot_scripts::LidarTurn
  :super ros::object
  :slots ())

(setf (get robot_scripts::LidarTurn :md5sum-) "b56007e98f35cde3af7d591f9d8a85f9")
(setf (get robot_scripts::LidarTurn :datatype-) "robot_scripts/LidarTurn")
(setf (get robot_scripts::LidarTurn :request) robot_scripts::LidarTurnRequest)
(setf (get robot_scripts::LidarTurn :response) robot_scripts::LidarTurnResponse)

(defmethod robot_scripts::LidarTurnRequest
  (:response () (instance robot_scripts::LidarTurnResponse :init)))

(setf (get robot_scripts::LidarTurnRequest :md5sum-) "b56007e98f35cde3af7d591f9d8a85f9")
(setf (get robot_scripts::LidarTurnRequest :datatype-) "robot_scripts/LidarTurnRequest")
(setf (get robot_scripts::LidarTurnRequest :definition-)
      "std_msgs/Float64 cmd

================================================================================
MSG: std_msgs/Float64
---
std_msgs/Bool done


================================================================================
MSG: std_msgs/Bool
")

(setf (get robot_scripts::LidarTurnResponse :md5sum-) "b56007e98f35cde3af7d591f9d8a85f9")
(setf (get robot_scripts::LidarTurnResponse :datatype-) "robot_scripts/LidarTurnResponse")
(setf (get robot_scripts::LidarTurnResponse :definition-)
      "std_msgs/Float64 cmd

================================================================================
MSG: std_msgs/Float64
---
std_msgs/Bool done


================================================================================
MSG: std_msgs/Bool
")



(provide :robot_scripts/LidarTurn "b56007e98f35cde3af7d591f9d8a85f9")


