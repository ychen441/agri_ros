; Auto-generated. Do not edit!


(cl:in-package conti_ARS408-msg)


;//! \htmlinclude radar_object.msg.html

(cl:defclass <radar_object> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_info
    :reader object_info
    :initarg :object_info
    :type (cl:vector conti_ARS408-msg:radar_object_info)
   :initform (cl:make-array 0 :element-type 'conti_ARS408-msg:radar_object_info :initial-element (cl:make-instance 'conti_ARS408-msg:radar_object_info))))
)

(cl:defclass radar_object (<radar_object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <radar_object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'radar_object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ARS408-msg:<radar_object> is deprecated: use conti_ARS408-msg:radar_object instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <radar_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ARS408-msg:header-val is deprecated.  Use conti_ARS408-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_info-val :lambda-list '(m))
(cl:defmethod object_info-val ((m <radar_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ARS408-msg:object_info-val is deprecated.  Use conti_ARS408-msg:object_info instead.")
  (object_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <radar_object>) ostream)
  "Serializes a message object of type '<radar_object>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <radar_object>) istream)
  "Deserializes a message object of type '<radar_object>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'conti_ARS408-msg:radar_object_info))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<radar_object>)))
  "Returns string type for a message object of type '<radar_object>"
  "conti_ARS408/radar_object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'radar_object)))
  "Returns string type for a message object of type 'radar_object"
  "conti_ARS408/radar_object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<radar_object>)))
  "Returns md5sum for a message object of type '<radar_object>"
  "c8360e2c7cdc8ab4ae558f060a4140ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'radar_object)))
  "Returns md5sum for a message object of type 'radar_object"
  "c8360e2c7cdc8ab4ae558f060a4140ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<radar_object>)))
  "Returns full string definition for message of type '<radar_object>"
  (cl:format cl:nil "# Data acquisition time and frame id~%std_msgs/Header header~%~%# Object CAN messages~%conti_ARS408/radar_object_info[] object_info~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: conti_ARS408/radar_object_info~%# Object (0x60A, 0x60B, 0x60C, 0x60D)~%~%uint8 ObjectID~%geometry_msgs/PoseWithCovariance ObjectPosn~%geometry_msgs/TwistWithCovariance ObjectVrel~%geometry_msgs/AccelWithCovariance ObjectArel~%int8 ObjectDynProp~%float32 ObjectRCS~%int8 ObjectMeasState~%int8 ObjectProbOfExist~%int8 ObjectClass~%float32 ObjectOrientationAngle~%float32 ObjectLength~%float32 ObjectWidth~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'radar_object)))
  "Returns full string definition for message of type 'radar_object"
  (cl:format cl:nil "# Data acquisition time and frame id~%std_msgs/Header header~%~%# Object CAN messages~%conti_ARS408/radar_object_info[] object_info~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: conti_ARS408/radar_object_info~%# Object (0x60A, 0x60B, 0x60C, 0x60D)~%~%uint8 ObjectID~%geometry_msgs/PoseWithCovariance ObjectPosn~%geometry_msgs/TwistWithCovariance ObjectVrel~%geometry_msgs/AccelWithCovariance ObjectArel~%int8 ObjectDynProp~%float32 ObjectRCS~%int8 ObjectMeasState~%int8 ObjectProbOfExist~%int8 ObjectClass~%float32 ObjectOrientationAngle~%float32 ObjectLength~%float32 ObjectWidth~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <radar_object>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <radar_object>))
  "Converts a ROS message object to a list"
  (cl:list 'radar_object
    (cl:cons ':header (header msg))
    (cl:cons ':object_info (object_info msg))
))
