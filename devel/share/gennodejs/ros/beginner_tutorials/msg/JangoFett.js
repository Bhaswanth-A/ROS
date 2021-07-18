// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JangoFett {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.side = null;
      this.shape = null;
    }
    else {
      if (initObj.hasOwnProperty('side')) {
        this.side = initObj.side
      }
      else {
        this.side = 0;
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JangoFett
    // Serialize message field [side]
    bufferOffset = _serializer.int32(obj.side, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _serializer.string(obj.shape, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JangoFett
    let len;
    let data = new JangoFett(null);
    // Deserialize message field [side]
    data.side = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shape.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/JangoFett';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bce1314c2e7b82b7bed59a940875e4a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 side
    string shape
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JangoFett(null);
    if (msg.side !== undefined) {
      resolved.side = msg.side;
    }
    else {
      resolved.side = 0
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = ''
    }

    return resolved;
    }
};

module.exports = JangoFett;
