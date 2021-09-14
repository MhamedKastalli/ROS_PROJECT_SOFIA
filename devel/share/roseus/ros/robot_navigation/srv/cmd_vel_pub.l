;; Auto-generated. Do not edit!


(when (boundp 'robot_navigation::cmd_vel_pub)
  (if (not (find-package "ROBOT_NAVIGATION"))
    (make-package "ROBOT_NAVIGATION"))
  (shadow 'cmd_vel_pub (find-package "ROBOT_NAVIGATION")))
(unless (find-package "ROBOT_NAVIGATION::CMD_VEL_PUB")
  (make-package "ROBOT_NAVIGATION::CMD_VEL_PUB"))
(unless (find-package "ROBOT_NAVIGATION::CMD_VEL_PUBREQUEST")
  (make-package "ROBOT_NAVIGATION::CMD_VEL_PUBREQUEST"))
(unless (find-package "ROBOT_NAVIGATION::CMD_VEL_PUBRESPONSE")
  (make-package "ROBOT_NAVIGATION::CMD_VEL_PUBRESPONSE"))

(in-package "ROS")





(defclass robot_navigation::cmd_vel_pubRequest
  :super ros::object
  :slots (_x _z ))

(defmethod robot_navigation::cmd_vel_pubRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robot_navigation::cmd_vel_pubResponse
  :super ros::object
  :slots (_done ))

(defmethod robot_navigation::cmd_vel_pubResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_navigation::cmd_vel_pub
  :super ros::object
  :slots ())

(setf (get robot_navigation::cmd_vel_pub :md5sum-) "5e16a6b946eb627ffe9d5c82c7296a8e")
(setf (get robot_navigation::cmd_vel_pub :datatype-) "robot_navigation/cmd_vel_pub")
(setf (get robot_navigation::cmd_vel_pub :request) robot_navigation::cmd_vel_pubRequest)
(setf (get robot_navigation::cmd_vel_pub :response) robot_navigation::cmd_vel_pubResponse)

(defmethod robot_navigation::cmd_vel_pubRequest
  (:response () (instance robot_navigation::cmd_vel_pubResponse :init)))

(setf (get robot_navigation::cmd_vel_pubRequest :md5sum-) "5e16a6b946eb627ffe9d5c82c7296a8e")
(setf (get robot_navigation::cmd_vel_pubRequest :datatype-) "robot_navigation/cmd_vel_pubRequest")
(setf (get robot_navigation::cmd_vel_pubRequest :definition-)
      "float64 x
float64 z
---
bool done

")

(setf (get robot_navigation::cmd_vel_pubResponse :md5sum-) "5e16a6b946eb627ffe9d5c82c7296a8e")
(setf (get robot_navigation::cmd_vel_pubResponse :datatype-) "robot_navigation/cmd_vel_pubResponse")
(setf (get robot_navigation::cmd_vel_pubResponse :definition-)
      "float64 x
float64 z
---
bool done

")



(provide :robot_navigation/cmd_vel_pub "5e16a6b946eb627ffe9d5c82c7296a8e")


