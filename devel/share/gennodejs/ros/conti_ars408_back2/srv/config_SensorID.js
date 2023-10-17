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

class config_SensorIDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensorID = null;
    }
    else {
      if (initObj.hasOwnProperty('sensorID')) {
        this.sensorID = initObj.sensorID
      }
      else {
        this.sensorID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_SensorIDRequest
    // Serialize message field [sensorID]
    bufferOffset = _serializer.uint8(obj.sensorID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_SensorIDRequest
    let len;
    let data = new config_SensorIDRequest(null);
    // Deserialize message field [sensorID]
    data.sensorID = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ars408_back2/config_SensorIDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8840ca3a2554fac83ff179bcc0342e2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sensor ID 0 – 7
    
    uint8 sensorID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new config_SensorIDRequest(null);
    if (msg.sensorID !== undefined) {
      resolved.sensorID = msg.sensorID;
    }
    else {
      resolved.sensorID = 0
    }

    return resolved;
    }
};

class config_SensorIDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_SensorIDResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_SensorIDResponse
    let len;
    let data = new config_SensorIDResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ars408_back2/config_SensorIDResponse';
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
    const resolved = new config_SensorIDResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: config_SensorIDRequest,
  Response: config_SensorIDResponse,
  md5sum() { return '8840ca3a2554fac83ff179bcc0342e2e'; },
  datatype() { return 'conti_ars408_back2/config_SensorID'; }
};
