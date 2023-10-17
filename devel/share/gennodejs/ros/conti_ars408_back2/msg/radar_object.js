// Auto-generated. Do not edit!

// (in-package conti_ars408_back2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let radar_object_info = require('./radar_object_info.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class radar_object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_info')) {
        this.object_info = initObj.object_info
      }
      else {
        this.object_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type radar_object
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_info]
    // Serialize the length for message field [object_info]
    bufferOffset = _serializer.uint32(obj.object_info.length, buffer, bufferOffset);
    obj.object_info.forEach((val) => {
      bufferOffset = radar_object_info.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type radar_object
    let len;
    let data = new radar_object(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_info]
    // Deserialize array length for message field [object_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_info[i] = radar_object_info.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 1037 * object.object_info.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'conti_ars408_back2/radar_object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8360e2c7cdc8ab4ae558f060a4140ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Data acquisition time and frame id
    std_msgs/Header header
    
    # Object CAN messages
    conti_ars408_back2/radar_object_info[] object_info
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: conti_ars408_back2/radar_object_info
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
    const resolved = new radar_object(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object_info !== undefined) {
      resolved.object_info = new Array(msg.object_info.length);
      for (let i = 0; i < resolved.object_info.length; ++i) {
        resolved.object_info[i] = radar_object_info.Resolve(msg.object_info[i]);
      }
    }
    else {
      resolved.object_info = []
    }

    return resolved;
    }
};

module.exports = radar_object;
