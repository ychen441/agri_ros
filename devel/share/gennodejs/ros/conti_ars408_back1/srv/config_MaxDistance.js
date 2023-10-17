// Auto-generated. Do not edit!

// (in-package conti_ars408_back1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class config_MaxDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('max_distance')) {
        this.max_distance = initObj.max_distance
      }
      else {
        this.max_distance = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_MaxDistanceRequest
    // Serialize message field [max_distance]
    bufferOffset = _serializer.uint8(obj.max_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_MaxDistanceRequest
    let len;
    let data = new config_MaxDistanceRequest(null);
    // Deserialize message field [max_distance]
    data.max_distance = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ars408_back1/config_MaxDistanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '721f4b602fafb1f59d20d474bb2d42da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Maximum distance of far scan (near scan maximum
    # distance is set proportionally to half of the far scan).
    # The maximum distance will also change the range
    # resolution proportionally.
    # ARS408:
    # Standard Range: 96 – 260 m
    # Extended Range: 96 – 1200 m 
    
    uint8 max_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new config_MaxDistanceRequest(null);
    if (msg.max_distance !== undefined) {
      resolved.max_distance = msg.max_distance;
    }
    else {
      resolved.max_distance = 0
    }

    return resolved;
    }
};

class config_MaxDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_MaxDistanceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_MaxDistanceResponse
    let len;
    let data = new config_MaxDistanceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ars408_back1/config_MaxDistanceResponse';
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
    const resolved = new config_MaxDistanceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: config_MaxDistanceRequest,
  Response: config_MaxDistanceResponse,
  md5sum() { return '721f4b602fafb1f59d20d474bb2d42da'; },
  datatype() { return 'conti_ars408_back1/config_MaxDistance'; }
};
