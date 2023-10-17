// Auto-generated. Do not edit!

// (in-package conti_ars408_back2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class radar_cluster_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ClusterID = null;
      this.ClusterPosn = null;
      this.ClusterVrel = null;
      this.ClusterDynProp = null;
      this.ClusterRCS = null;
      this.ClusterPdh0 = null;
      this.ClusterAmbigState = null;
      this.ClusterInvalidState = null;
    }
    else {
      if (initObj.hasOwnProperty('ClusterID')) {
        this.ClusterID = initObj.ClusterID
      }
      else {
        this.ClusterID = 0;
      }
      if (initObj.hasOwnProperty('ClusterPosn')) {
        this.ClusterPosn = initObj.ClusterPosn
      }
      else {
        this.ClusterPosn = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('ClusterVrel')) {
        this.ClusterVrel = initObj.ClusterVrel
      }
      else {
        this.ClusterVrel = new geometry_msgs.msg.TwistWithCovariance();
      }
      if (initObj.hasOwnProperty('ClusterDynProp')) {
        this.ClusterDynProp = initObj.ClusterDynProp
      }
      else {
        this.ClusterDynProp = 0;
      }
      if (initObj.hasOwnProperty('ClusterRCS')) {
        this.ClusterRCS = initObj.ClusterRCS
      }
      else {
        this.ClusterRCS = 0.0;
      }
      if (initObj.hasOwnProperty('ClusterPdh0')) {
        this.ClusterPdh0 = initObj.ClusterPdh0
      }
      else {
        this.ClusterPdh0 = 0;
      }
      if (initObj.hasOwnProperty('ClusterAmbigState')) {
        this.ClusterAmbigState = initObj.ClusterAmbigState
      }
      else {
        this.ClusterAmbigState = 0;
      }
      if (initObj.hasOwnProperty('ClusterInvalidState')) {
        this.ClusterInvalidState = initObj.ClusterInvalidState
      }
      else {
        this.ClusterInvalidState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type radar_cluster_info
    // Serialize message field [ClusterID]
    bufferOffset = _serializer.uint8(obj.ClusterID, buffer, bufferOffset);
    // Serialize message field [ClusterPosn]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.ClusterPosn, buffer, bufferOffset);
    // Serialize message field [ClusterVrel]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.ClusterVrel, buffer, bufferOffset);
    // Serialize message field [ClusterDynProp]
    bufferOffset = _serializer.int8(obj.ClusterDynProp, buffer, bufferOffset);
    // Serialize message field [ClusterRCS]
    bufferOffset = _serializer.float32(obj.ClusterRCS, buffer, bufferOffset);
    // Serialize message field [ClusterPdh0]
    bufferOffset = _serializer.int8(obj.ClusterPdh0, buffer, bufferOffset);
    // Serialize message field [ClusterAmbigState]
    bufferOffset = _serializer.int8(obj.ClusterAmbigState, buffer, bufferOffset);
    // Serialize message field [ClusterInvalidState]
    bufferOffset = _serializer.int8(obj.ClusterInvalidState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type radar_cluster_info
    let len;
    let data = new radar_cluster_info(null);
    // Deserialize message field [ClusterID]
    data.ClusterID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ClusterPosn]
    data.ClusterPosn = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [ClusterVrel]
    data.ClusterVrel = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [ClusterDynProp]
    data.ClusterDynProp = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ClusterRCS]
    data.ClusterRCS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ClusterPdh0]
    data.ClusterPdh0 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ClusterAmbigState]
    data.ClusterAmbigState = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ClusterInvalidState]
    data.ClusterInvalidState = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 689;
  }

  static datatype() {
    // Returns string type for a message object
    return 'conti_ars408_back2/radar_cluster_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a7156caed52057af535274d12fd49d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Cluster (0x600, 0x701, 0x702)
    
    uint8 ClusterID
    geometry_msgs/PoseWithCovariance ClusterPosn
    geometry_msgs/TwistWithCovariance ClusterVrel
    int8 ClusterDynProp
    float32 ClusterRCS
    int8 ClusterPdh0
    int8 ClusterAmbigState
    int8 ClusterInvalidState
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new radar_cluster_info(null);
    if (msg.ClusterID !== undefined) {
      resolved.ClusterID = msg.ClusterID;
    }
    else {
      resolved.ClusterID = 0
    }

    if (msg.ClusterPosn !== undefined) {
      resolved.ClusterPosn = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.ClusterPosn)
    }
    else {
      resolved.ClusterPosn = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.ClusterVrel !== undefined) {
      resolved.ClusterVrel = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.ClusterVrel)
    }
    else {
      resolved.ClusterVrel = new geometry_msgs.msg.TwistWithCovariance()
    }

    if (msg.ClusterDynProp !== undefined) {
      resolved.ClusterDynProp = msg.ClusterDynProp;
    }
    else {
      resolved.ClusterDynProp = 0
    }

    if (msg.ClusterRCS !== undefined) {
      resolved.ClusterRCS = msg.ClusterRCS;
    }
    else {
      resolved.ClusterRCS = 0.0
    }

    if (msg.ClusterPdh0 !== undefined) {
      resolved.ClusterPdh0 = msg.ClusterPdh0;
    }
    else {
      resolved.ClusterPdh0 = 0
    }

    if (msg.ClusterAmbigState !== undefined) {
      resolved.ClusterAmbigState = msg.ClusterAmbigState;
    }
    else {
      resolved.ClusterAmbigState = 0
    }

    if (msg.ClusterInvalidState !== undefined) {
      resolved.ClusterInvalidState = msg.ClusterInvalidState;
    }
    else {
      resolved.ClusterInvalidState = 0
    }

    return resolved;
    }
};

module.exports = radar_cluster_info;
