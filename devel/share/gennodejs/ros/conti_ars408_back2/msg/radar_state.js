// Auto-generated. Do not edit!

// (in-package conti_ars408_back2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class radar_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ReadStatus = null;
      this.WriteStatus = null;
      this.VoltageError = null;
      this.TemporaryError = null;
      this.TemperatureError = null;
      this.Interference = null;
      this.PersistentError = null;
      this.MaxDistance = null;
      this.SensorID = null;
      this.SortIndex = null;
      this.RadarPower = null;
      this.CtrlRelay = null;
      this.OutputType = null;
      this.SendQuality = null;
      this.SendExtInfo = null;
      this.MotionRxState = null;
      this.RCSThreshold = null;
    }
    else {
      if (initObj.hasOwnProperty('ReadStatus')) {
        this.ReadStatus = initObj.ReadStatus
      }
      else {
        this.ReadStatus = false;
      }
      if (initObj.hasOwnProperty('WriteStatus')) {
        this.WriteStatus = initObj.WriteStatus
      }
      else {
        this.WriteStatus = false;
      }
      if (initObj.hasOwnProperty('VoltageError')) {
        this.VoltageError = initObj.VoltageError
      }
      else {
        this.VoltageError = false;
      }
      if (initObj.hasOwnProperty('TemporaryError')) {
        this.TemporaryError = initObj.TemporaryError
      }
      else {
        this.TemporaryError = false;
      }
      if (initObj.hasOwnProperty('TemperatureError')) {
        this.TemperatureError = initObj.TemperatureError
      }
      else {
        this.TemperatureError = false;
      }
      if (initObj.hasOwnProperty('Interference')) {
        this.Interference = initObj.Interference
      }
      else {
        this.Interference = false;
      }
      if (initObj.hasOwnProperty('PersistentError')) {
        this.PersistentError = initObj.PersistentError
      }
      else {
        this.PersistentError = false;
      }
      if (initObj.hasOwnProperty('MaxDistance')) {
        this.MaxDistance = initObj.MaxDistance
      }
      else {
        this.MaxDistance = 0;
      }
      if (initObj.hasOwnProperty('SensorID')) {
        this.SensorID = initObj.SensorID
      }
      else {
        this.SensorID = 0;
      }
      if (initObj.hasOwnProperty('SortIndex')) {
        this.SortIndex = initObj.SortIndex
      }
      else {
        this.SortIndex = 0;
      }
      if (initObj.hasOwnProperty('RadarPower')) {
        this.RadarPower = initObj.RadarPower
      }
      else {
        this.RadarPower = 0;
      }
      if (initObj.hasOwnProperty('CtrlRelay')) {
        this.CtrlRelay = initObj.CtrlRelay
      }
      else {
        this.CtrlRelay = false;
      }
      if (initObj.hasOwnProperty('OutputType')) {
        this.OutputType = initObj.OutputType
      }
      else {
        this.OutputType = 0;
      }
      if (initObj.hasOwnProperty('SendQuality')) {
        this.SendQuality = initObj.SendQuality
      }
      else {
        this.SendQuality = false;
      }
      if (initObj.hasOwnProperty('SendExtInfo')) {
        this.SendExtInfo = initObj.SendExtInfo
      }
      else {
        this.SendExtInfo = false;
      }
      if (initObj.hasOwnProperty('MotionRxState')) {
        this.MotionRxState = initObj.MotionRxState
      }
      else {
        this.MotionRxState = 0;
      }
      if (initObj.hasOwnProperty('RCSThreshold')) {
        this.RCSThreshold = initObj.RCSThreshold
      }
      else {
        this.RCSThreshold = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type radar_state
    // Serialize message field [ReadStatus]
    bufferOffset = _serializer.bool(obj.ReadStatus, buffer, bufferOffset);
    // Serialize message field [WriteStatus]
    bufferOffset = _serializer.bool(obj.WriteStatus, buffer, bufferOffset);
    // Serialize message field [VoltageError]
    bufferOffset = _serializer.bool(obj.VoltageError, buffer, bufferOffset);
    // Serialize message field [TemporaryError]
    bufferOffset = _serializer.bool(obj.TemporaryError, buffer, bufferOffset);
    // Serialize message field [TemperatureError]
    bufferOffset = _serializer.bool(obj.TemperatureError, buffer, bufferOffset);
    // Serialize message field [Interference]
    bufferOffset = _serializer.bool(obj.Interference, buffer, bufferOffset);
    // Serialize message field [PersistentError]
    bufferOffset = _serializer.bool(obj.PersistentError, buffer, bufferOffset);
    // Serialize message field [MaxDistance]
    bufferOffset = _serializer.uint16(obj.MaxDistance, buffer, bufferOffset);
    // Serialize message field [SensorID]
    bufferOffset = _serializer.int8(obj.SensorID, buffer, bufferOffset);
    // Serialize message field [SortIndex]
    bufferOffset = _serializer.int8(obj.SortIndex, buffer, bufferOffset);
    // Serialize message field [RadarPower]
    bufferOffset = _serializer.int8(obj.RadarPower, buffer, bufferOffset);
    // Serialize message field [CtrlRelay]
    bufferOffset = _serializer.bool(obj.CtrlRelay, buffer, bufferOffset);
    // Serialize message field [OutputType]
    bufferOffset = _serializer.int8(obj.OutputType, buffer, bufferOffset);
    // Serialize message field [SendQuality]
    bufferOffset = _serializer.bool(obj.SendQuality, buffer, bufferOffset);
    // Serialize message field [SendExtInfo]
    bufferOffset = _serializer.bool(obj.SendExtInfo, buffer, bufferOffset);
    // Serialize message field [MotionRxState]
    bufferOffset = _serializer.int8(obj.MotionRxState, buffer, bufferOffset);
    // Serialize message field [RCSThreshold]
    bufferOffset = _serializer.bool(obj.RCSThreshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type radar_state
    let len;
    let data = new radar_state(null);
    // Deserialize message field [ReadStatus]
    data.ReadStatus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [WriteStatus]
    data.WriteStatus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [VoltageError]
    data.VoltageError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TemporaryError]
    data.TemporaryError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TemperatureError]
    data.TemperatureError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Interference]
    data.Interference = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PersistentError]
    data.PersistentError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [MaxDistance]
    data.MaxDistance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensorID]
    data.SensorID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [SortIndex]
    data.SortIndex = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RadarPower]
    data.RadarPower = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CtrlRelay]
    data.CtrlRelay = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [OutputType]
    data.OutputType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [SendQuality]
    data.SendQuality = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SendExtInfo]
    data.SendExtInfo = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [MotionRxState]
    data.MotionRxState = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RCSThreshold]
    data.RCSThreshold = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'conti_ars408_back2/radar_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '009d15dd11f0e87306d45f2901569726';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RadarState (0x201)
    
    bool ReadStatus
    bool WriteStatus
    bool VoltageError
    bool TemporaryError
    bool TemperatureError
    bool Interference
    bool PersistentError
    uint16 MaxDistance
    int8 SensorID
    int8 SortIndex
    int8 RadarPower
    bool CtrlRelay
    int8 OutputType
    bool SendQuality
    bool SendExtInfo
    int8 MotionRxState
    bool RCSThreshold
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new radar_state(null);
    if (msg.ReadStatus !== undefined) {
      resolved.ReadStatus = msg.ReadStatus;
    }
    else {
      resolved.ReadStatus = false
    }

    if (msg.WriteStatus !== undefined) {
      resolved.WriteStatus = msg.WriteStatus;
    }
    else {
      resolved.WriteStatus = false
    }

    if (msg.VoltageError !== undefined) {
      resolved.VoltageError = msg.VoltageError;
    }
    else {
      resolved.VoltageError = false
    }

    if (msg.TemporaryError !== undefined) {
      resolved.TemporaryError = msg.TemporaryError;
    }
    else {
      resolved.TemporaryError = false
    }

    if (msg.TemperatureError !== undefined) {
      resolved.TemperatureError = msg.TemperatureError;
    }
    else {
      resolved.TemperatureError = false
    }

    if (msg.Interference !== undefined) {
      resolved.Interference = msg.Interference;
    }
    else {
      resolved.Interference = false
    }

    if (msg.PersistentError !== undefined) {
      resolved.PersistentError = msg.PersistentError;
    }
    else {
      resolved.PersistentError = false
    }

    if (msg.MaxDistance !== undefined) {
      resolved.MaxDistance = msg.MaxDistance;
    }
    else {
      resolved.MaxDistance = 0
    }

    if (msg.SensorID !== undefined) {
      resolved.SensorID = msg.SensorID;
    }
    else {
      resolved.SensorID = 0
    }

    if (msg.SortIndex !== undefined) {
      resolved.SortIndex = msg.SortIndex;
    }
    else {
      resolved.SortIndex = 0
    }

    if (msg.RadarPower !== undefined) {
      resolved.RadarPower = msg.RadarPower;
    }
    else {
      resolved.RadarPower = 0
    }

    if (msg.CtrlRelay !== undefined) {
      resolved.CtrlRelay = msg.CtrlRelay;
    }
    else {
      resolved.CtrlRelay = false
    }

    if (msg.OutputType !== undefined) {
      resolved.OutputType = msg.OutputType;
    }
    else {
      resolved.OutputType = 0
    }

    if (msg.SendQuality !== undefined) {
      resolved.SendQuality = msg.SendQuality;
    }
    else {
      resolved.SendQuality = false
    }

    if (msg.SendExtInfo !== undefined) {
      resolved.SendExtInfo = msg.SendExtInfo;
    }
    else {
      resolved.SendExtInfo = false
    }

    if (msg.MotionRxState !== undefined) {
      resolved.MotionRxState = msg.MotionRxState;
    }
    else {
      resolved.MotionRxState = 0
    }

    if (msg.RCSThreshold !== undefined) {
      resolved.RCSThreshold = msg.RCSThreshold;
    }
    else {
      resolved.RCSThreshold = false
    }

    return resolved;
    }
};

module.exports = radar_state;
