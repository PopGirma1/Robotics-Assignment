; Auto-generated. Do not edit!


(cl:in-package arm_lib-srv)


;//! \htmlinclude forwardKinematics-request.msg.html

(cl:defclass <forwardKinematics-request> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass forwardKinematics-request (<forwardKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <forwardKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'forwardKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<forwardKinematics-request> is deprecated: use arm_lib-srv:forwardKinematics-request instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <forwardKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:joint_angles-val is deprecated.  Use arm_lib-srv:joint_angles instead.")
  (joint_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <forwardKinematics-request>) ostream)
  "Serializes a message object of type '<forwardKinematics-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <forwardKinematics-request>) istream)
  "Deserializes a message object of type '<forwardKinematics-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<forwardKinematics-request>)))
  "Returns string type for a service object of type '<forwardKinematics-request>"
  "arm_lib/forwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'forwardKinematics-request)))
  "Returns string type for a service object of type 'forwardKinematics-request"
  "arm_lib/forwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<forwardKinematics-request>)))
  "Returns md5sum for a message object of type '<forwardKinematics-request>"
  "198c0d7b1e734c5386527504b3803cdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'forwardKinematics-request)))
  "Returns md5sum for a message object of type 'forwardKinematics-request"
  "198c0d7b1e734c5386527504b3803cdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<forwardKinematics-request>)))
  "Returns full string definition for message of type '<forwardKinematics-request>"
  (cl:format cl:nil "float32[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'forwardKinematics-request)))
  "Returns full string definition for message of type 'forwardKinematics-request"
  (cl:format cl:nil "float32[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <forwardKinematics-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <forwardKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'forwardKinematics-request
    (cl:cons ':joint_angles (joint_angles msg))
))
;//! \htmlinclude forwardKinematics-response.msg.html

(cl:defclass <forwardKinematics-response> (roslisp-msg-protocol:ros-message)
  ((actuator_pose
    :reader actuator_pose
    :initarg :actuator_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass forwardKinematics-response (<forwardKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <forwardKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'forwardKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<forwardKinematics-response> is deprecated: use arm_lib-srv:forwardKinematics-response instead.")))

(cl:ensure-generic-function 'actuator_pose-val :lambda-list '(m))
(cl:defmethod actuator_pose-val ((m <forwardKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:actuator_pose-val is deprecated.  Use arm_lib-srv:actuator_pose instead.")
  (actuator_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <forwardKinematics-response>) ostream)
  "Serializes a message object of type '<forwardKinematics-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuator_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'actuator_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <forwardKinematics-response>) istream)
  "Deserializes a message object of type '<forwardKinematics-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuator_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuator_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<forwardKinematics-response>)))
  "Returns string type for a service object of type '<forwardKinematics-response>"
  "arm_lib/forwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'forwardKinematics-response)))
  "Returns string type for a service object of type 'forwardKinematics-response"
  "arm_lib/forwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<forwardKinematics-response>)))
  "Returns md5sum for a message object of type '<forwardKinematics-response>"
  "198c0d7b1e734c5386527504b3803cdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'forwardKinematics-response)))
  "Returns md5sum for a message object of type 'forwardKinematics-response"
  "198c0d7b1e734c5386527504b3803cdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<forwardKinematics-response>)))
  "Returns full string definition for message of type '<forwardKinematics-response>"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'forwardKinematics-response)))
  "Returns full string definition for message of type 'forwardKinematics-response"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <forwardKinematics-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <forwardKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'forwardKinematics-response
    (cl:cons ':actuator_pose (actuator_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'forwardKinematics)))
  'forwardKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'forwardKinematics)))
  'forwardKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'forwardKinematics)))
  "Returns string type for a service object of type '<forwardKinematics>"
  "arm_lib/forwardKinematics")