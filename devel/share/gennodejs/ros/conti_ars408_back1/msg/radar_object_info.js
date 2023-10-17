// Auto-generated. Do not edit!

// (in-package conti_ars408_back1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class radar_object_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ObjectID = null;
      this.ObjectPosn = null;
      this.ObjectVrel = null;
      this.ObjectArel = null;
      this.ObjectDynProp = null;
      this.ObjectRCS = null;
      this.ObjectMeasState = null;
      this.ObjectProbOfExist = null;
      this.ObjectClass = null;
      this.ObjectOrientationAngle = null;
      this.ObjectLength = null;
      this.ObjectWidth = null;
    }
    else {
      if (initObj.hasOwnProperty('ObjectID')) {
        this.ObjectID = initObj.ObjectID
      }
      else {
        this.ObjectID = 0;
      }
      if (initObj.hasOwnProperty('ObjectPosn')) {
        this.ObjectPosn = initObj.ObjectPosn
      }
      else {
        this.ObjectPosn = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('ObjectVrel')) {
        this.ObjectVrel = initObj.ObjectVrel
      }
      else {
        this.ObjectVrel = new geometry_msgs.msg.TwistWithCovariance();
      }
      if (initObj.hasOwnProperty('ObjectArel')) {
        this.ObjectArel = initObj.ObjectArel
      }
      else {
        this.ObjectArel = new geometry_msgs.msg.AccelWithCovariance();
      }
      if (initObj.hasOwnProperty('ObjectDynProp')) {
        this.ObjectDynProp = initObj.ObjectDynProp
      }
      else {
        this.ObjectDynProp = 0;
      }
      if (initObj.hasOwnProperty('ObjectRCS')) {
        this.ObjectRCS = initObj.ObjectRCS
      }
      else {
        this.ObjectRCS = 0.0;
      }
      if (initObj.hasOwnProperty('ObjectMeasState')) {
        this.ObjectMeasState = initObj.ObjectMeasState
      }
      else {
        this.ObjectMeasState = 0;
      }
      if (initObj.hasOwnProperty('ObjectProbOfExist')) {
        this.ObjectProbOfExist = initObj.ObjectProbOfExist
      }
      else {
        this.ObjectProbOfExist = 0;
      }
      if (initObj.hasOwnProperty('ObjectClass')) {
        this.ObjectClass = initObj.ObjectClass
      }
      else {
        this.ObjectClass = 0;
      }
      if (initObj.hasOwnProperty('ObjectOrientationAngle')) {
        this.ObjectOrientationAngle = initObj.ObjectOrientationAngle
      }
      else {
        this.ObjectOrientationAngle = 0.0;
      }
      if (initObj.hasOwnProperty('ObjectLength')) {
        this.ObjectLength = initObj.ObjectLength
      }
      else {
        this.ObjectLength = 0.0;
      }
      if (initObj.hasOwnProperty('ObjectWidth')) {
        this.ObjectWidth = initObj.ObjectWidth
      }
      else {
        this.ObjectWidth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type radar_object_info
    // Serialize message field [ObjectID]
    bufferOffset = _serializer.uint8(obj.ObjectID, buffer, bufferOffset);
    // Serialize message field [ObjectPosn]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.ObjectPosn, buffer, bufferOffset);
    // Serialize message field [ObjectVrel]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.ObjectVrel, buffer, bufferOffset);
    // Serialize message field [ObjectArel]
    bufferOffset = geometry_msgs.msg.AccelWithCovariance.serialize(obj.ObjectArel, buffer, bufferOffset);
    // Serialize message field [ObjectDynProp]
    bufferOffset = _serializer.int8(obj.ObjectDynProp, buffer, bufferOffset);
    // Serialize message field [ObjectRCS]
    bufferOffset = _serializer.float32(obj.ObjectRCS, buffer, bufferOffset);
    // Serialize message field [ObjectMeasState]
    bufferOffset = _serializer.int8(obj.ObjectMeasState, buffer, bufferOffset);
    // Serialize message field [ObjectProbOfExist]
    bufferOffset = _serializer.int8(obj.ObjectProbOfExist, buffer, bufferOffset);
    // Serialize message field [ObjectClass]
    bufferOffset = _serializer.int8(obj.ObjectClass, buffer, bufferOffset);
    // Serialize message field [ObjectOrientationAngle]
    bufferOffset = _serializer.float32(obj.ObjectOrientationAngle, buffer, bufferOffset);
    // Serialize message field [ObjectLength]
    bufferOffset = _serializer.float32(obj.ObjectLength, buffer, bufferOffset);
    // Serialize message field [ObjectWidth]
    bufferOffset = _serializer.float32(obj.ObjectWidth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type radar_object_info
    let len;
    let data = new radar_object_info(null);
    // Deserialize message field [ObjectID]
    data.ObjectID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ObjectPosn]
    data.ObjectPosn = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [ObjectVrel]
    data.ObjectVrel = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [ObjectArel]
    data.ObjectArel = geometry_msgs.msg.AccelWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [ObjectDynProp]
    data.ObjectDynProp = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ObjectRCS]
    data.ObjectRCS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ObjectMeasState]
    data.ObjectMeasState = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ObjectProbOfExist]
    data.ObjectProbOfExist = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ObjectClass]
    data.ObjectClass = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ObjectOrientationAngle]
    data.ObjectOrientationAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ObjectLength]
    data.ObjectLength = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ObjectWidth]
    data.ObjectWidth = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1037;
  }

  static datatype() {
    // Returns string type for a message object
    return 'conti_ars408_back1/radar_object_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '599a292f7c5e980e99c41704cbfb8d14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Object (0x60A, 0x60B, 0x60C, 0x60D)
    
    uint8 ObjectID
    geometry_msgs/PoseWithCovariance ObjectPosn
    geometry_msgs/TwistWithCovariance ObjectVrel
    geometry_msgs/AccelWithCovariance ObjectArel
    int8 ObjectDynProp
    float32 ObjectRCS
    int8 ObjectMeasState
    int8 ObjectProbOfExist
    int8 ObjectClass
    float32 ObjectOrientationAngle
    float32 ObjectLength
    float32 ObjectWidth
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/AccelWithCovariance
    # This expresses acceleration in free space with uncertainty.
    
    Accel accel
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new radar_object_info(null);
    if (msg.ObjectID !== undefined) {
      resolved.ObjectID = msg.ObjectID;
    }
    else {
      resolved.ObjectID = 0
    }

    if (msg.ObjectPosn !== undefined) {
      resolved.ObjectPosn = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.ObjectPosn)
    }
    else {
      resolved.ObjectPosn = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.ObjectVrel !== undefined) {
      resolved.ObjectVrel = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.ObjectVrel)
    }
    else {
      resolved.ObjectVrel = new geometry_msgs.msg.TwistWithCovariance()
    }

    if (msg.ObjectArel !== undefined) {
      resolved.ObjectArel = geometry_msgs.msg.AccelWithCovariance.Resolve(msg.ObjectArel)
    }
    else {
      resolved.ObjectArel = new geometry_msgs.msg.AccelWithCovariance()
    }

    if (msg.ObjectDynProp !== undefined) {
      resolved.ObjectDynProp = msg.ObjectDynProp;
    }
    else {
      resolved.ObjectDynProp = 0
    }

    if (msg.ObjectRCS !== undefined) {
      resolved.ObjectRCS = msg.ObjectRCS;
    }
    else {
      resolved.ObjectRCS = 0.0
    }

    if (msg.ObjectMeasState !== undefined) {
      resolved.ObjectMeasState = msg.ObjectMeasState;
    }
    else {
      resolved.ObjectMeasState = 0
    }

    if (msg.ObjectProbOfExist !== undefined) {
      resolved.ObjectProbOfExist = msg.ObjectProbOfExist;
    }
    else {
      resolved.ObjectProbOfExist = 0
    }

    if (msg.ObjectClass !== undefined) {
      resolved.ObjectClass = msg.ObjectClass;
    }
    else {
      resolved.ObjectClass = 0
    }

    if (msg.ObjectOrientationAngle !== undefined) {
      resolved.ObjectOrientationAngle = msg.ObjectOrientationAngle;
    }
    else {
      resolved.ObjectOrientationAngle = 0.0
    }

    if (msg.ObjectLength !== undefined) {
      resolved.ObjectLength = msg.ObjectLength;
    }
    else {
      resolved.ObjectLength = 0.0
    }

    if (msg.ObjectWidth !== undefined) {
      resolved.ObjectWidth = msg.ObjectWidth;
    }
    else {
      resolved.ObjectWidth = 0.0
    }

    return resolved;
    }
};

module.exports = radar_object_info;
