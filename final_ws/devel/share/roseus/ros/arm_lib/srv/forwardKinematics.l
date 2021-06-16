;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::forwardKinematics)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'forwardKinematics (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::FORWARDKINEMATICS")
  (make-package "ARM_LIB::FORWARDKINEMATICS"))
(unless (find-package "ARM_LIB::FORWARDKINEMATICSREQUEST")
  (make-package "ARM_LIB::FORWARDKINEMATICSREQUEST"))
(unless (find-package "ARM_LIB::FORWARDKINEMATICSRESPONSE")
  (make-package "ARM_LIB::FORWARDKINEMATICSRESPONSE"))

(in-package "ROS")





(defclass arm_lib::forwardKinematicsRequest
  :super ros::object
  :slots (_joint_angles ))

(defmethod arm_lib::forwardKinematicsRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint_angles
    (* 4    (length _joint_angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_lib::forwardKinematicsResponse
  :super ros::object
  :slots (_actuator_pose ))

(defmethod arm_lib::forwardKinematicsResponse
  (:init
   (&key
    ((:actuator_pose __actuator_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actuator_pose __actuator_pose)
   self)
  (:actuator_pose
   (&optional __actuator_pose)
   (if __actuator_pose (setq _actuator_pose __actuator_pose)) _actuator_pose)
  (:serialization-length
   ()
   (+
    ;; float32[] _actuator_pose
    (* 4    (length _actuator_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _actuator_pose
     (write-long (length _actuator_pose) s)
     (dotimes (i (length _actuator_pose))
       (sys::poke (elt _actuator_pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _actuator_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuator_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuator_pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_lib::forwardKinematics
  :super ros::object
  :slots ())

(setf (get arm_lib::forwardKinematics :md5sum-) "198c0d7b1e734c5386527504b3803cdd")
(setf (get arm_lib::forwardKinematics :datatype-) "arm_lib/forwardKinematics")
(setf (get arm_lib::forwardKinematics :request) arm_lib::forwardKinematicsRequest)
(setf (get arm_lib::forwardKinematics :response) arm_lib::forwardKinematicsResponse)

(defmethod arm_lib::forwardKinematicsRequest
  (:response () (instance arm_lib::forwardKinematicsResponse :init)))

(setf (get arm_lib::forwardKinematicsRequest :md5sum-) "198c0d7b1e734c5386527504b3803cdd")
(setf (get arm_lib::forwardKinematicsRequest :datatype-) "arm_lib/forwardKinematicsRequest")
(setf (get arm_lib::forwardKinematicsRequest :definition-)
      "float32[] joint_angles
---
float32[] actuator_pose

")

(setf (get arm_lib::forwardKinematicsResponse :md5sum-) "198c0d7b1e734c5386527504b3803cdd")
(setf (get arm_lib::forwardKinematicsResponse :datatype-) "arm_lib/forwardKinematicsResponse")
(setf (get arm_lib::forwardKinematicsResponse :definition-)
      "float32[] joint_angles
---
float32[] actuator_pose

")



(provide :arm_lib/forwardKinematics "198c0d7b1e734c5386527504b3803cdd")


