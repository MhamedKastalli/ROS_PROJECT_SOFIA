
(cl:in-package :asdf)

(defsystem "robot_navigation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Cmd_vel_pub" :depends-on ("_package_Cmd_vel_pub"))
    (:file "_package_Cmd_vel_pub" :depends-on ("_package"))
    (:file "Joint_state_info" :depends-on ("_package_Joint_state_info"))
    (:file "_package_Joint_state_info" :depends-on ("_package"))
    (:file "cmd_vel_pub" :depends-on ("_package_cmd_vel_pub"))
    (:file "_package_cmd_vel_pub" :depends-on ("_package"))
    (:file "environment_process" :depends-on ("_package_environment_process"))
    (:file "_package_environment_process" :depends-on ("_package"))
  ))