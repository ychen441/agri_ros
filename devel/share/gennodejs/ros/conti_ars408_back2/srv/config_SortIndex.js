// Auto-generated. Do not edit!

// (in-package conti_ars408_back2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class config_SortIndexRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sort_index = null;
    }
    else {
      if (initObj.hasOwnProperty('sort_index')) {
        this.sort_index = initObj.sort_index
      }
      else {
        this.sort_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_SortIndexRequest
    // Serialize message field [sort_index]
    bufferOffset = _serializer.uint8(obj.sort_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_SortIndexRequest
    let len;
    let data = new config_SortIndexRequest(null);
    // Deserialize message field [sort_index]
    data.sort_index = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ars408_back2/config_SortIndexRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93fb6a7e64dbd2a0708217b8ad8f0eb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Selects the sorting index for the object list (ignored for
    # clusters as they are always sorted by range) 
    
    # 0x0: no sorting
    # 0x1: sorted by range
    # 0x2: sorted by RCS 
    
    uint8 sort_index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new config_SortIndexRequest(null);
    if (msg.sort_index !== undefined) {
      resolved.sort_index = msg.sort_index;
    }
    else {
      resolved.sort_index = 0
    }

    return resolved;
    }
};

class config_SortIndexResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_SortIndexResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_SortIndexResponse
    let len;
    let data = new config_SortIndexResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ars408_back2/config_SortIndexResponse';
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
    const resolved = new config_SortIndexResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: config_SortIndexRequest,
  Response: config_SortIndexResponse,
  md5sum() { return '93fb6a7e64dbd2a0708217b8ad8f0eb8'; },
  datatype() { return 'conti_ars408_back2/config_SortIndex'; }
};
