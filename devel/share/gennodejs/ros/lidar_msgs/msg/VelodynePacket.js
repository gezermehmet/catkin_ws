// Auto-generated. Do not edit!

// (in-package lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VelodynePacket {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = new std_msgs.msg.Time();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(1206).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelodynePacket
    // Serialize message field [stamp]
    bufferOffset = std_msgs.msg.Time.serialize(obj.stamp, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 1206) {
      throw new Error('Unable to serialize array field data - length must be 1206')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, 1206);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelodynePacket
    let len;
    let data = new VelodynePacket(null);
    // Deserialize message field [stamp]
    data.stamp = std_msgs.msg.Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, 1206)
    return data;
  }

  static getMessageSize(object) {
    return 1214;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_msgs/VelodynePacket';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31463a216a41d17b370dbe0e6dde888d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Raw Velodyne LIDAR packet.
    
    std_msgs/Time   stamp
    uint8[1206]     data
    
    ================================================================================
    MSG: std_msgs/Time
    time data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelodynePacket(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = std_msgs.msg.Time.Resolve(msg.stamp)
    }
    else {
      resolved.stamp = new std_msgs.msg.Time()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(1206).fill(0)
    }

    return resolved;
    }
};

module.exports = VelodynePacket;
