// Auto-generated. Do not edit!

// (in-package conti_ARS408.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class config_RadarPowerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radar_power = null;
    }
    else {
      if (initObj.hasOwnProperty('radar_power')) {
        this.radar_power = initObj.radar_power
      }
      else {
        this.radar_power = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_RadarPowerRequest
    // Serialize message field [radar_power]
    bufferOffset = _serializer.uint8(obj.radar_power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_RadarPowerRequest
    let len;
    let data = new config_RadarPowerRequest(null);
    // Deserialize message field [radar_power]
    data.radar_power = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ARS408/config_RadarPowerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1729e07afca5fdcd752c0c577b4694e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Configures the transmitted radar power (Tx
    # attenuation). The output RCS of cluster and objects
    # will be compensated for this attenuation. Reducing
    # the output power can improve detection in case of
    # close range scenarios or inside rooms.
    
    # 0x0: Standard
    # 0x1: -3dB Tx gain
    # 0x2: -6dB Tx gain
    # 0x3: -9dB Tx gain 
    
    uint8 radar_power
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new config_RadarPowerRequest(null);
    if (msg.radar_power !== undefined) {
      resolved.radar_power = msg.radar_power;
    }
    else {
      resolved.radar_power = 0
    }

    return resolved;
    }
};

class config_RadarPowerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type config_RadarPowerResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type config_RadarPowerResponse
    let len;
    let data = new config_RadarPowerResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conti_ARS408/config_RadarPowerResponse';
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
    const resolved = new config_RadarPowerResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: config_RadarPowerRequest,
  Response: config_RadarPowerResponse,
  md5sum() { return '1729e07afca5fdcd752c0c577b4694e3'; },
  datatype() { return 'conti_ARS408/config_RadarPower'; }
};
