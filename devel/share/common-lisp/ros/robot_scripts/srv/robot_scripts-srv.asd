
(cl:in-package :asdf)

(defsystem "robot_scripts-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LidarTurn" :depends-on ("_package_LidarTurn"))
    (:file "_package_LidarTurn" :depends-on ("_package"))
    (:file "lidar_scan" :depends-on ("_package_lidar_scan"))
    (:file "_package_lidar_scan" :depends-on ("_package"))
  ))