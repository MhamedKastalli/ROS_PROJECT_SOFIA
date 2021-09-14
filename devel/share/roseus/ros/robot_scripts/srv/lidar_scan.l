;; Auto-generated. Do not edit!


(when (boundp 'robot_scripts::lidar_scan)
  (if (not (find-package "ROBOT_SCRIPTS"))
    (make-package "ROBOT_SCRIPTS"))
  (shadow 'lidar_scan (find-package "ROBOT_SCRIPTS")))
(unless (find-package "ROBOT_SCRIPTS::LIDAR_SCAN")
  (make-package "ROBOT_SCRIPTS::LIDAR_SCAN"))
(unless (find-package "ROBOT_SCRIPTS::LIDAR_SCANREQUEST")
  (make-package "ROBOT_SCRIPTS::LIDAR_SCANREQUEST"))
(unless (find-package "ROBOT_SCRIPTS::LIDAR_SCANRESPONSE")
  (make-package "ROBOT_SCRIPTS::LIDAR_SCANRESPONSE"))

(in-package "ROS")





(defclass robot_scripts::lidar_scanRequest
  :super ros::object
  :slots ())

(defmethod robot_scripts::lidar_scanRequest
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

(defclass robot_scripts::lidar_scanResponse
  :super ros::object
  :slots (_done ))

(defmethod robot_scripts::lidar_scanResponse
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

(defclass robot_scripts::lidar_scan
  :super ros::object
  :slots ())

(setf (get robot_scripts::lidar_scan :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get robot_scripts::lidar_scan :datatype-) "robot_scripts/lidar_scan")
(setf (get robot_scripts::lidar_scan :request) robot_scripts::lidar_scanRequest)
(setf (get robot_scripts::lidar_scan :response) robot_scripts::lidar_scanResponse)

(defmethod robot_scripts::lidar_scanRequest
  (:response () (instance robot_scripts::lidar_scanResponse :init)))

(setf (get robot_scripts::lidar_scanRequest :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get robot_scripts::lidar_scanRequest :datatype-) "robot_scripts/lidar_scanRequest")
(setf (get robot_scripts::lidar_scanRequest :definition-)
      "
---
bool done

")

(setf (get robot_scripts::lidar_scanResponse :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get robot_scripts::lidar_scanResponse :datatype-) "robot_scripts/lidar_scanResponse")
(setf (get robot_scripts::lidar_scanResponse :definition-)
      "
---
bool done

")



(provide :robot_scripts/lidar_scan "89bb254424e4cffedbf494e7b0ddbfea")


