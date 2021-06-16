;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::jointAnglePose)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'jointAnglePose (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::JOINTANGLEPOSE")
  (make-package "ARM_LIB::JOINTANGLEPOSE"))

(in-package "ROS")
;;//! \htmlinclude jointAnglePose.msg.html


(defclass arm_lib::jointAnglePose
  :super ros::object
  :slots (_joint1 _joint2 _joint3 _joint4 _actuator_x _actuator_y _actuator_z ))

(defmethod arm_lib::jointAnglePose
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    ((:actuator_x __actuator_x) 0.0)
    ((:actuator_y __actuator_y) 0.0)
    ((:actuator_z __actuator_z) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   (setq _actuator_x (float __actuator_x))
   (setq _actuator_y (float __actuator_y))
   (setq _actuator_z (float __actuator_z))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:joint3
   (&optional __joint3)
   (if __joint3 (setq _joint3 __joint3)) _joint3)
  (:joint4
   (&optional __joint4)
   (if __joint4 (setq _joint4 __joint4)) _joint4)
  (:actuator_x
   (&optional __actuator_x)
   (if __actuator_x (setq _actuator_x __actuator_x)) _actuator_x)
  (:actuator_y
   (&optional __actuator_y)
   (if __actuator_y (setq _actuator_y __actuator_y)) _actuator_y)
  (:actuator_z
   (&optional __actuator_z)
   (if __actuator_z (setq _actuator_z __actuator_z)) _actuator_z)
  (:serialization-length
   ()
   (+
    ;; float32 _joint1
    4
    ;; float32 _joint2
    4
    ;; float32 _joint3
    4
    ;; float32 _joint4
    4
    ;; float32 _actuator_x
    4
    ;; float32 _actuator_y
    4
    ;; float32 _actuator_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint3
       (sys::poke _joint3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint4
       (sys::poke _joint4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _actuator_x
       (sys::poke _actuator_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _actuator_y
       (sys::poke _actuator_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _actuator_z
       (sys::poke _actuator_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint1
     (setq _joint1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint2
     (setq _joint2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint3
     (setq _joint3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint4
     (setq _joint4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _actuator_x
     (setq _actuator_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _actuator_y
     (setq _actuator_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _actuator_z
     (setq _actuator_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_lib::jointAnglePose :md5sum-) "839a73ecb0c0b015d4753a5736f4134c")
(setf (get arm_lib::jointAnglePose :datatype-) "arm_lib/jointAnglePose")
(setf (get arm_lib::jointAnglePose :definition-)
      "float32 joint1
float32 joint2
float32 joint3
float32 joint4
float32 actuator_x
float32 actuator_y
float32 actuator_z

")



(provide :arm_lib/jointAnglePose "839a73ecb0c0b015d4753a5736f4134c")


