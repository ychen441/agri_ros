; Auto-generated. Do not edit!


(cl:in-package conti_ars408_back1-msg)


;//! \htmlinclude radar_cluster.msg.html

(cl:defclass <radar_cluster> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cluster_info
    :reader cluster_info
    :initarg :cluster_info
    :type (cl:vector conti_ars408_back1-msg:radar_cluster_info)
   :initform (cl:make-array 0 :element-type 'conti_ars408_back1-msg:radar_cluster_info :initial-element (cl:make-instance 'conti_ars408_back1-msg:radar_cluster_info))))
)

(cl:defclass radar_cluster (<radar_cluster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <radar_cluster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'radar_cluster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back1-msg:<radar_cluster> is deprecated: use conti_ars408_back1-msg:radar_cluster instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <radar_cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_back1-msg:header-val is deprecated.  Use conti_ars408_back1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cluster_info-val :lambda-list '(m))
(cl:defmethod cluster_info-val ((m <radar_cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_back1-msg:cluster_info-val is deprecated.  Use conti_ars408_back1-msg:cluster_info instead.")
  (cluster_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <radar_cluster>) ostream)
  "Serializes a message object of type '<radar_cluster>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cluster_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cluster_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <radar_cluster>) istream)
  "Deserializes a message object of type '<radar_cluster>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cluster_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cluster_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'conti_ars408_back1-msg:radar_cluster_info))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<radar_cluster>)))
  "Returns string type for a message object of type '<radar_cluster>"
  "conti_ars408_back1/radar_cluster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'radar_cluster)))
  "Returns string type for a message object of type 'radar_cluster"
  "conti_ars408_back1/radar_cluster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<radar_cluster>)))
  "Returns md5sum for a message object of type '<radar_cluster>"
  "5444279405e342e25d3cc7da1fe8329e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'radar_cluster)))
  "Returns md5sum for a message object of type 'radar_cluster"
  "5444279405e342e25d3cc7da1fe8329e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<radar_cluster>)))
  "Returns full string definition for message of type '<radar_cluster>"
  (cl:format cl:nil "# Data acquisition time and frame id~%std_msgs/Header header~%~%# cluster CAN messages~%conti_ars408_back1/radar_cluster_info[] cluster_info~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: conti_ars408_back1/radar_cluster_info~%# Cluster (0x600, 0x701, 0x702)~%~%uint8 ClusterID~%geometry_msgs/PoseWithCovariance ClusterPosn~%geometry_msgs/TwistWithCovariance ClusterVrel~%int8 ClusterDynProp~%float32 ClusterRCS~%int8 ClusterPdh0~%int8 ClusterAmbigState~%int8 ClusterInvalidState~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'radar_cluster)))
  "Returns full string definition for message of type 'radar_cluster"
  (cl:format cl:nil "# Data acquisition time and frame id~%std_msgs/Header header~%~%# cluster CAN messages~%conti_ars408_back1/radar_cluster_info[] cluster_info~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: conti_ars408_back1/radar_cluster_info~%# Cluster (0x600, 0x701, 0x702)~%~%uint8 ClusterID~%geometry_msgs/PoseWithCovariance ClusterPosn~%geometry_msgs/TwistWithCovariance ClusterVrel~%int8 ClusterDynProp~%float32 ClusterRCS~%int8 ClusterPdh0~%int8 ClusterAmbigState~%int8 ClusterInvalidState~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <radar_cluster>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cluster_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <radar_cluster>))
  "Converts a ROS message object to a list"
  (cl:list 'radar_cluster
    (cl:cons ':header (header msg))
    (cl:cons ':cluster_info (cluster_info msg))
))
