;; Auto-generated. Do not edit!


(when (boundp 'robot_navigation::Pov)
  (if (not (find-package "ROBOT_NAVIGATION"))
    (make-package "ROBOT_NAVIGATION"))
  (shadow 'Pov (find-package "ROBOT_NAVIGATION")))
(unless (find-package "ROBOT_NAVIGATION::POV")
  (make-package "ROBOT_NAVIGATION::POV"))

(in-package "ROS")
;;//! \htmlinclude Pov.msg.html


(defclass robot_navigation::Pov
  :super ros::object
  :slots (_stamp _frame_id _Direction _Ceiling_height_near _Ceiling_height_mid _Ceiling_height_far _Wall_distance_near _Wall_distance_mid _Wall_distance_far _Floor_distance _Floor_slope _Floor_type _Wall_type _Ceiling_type ))

(defmethod robot_navigation::Pov
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:Direction __Direction) "")
    ((:Ceiling_height_near __Ceiling_height_near) 0.0)
    ((:Ceiling_height_mid __Ceiling_height_mid) 0.0)
    ((:Ceiling_height_far __Ceiling_height_far) 0.0)
    ((:Wall_distance_near __Wall_distance_near) 0.0)
    ((:Wall_distance_mid __Wall_distance_mid) 0.0)
    ((:Wall_distance_far __Wall_distance_far) 0.0)
    ((:Floor_distance __Floor_distance) 0.0)
    ((:Floor_slope __Floor_slope) 0.0)
    ((:Floor_type __Floor_type) "")
    ((:Wall_type __Wall_type) "")
    ((:Ceiling_type __Ceiling_type) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _Direction (string __Direction))
   (setq _Ceiling_height_near (float __Ceiling_height_near))
   (setq _Ceiling_height_mid (float __Ceiling_height_mid))
   (setq _Ceiling_height_far (float __Ceiling_height_far))
   (setq _Wall_distance_near (float __Wall_distance_near))
   (setq _Wall_distance_mid (float __Wall_distance_mid))
   (setq _Wall_distance_far (float __Wall_distance_far))
   (setq _Floor_distance (float __Floor_distance))
   (setq _Floor_slope (float __Floor_slope))
   (setq _Floor_type (string __Floor_type))
   (setq _Wall_type (string __Wall_type))
   (setq _Ceiling_type (string __Ceiling_type))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:Direction
   (&optional __Direction)
   (if __Direction (setq _Direction __Direction)) _Direction)
  (:Ceiling_height_near
   (&optional __Ceiling_height_near)
   (if __Ceiling_height_near (setq _Ceiling_height_near __Ceiling_height_near)) _Ceiling_height_near)
  (:Ceiling_height_mid
   (&optional __Ceiling_height_mid)
   (if __Ceiling_height_mid (setq _Ceiling_height_mid __Ceiling_height_mid)) _Ceiling_height_mid)
  (:Ceiling_height_far
   (&optional __Ceiling_height_far)
   (if __Ceiling_height_far (setq _Ceiling_height_far __Ceiling_height_far)) _Ceiling_height_far)
  (:Wall_distance_near
   (&optional __Wall_distance_near)
   (if __Wall_distance_near (setq _Wall_distance_near __Wall_distance_near)) _Wall_distance_near)
  (:Wall_distance_mid
   (&optional __Wall_distance_mid)
   (if __Wall_distance_mid (setq _Wall_distance_mid __Wall_distance_mid)) _Wall_distance_mid)
  (:Wall_distance_far
   (&optional __Wall_distance_far)
   (if __Wall_distance_far (setq _Wall_distance_far __Wall_distance_far)) _Wall_distance_far)
  (:Floor_distance
   (&optional __Floor_distance)
   (if __Floor_distance (setq _Floor_distance __Floor_distance)) _Floor_distance)
  (:Floor_slope
   (&optional __Floor_slope)
   (if __Floor_slope (setq _Floor_slope __Floor_slope)) _Floor_slope)
  (:Floor_type
   (&optional __Floor_type)
   (if __Floor_type (setq _Floor_type __Floor_type)) _Floor_type)
  (:Wall_type
   (&optional __Wall_type)
   (if __Wall_type (setq _Wall_type __Wall_type)) _Wall_type)
  (:Ceiling_type
   (&optional __Ceiling_type)
   (if __Ceiling_type (setq _Ceiling_type __Ceiling_type)) _Ceiling_type)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _Direction
    4 (length _Direction)
    ;; float64 _Ceiling_height_near
    8
    ;; float64 _Ceiling_height_mid
    8
    ;; float64 _Ceiling_height_far
    8
    ;; float64 _Wall_distance_near
    8
    ;; float64 _Wall_distance_mid
    8
    ;; float64 _Wall_distance_far
    8
    ;; float64 _Floor_distance
    8
    ;; float64 _Floor_slope
    8
    ;; string _Floor_type
    4 (length _Floor_type)
    ;; string _Wall_type
    4 (length _Wall_type)
    ;; string _Ceiling_type
    4 (length _Ceiling_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _Direction
       (write-long (length _Direction) s) (princ _Direction s)
     ;; float64 _Ceiling_height_near
       (sys::poke _Ceiling_height_near (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Ceiling_height_mid
       (sys::poke _Ceiling_height_mid (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Ceiling_height_far
       (sys::poke _Ceiling_height_far (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Wall_distance_near
       (sys::poke _Wall_distance_near (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Wall_distance_mid
       (sys::poke _Wall_distance_mid (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Wall_distance_far
       (sys::poke _Wall_distance_far (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Floor_distance
       (sys::poke _Floor_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Floor_slope
       (sys::poke _Floor_slope (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _Floor_type
       (write-long (length _Floor_type) s) (princ _Floor_type s)
     ;; string _Wall_type
       (write-long (length _Wall_type) s) (princ _Wall_type s)
     ;; string _Ceiling_type
       (write-long (length _Ceiling_type) s) (princ _Ceiling_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _Ceiling_height_near
     (setq _Ceiling_height_near (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Ceiling_height_mid
     (setq _Ceiling_height_mid (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Ceiling_height_far
     (setq _Ceiling_height_far (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Wall_distance_near
     (setq _Wall_distance_near (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Wall_distance_mid
     (setq _Wall_distance_mid (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Wall_distance_far
     (setq _Wall_distance_far (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Floor_distance
     (setq _Floor_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Floor_slope
     (setq _Floor_slope (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _Floor_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Floor_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Wall_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Wall_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Ceiling_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Ceiling_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_navigation::Pov :md5sum-) "2b3eac4f3850f7049a58dd73defae320")
(setf (get robot_navigation::Pov :datatype-) "robot_navigation/Pov")
(setf (get robot_navigation::Pov :definition-)
      "time stamp
string frame_id
string Direction
float64 Ceiling_height_near
float64 Ceiling_height_mid
float64 Ceiling_height_far
float64 Wall_distance_near
float64 Wall_distance_mid
float64 Wall_distance_far
float64 Floor_distance
float64 Floor_slope
string Floor_type
string Wall_type
string Ceiling_type


")



(provide :robot_navigation/Pov "2b3eac4f3850f7049a58dd73defae320")


