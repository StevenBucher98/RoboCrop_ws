// Auto-generated. Do not edit!

// (in-package controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class relaycontrolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.caller = null;
      this.relay1 = null;
      this.relay2 = null;
    }
    else {
      if (initObj.hasOwnProperty('caller')) {
        this.caller = initObj.caller
      }
      else {
        this.caller = '';
      }
      if (initObj.hasOwnProperty('relay1')) {
        this.relay1 = initObj.relay1
      }
      else {
        this.relay1 = false;
      }
      if (initObj.hasOwnProperty('relay2')) {
        this.relay2 = initObj.relay2
      }
      else {
        this.relay2 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type relaycontrolRequest
    // Serialize message field [caller]
    bufferOffset = _serializer.string(obj.caller, buffer, bufferOffset);
    // Serialize message field [relay1]
    bufferOffset = _serializer.bool(obj.relay1, buffer, bufferOffset);
    // Serialize message field [relay2]
    bufferOffset = _serializer.bool(obj.relay2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type relaycontrolRequest
    let len;
    let data = new relaycontrolRequest(null);
    // Deserialize message field [caller]
    data.caller = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [relay1]
    data.relay1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [relay2]
    data.relay2 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.caller.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller/relaycontrolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab9a67d1bdf7343eecc58306f636f770';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string caller
    bool relay1
    bool relay2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new relaycontrolRequest(null);
    if (msg.caller !== undefined) {
      resolved.caller = msg.caller;
    }
    else {
      resolved.caller = ''
    }

    if (msg.relay1 !== undefined) {
      resolved.relay1 = msg.relay1;
    }
    else {
      resolved.relay1 = false
    }

    if (msg.relay2 !== undefined) {
      resolved.relay2 = msg.relay2;
    }
    else {
      resolved.relay2 = false
    }

    return resolved;
    }
};

class relaycontrolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type relaycontrolResponse
    // Serialize message field [status]
    bufferOffset = _arraySerializer.int64(obj.status, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type relaycontrolResponse
    let len;
    let data = new relaycontrolResponse(null);
    // Deserialize message field [status]
    data.status = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.status.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller/relaycontrolResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50ba80f34b3b9a7bbf9b46ad8bfb2db7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new relaycontrolResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

module.exports = {
  Request: relaycontrolRequest,
  Response: relaycontrolResponse,
  md5sum() { return '0b75350b18f9cacf15e795288eeb5a0e'; },
  datatype() { return 'controller/relaycontrol'; }
};
