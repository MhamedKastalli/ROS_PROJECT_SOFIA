
(cl:in-package :asdf)

(defsystem "robot_scripts-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Array_laser" :depends-on ("_package_Array_laser"))
    (:file "_package_Array_laser" :depends-on ("_package"))
    (:file "PointCloudsarray" :depends-on ("_package_PointCloudsarray"))
    (:file "_package_PointCloudsarray" :depends-on ("_package"))
  ))