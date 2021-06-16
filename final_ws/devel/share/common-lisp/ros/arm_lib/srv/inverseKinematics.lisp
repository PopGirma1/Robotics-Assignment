; Auto-generated. Do not edit!


(cl:in-package arm_lib-srv)


;//! \htmlinclude inverseKinematics-request.msg.html

(cl:defclass <inverseKinematics-request> (roslisp-msg-protocol:ros-message)
  ((actuator_pose
    :reader actuator_pose
    :initarg :actuator_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass inverseKinematics-request (<inverseKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inverseKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inverseKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<inverseKinematics-request> is deprecated: use arm_lib-srv:inverseKinematics-request instead.")))

(cl:ensure-generic-function 'actuator_pose-val :lambda-list '(m))
(cl:defmethod actuator_pose-val ((m <inverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:actuator_pose-val is deprecated.  Use arm_lib-srv:actuator_pose instead.")
  (actuator_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inverseKinematics-request>) ostream)
  "Serializes a message object of type '<inverseKinematics-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inverseKinematics-request>) istream)
  "Deserializes a message object of type '<inverseKinematics-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inverseKinematics-request>)))
  "Returns string type for a service object of type '<inverseKinematics-request>"
  "arm_lib/inverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inverseKinematics-request)))
  "Returns string type for a service object of type 'inverseKinematics-request"
  "arm_lib/inverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inverseKinematics-request>)))
  "Returns md5sum for a message object of type '<inverseKinematics-request>"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inverseKinematics-request)))
  "Returns md5sum for a message object of type 'inverseKinematics-request"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inverseKinematics-request>)))
  "Returns full string definition for message of type '<inverseKinematics-request>"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inverseKinematics-request)))
  "Returns full string definition for message of type 'inverseKinematics-request"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inverseKinematics-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inverseKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'inverseKinematics-request
    (cl:cons ':actuator_pose (actuator_pose msg))
))
;//! \htmlinclude inverseKinematics-response.msg.html

(cl:defclass <inverseKinematics-response> (roslisp-msg-protocol:ros-message)
  ((new_angles
    :reader new_angles
    :initarg :new_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass inverseKinematics-response (<inverseKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inverseKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inverseKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<inverseKinematics-response> is deprecated: use arm_lib-srv:inverseKinematics-response instead.")))

(cl:ensure-generic-function 'new_angles-val :lambda-list '(m))
(cl:defmethod new_angles-val ((m <inverseKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:new_angles-val is deprecated.  Use arm_lib-srv:new_angles instead.")
  (new_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inverseKinematics-response>) ostream)
  "Serializes a message object of type '<inverseKinematics-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'new_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inverseKinematics-response>) istream)
  "Deserializes a message object of type '<inverseKinematics-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inverseKinematics-response>)))
  "Returns string type for a service object of type '<inverseKinematics-response>"
  "arm_lib/inverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inverseKinematics-response)))
  "Returns string type for a service object of type 'inverseKinematics-response"
  "arm_lib/inverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inverseKinematics-response>)))
  "Returns md5sum for a message object of type '<inverseKinematics-response>"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inverseKinematics-response)))
  "Returns md5sum for a message object of type 'inverseKinematics-response"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inverseKinematics-response>)))
  "Returns full string definition for message of type '<inverseKinematics-response>"
  (cl:format cl:nil "float32[] new_angles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inverseKinematics-response)))
  "Returns full string definition for message of type 'inverseKinematics-response"
  (cl:format cl:nil "float32[] new_angles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inverseKinematics-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inverseKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'inverseKinematics-response
    (cl:cons ':new_angles (new_angles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'inverseKinematics)))
  'inverseKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'inverseKinematics)))
  'inverseKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inverseKinematics)))
  "Returns string type for a service object of type '<inverseKinematics>"
  "arm_lib/inverseKinematics")