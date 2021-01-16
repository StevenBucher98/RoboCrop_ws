// Auto-generated. Do not edit!

// (in-package cartesian_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class test_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type test_srvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type test_srvRequest
    let len;
    let data = new test_srvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartesian_control/test_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new test_srvRequest(null);
    return resolved;
    }
};

class test_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desc = null;
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('desc')) {
        this.desc = initObj.desc
      }
      else {
        this.desc = '';
      }
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type test_srvResponse
    // Serialize message field [desc]
    bufferOffset = _serializer.string(obj.desc, buffer, bufferOffset);
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type test_srvResponse
    let len;
    let data = new test_srvResponse(null);
    // Deserialize message field [desc]
    data.desc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.desc.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartesian_control/test_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a7ab05b8c54168563cc1cb286c04fa8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string desc
    bool response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new test_srvResponse(null);
    if (msg.desc !== undefined) {
      resolved.desc = msg.desc;
    }
    else {
      resolved.desc = ''
    }

    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = false
    }

    return resolved;
    }
};

module.exports = {
  Request: test_srvRequest,
  Response: test_srvResponse,
  md5sum() { return '7a7ab05b8c54168563cc1cb286c04fa8'; },
  datatype() { return 'cartesian_control/test_srv'; }
};
