// Auto-generated. Do not edit!

// (in-package conti_ars408_side1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let radar_cluster_info = require('./radar_cluster_info.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class radar_cluster {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cluster_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cluster_info')) {
        this.cluster_info = initObj.cluster_info
      }
      else {
        this.cluster_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type radar_cluster
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cluster_info]
    // Serialize the length for message field [cluster_info]
    bufferOffset = _serializer.uint32(obj.cluster_info.length, buffer, bufferOffset);
    obj.cluster_info.forEach((val) => {
      bufferOffset = radar_cluster_info.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type radar_cluster
    let len;
    let data = new radar_cluster(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_info]
    // Deserialize array length for message field [cluster_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_info[i] = radar_cluster_info.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 689 * object.cluster_info.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'conti_ars408_side1/radar_cluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5444279405e342e25d3cc7da1fe8329e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Data acquisition time and frame id
    std_msgs/Header header
    
    # cluster CAN messages
    conti_ars408_side1/radar_cluster_info[] cluster_info
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
    MSG: conti_ars408_side1/radar_cluster_info
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
    const resolved = new radar_cluster(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cluster_info !== undefined) {
      resolved.cluster_info = new Array(msg.cluster_info.length);
      for (let i = 0; i < resolved.cluster_info.length; ++i) {
        resolved.cluster_info[i] = radar_cluster_info.Resolve(msg.cluster_info[i]);
      }
    }
    else {
      resolved.cluster_info = []
    }

    return resolved;
    }
};

module.exports = radar_cluster;
