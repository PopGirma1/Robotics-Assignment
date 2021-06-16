// Auto-generated. Do not edit!

// (in-package arm_lib.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class forwardKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type forwardKinematicsRequest
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float32(obj.joint_angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type forwardKinematicsRequest
    let len;
    let data = new forwardKinematicsRequest(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint_angles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/forwardKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11501c45f507c225d25f998a0b6418cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint_angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new forwardKinematicsRequest(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    return resolved;
    }
};

class forwardKinematicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_pose')) {
        this.actuator_pose = initObj.actuator_pose
      }
      else {
        this.actuator_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type forwardKinematicsResponse
    // Serialize message field [actuator_pose]
    bufferOffset = _arraySerializer.float32(obj.actuator_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type forwardKinematicsResponse
    let len;
    let data = new forwardKinematicsResponse(null);
    // Deserialize message field [actuator_pose]
    data.actuator_pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.actuator_pose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/forwardKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '731bfe7d32e7b21fcd58c1fb43ca65e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] actuator_pose
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new forwardKinematicsResponse(null);
    if (msg.actuator_pose !== undefined) {
      resolved.actuator_pose = msg.actuator_pose;
    }
    else {
      resolved.actuator_pose = []
    }

    return resolved;
    }
};

module.exports = {
  Request: forwardKinematicsRequest,
  Response: forwardKinematicsResponse,
  md5sum() { return '198c0d7b1e734c5386527504b3803cdd'; },
  datatype() { return 'arm_lib/forwardKinematics'; }
};
