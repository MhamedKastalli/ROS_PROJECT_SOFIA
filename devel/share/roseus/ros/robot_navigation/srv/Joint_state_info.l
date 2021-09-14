;; Auto-generated. Do not edit!


(when (boundp 'robot_navigation::Joint_state_info)
  (if (not (find-package "ROBOT_NAVIGATION"))
    (make-package "ROBOT_NAVIGATION"))
  (shadow 'Joint_state_info (find-package "ROBOT_NAVIGATION")))
(unless (find-package "ROBOT_NAVIGATION::JOINT_STATE_INFO")
  (make-package "ROBOT_NAVIGATION::JOINT_STATE_INFO"))
(unless (find-package "ROBOT_NAVIGATION::JOINT_STATE_INFOREQUEST")
  (make-package "ROBOT_NAVIGATION::JOINT_STATE_INFOREQUEST"))
(unless (find-package "ROBOT_NAVIGATION::JOINT_STATE_INFORESPONSE")
  (make-package "ROBOT_NAVIGATION::JOINT_STATE_INFORESPONSE"))

(in-package "ROS")





(defclass robot_navigation::Joint_state_infoRequest
  :super ros::object
  :slots ())

(defmethod robot_navigation::Joint_state_infoRequest
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

(defclass robot_navigation::Joint_state_infoResponse
  :super ros::object
  :slots (_resp_data ))

(defmethod robot_navigation::Joint_state_infoResponse
  (:init
   (&key
    ((:resp_data __resp_data) 0.0)
    )
   (send-super :init)
   (setq _resp_data (float __resp_data))
   self)
  (:resp_data
   (&optional __resp_data)
   (if __resp_data (setq _resp_data __resp_data)) _resp_data)
  (:serialization-length
   ()
   (+
    ;; float64 _resp_data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _resp_data
       (sys::poke _resp_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _resp_data
     (setq _resp_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robot_navigation::Joint_state_info
  :super ros::object
  :slots ())

(setf (get robot_navigation::Joint_state_info :md5sum-) "741558e2f9de9b48acbf05de738eda9c")
(setf (get robot_navigation::Joint_state_info :datatype-) "robot_navigation/Joint_state_info")
(setf (get robot_navigation::Joint_state_info :request) robot_navigation::Joint_state_infoRequest)
(setf (get robot_navigation::Joint_state_info :response) robot_navigation::Joint_state_infoResponse)

(defmethod robot_navigation::Joint_state_infoRequest
  (:response () (instance robot_navigation::Joint_state_infoResponse :init)))

(setf (get robot_navigation::Joint_state_infoRequest :md5sum-) "741558e2f9de9b48acbf05de738eda9c")
(setf (get robot_navigation::Joint_state_infoRequest :datatype-) "robot_navigation/Joint_state_infoRequest")
(setf (get robot_navigation::Joint_state_infoRequest :definition-)
      "
---
float64 resp_data

")

(setf (get robot_navigation::Joint_state_infoResponse :md5sum-) "741558e2f9de9b48acbf05de738eda9c")
(setf (get robot_navigation::Joint_state_infoResponse :datatype-) "robot_navigation/Joint_state_infoResponse")
(setf (get robot_navigation::Joint_state_infoResponse :definition-)
      "
---
float64 resp_data

")



(provide :robot_navigation/Joint_state_info "741558e2f9de9b48acbf05de738eda9c")


