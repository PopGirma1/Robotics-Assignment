// Auto-generated. Do not edit!

// (in-package arm_lib.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class jointAnglePose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint1 = null;
      this.joint2 = null;
      this.joint3 = null;
      this.joint4 = null;
      this.actuator_x = null;
      this.actuator_y = null;
      this.actuator_z = null;
    }
    else {
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = 0.0;
      }
      if (initObj.hasOwnProperty('joint3')) {
        this.joint3 = initObj.joint3
      }
      else {
        this.joint3 = 0.0;
      }
      if (initObj.hasOwnProperty('joint4')) {
        this.joint4 = initObj.joint4
      }
      else {
        this.joint4 = 0.0;
      }
      if (initObj.hasOwnProperty('actuator_x')) {
        this.actuator_x = initObj.actuator_x
      }
      else {
        this.actuator_x = 0.0;
      }
      if (initObj.hasOwnProperty('actuator_y')) {
        this.actuator_y = initObj.actuator_y
      }
      else {
        this.actuator_y = 0.0;
      }
      if (initObj.hasOwnProperty('actuator_z')) {
        this.actuator_z = initObj.actuator_z
      }
      else {
        this.actuator_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jointAnglePose
    // Serialize message field [joint1]
    bufferOffset = _serializer.float32(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = _serializer.float32(obj.joint2, buffer, bufferOffset);
    // Serialize message field [joint3]
    bufferOffset = _serializer.float32(obj.joint3, buffer, bufferOffset);
    // Serialize message field [joint4]
    bufferOffset = _serializer.float32(obj.joint4, buffer, bufferOffset);
    // Serialize message field [actuator_x]
    bufferOffset = _serializer.float32(obj.actuator_x, buffer, bufferOffset);
    // Serialize message field [actuator_y]
    bufferOffset = _serializer.float32(obj.actuator_y, buffer, bufferOffset);
    // Serialize message field [actuator_z]
    bufferOffset = _serializer.float32(obj.actuator_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jointAnglePose
    let len;
    let data = new jointAnglePose(null);
    // Deserialize message field [joint1]
    data.joint1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint3]
    data.joint3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint4]
    data.joint4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [actuator_x]
    data.actuator_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [actuator_y]
    data.actuator_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [actuator_z]
    data.actuator_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_lib/jointAnglePose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '839a73ecb0c0b015d4753a5736f4134c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 joint1
    float32 joint2
    float32 joint3
    float32 joint4
    float32 actuator_x
    float32 actuator_y
    float32 actuator_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jointAnglePose(null);
    if (msg.joint1 !== undefined) {
      resolved.joint1 = msg.joint1;
    }
    else {
      resolved.joint1 = 0.0
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = msg.joint2;
    }
    else {
      resolved.joint2 = 0.0
    }

    if (msg.joint3 !== undefined) {
      resolved.joint3 = msg.joint3;
    }
    else {
      resolved.joint3 = 0.0
    }

    if (msg.joint4 !== undefined) {
      resolved.joint4 = msg.joint4;
    }
    else {
      resolved.joint4 = 0.0
    }

    if (msg.actuator_x !== undefined) {
      resolved.actuator_x = msg.actuator_x;
    }
    else {
      resolved.actuator_x = 0.0
    }

    if (msg.actuator_y !== undefined) {
      resolved.actuator_y = msg.actuator_y;
    }
    else {
      resolved.actuator_y = 0.0
    }

    if (msg.actuator_z !== undefined) {
      resolved.actuator_z = msg.actuator_z;
    }
    else {
      resolved.actuator_z = 0.0
    }

    return resolved;
    }
};

module.exports = jointAnglePose;
