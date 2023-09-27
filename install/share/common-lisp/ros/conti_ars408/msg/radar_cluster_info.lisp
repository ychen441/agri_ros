; Auto-generated. Do not edit!


(cl:in-package conti_ars408-msg)


;//! \htmlinclude radar_cluster_info.msg.html

(cl:defclass <radar_cluster_info> (roslisp-msg-protocol:ros-message)
  ((ClusterID
    :reader ClusterID
    :initarg :ClusterID
    :type cl:fixnum
    :initform 0)
   (ClusterPosn
    :reader ClusterPosn
    :initarg :ClusterPosn
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (ClusterVrel
    :reader ClusterVrel
    :initarg :ClusterVrel
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (ClusterDynProp
    :reader ClusterDynProp
    :initarg :ClusterDynProp
    :type cl:fixnum
    :initform 0)
   (ClusterRCS
    :reader ClusterRCS
    :initarg :ClusterRCS
    :type cl:float
    :initform 0.0)
   (ClusterPdh0
    :reader ClusterPdh0
    :initarg :ClusterPdh0
    :type cl:fixnum
    :initform 0)
   (ClusterAmbigState
    :reader ClusterAmbigState
    :initarg :ClusterAmbigState
    :type cl:fixnum
    :initform 0)
   (ClusterInvalidState
    :reader ClusterInvalidState
    :initarg :ClusterInvalidState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass radar_cluster_info (<radar_cluster_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <radar_cluster_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'radar_cluster_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408-msg:<radar_cluster_info> is deprecated: use conti_ars408-msg:radar_cluster_info instead.")))

(cl:ensure-generic-function 'ClusterID-val :lambda-list '(m))
(cl:defmethod ClusterID-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterID-val is deprecated.  Use conti_ars408-msg:ClusterID instead.")
  (ClusterID m))

(cl:ensure-generic-function 'ClusterPosn-val :lambda-list '(m))
(cl:defmethod ClusterPosn-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterPosn-val is deprecated.  Use conti_ars408-msg:ClusterPosn instead.")
  (ClusterPosn m))

(cl:ensure-generic-function 'ClusterVrel-val :lambda-list '(m))
(cl:defmethod ClusterVrel-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterVrel-val is deprecated.  Use conti_ars408-msg:ClusterVrel instead.")
  (ClusterVrel m))

(cl:ensure-generic-function 'ClusterDynProp-val :lambda-list '(m))
(cl:defmethod ClusterDynProp-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterDynProp-val is deprecated.  Use conti_ars408-msg:ClusterDynProp instead.")
  (ClusterDynProp m))

(cl:ensure-generic-function 'ClusterRCS-val :lambda-list '(m))
(cl:defmethod ClusterRCS-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterRCS-val is deprecated.  Use conti_ars408-msg:ClusterRCS instead.")
  (ClusterRCS m))

(cl:ensure-generic-function 'ClusterPdh0-val :lambda-list '(m))
(cl:defmethod ClusterPdh0-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterPdh0-val is deprecated.  Use conti_ars408-msg:ClusterPdh0 instead.")
  (ClusterPdh0 m))

(cl:ensure-generic-function 'ClusterAmbigState-val :lambda-list '(m))
(cl:defmethod ClusterAmbigState-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterAmbigState-val is deprecated.  Use conti_ars408-msg:ClusterAmbigState instead.")
  (ClusterAmbigState m))

(cl:ensure-generic-function 'ClusterInvalidState-val :lambda-list '(m))
(cl:defmethod ClusterInvalidState-val ((m <radar_cluster_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408-msg:ClusterInvalidState-val is deprecated.  Use conti_ars408-msg:ClusterInvalidState instead.")
  (ClusterInvalidState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <radar_cluster_info>) ostream)
  "Serializes a message object of type '<radar_cluster_info>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ClusterID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ClusterPosn) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ClusterVrel) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ClusterDynProp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ClusterRCS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ClusterPdh0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ClusterAmbigState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ClusterInvalidState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <radar_cluster_info>) istream)
  "Deserializes a message object of type '<radar_cluster_info>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ClusterID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ClusterPosn) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ClusterVrel) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ClusterDynProp) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ClusterRCS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ClusterPdh0) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ClusterAmbigState) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ClusterInvalidState) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<radar_cluster_info>)))
  "Returns string type for a message object of type '<radar_cluster_info>"
  "conti_ars408/radar_cluster_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'radar_cluster_info)))
  "Returns string type for a message object of type 'radar_cluster_info"
  "conti_ars408/radar_cluster_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<radar_cluster_info>)))
  "Returns md5sum for a message object of type '<radar_cluster_info>"
  "6a7156caed52057af535274d12fd49d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'radar_cluster_info)))
  "Returns md5sum for a message object of type 'radar_cluster_info"
  "6a7156caed52057af535274d12fd49d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<radar_cluster_info>)))
  "Returns full string definition for message of type '<radar_cluster_info>"
  (cl:format cl:nil "# Cluster (0x600, 0x701, 0x702)~%~%uint8 ClusterID~%geometry_msgs/PoseWithCovariance ClusterPosn~%geometry_msgs/TwistWithCovariance ClusterVrel~%int8 ClusterDynProp~%float32 ClusterRCS~%int8 ClusterPdh0~%int8 ClusterAmbigState~%int8 ClusterInvalidState~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'radar_cluster_info)))
  "Returns full string definition for message of type 'radar_cluster_info"
  (cl:format cl:nil "# Cluster (0x600, 0x701, 0x702)~%~%uint8 ClusterID~%geometry_msgs/PoseWithCovariance ClusterPosn~%geometry_msgs/TwistWithCovariance ClusterVrel~%int8 ClusterDynProp~%float32 ClusterRCS~%int8 ClusterPdh0~%int8 ClusterAmbigState~%int8 ClusterInvalidState~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <radar_cluster_info>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ClusterPosn))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ClusterVrel))
     1
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <radar_cluster_info>))
  "Converts a ROS message object to a list"
  (cl:list 'radar_cluster_info
    (cl:cons ':ClusterID (ClusterID msg))
    (cl:cons ':ClusterPosn (ClusterPosn msg))
    (cl:cons ':ClusterVrel (ClusterVrel msg))
    (cl:cons ':ClusterDynProp (ClusterDynProp msg))
    (cl:cons ':ClusterRCS (ClusterRCS msg))
    (cl:cons ':ClusterPdh0 (ClusterPdh0 msg))
    (cl:cons ':ClusterAmbigState (ClusterAmbigState msg))
    (cl:cons ':ClusterInvalidState (ClusterInvalidState msg))
))
