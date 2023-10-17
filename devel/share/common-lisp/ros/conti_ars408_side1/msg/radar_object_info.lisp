; Auto-generated. Do not edit!


(cl:in-package conti_ars408_side1-msg)


;//! \htmlinclude radar_object_info.msg.html

(cl:defclass <radar_object_info> (roslisp-msg-protocol:ros-message)
  ((ObjectID
    :reader ObjectID
    :initarg :ObjectID
    :type cl:fixnum
    :initform 0)
   (ObjectPosn
    :reader ObjectPosn
    :initarg :ObjectPosn
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (ObjectVrel
    :reader ObjectVrel
    :initarg :ObjectVrel
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (ObjectArel
    :reader ObjectArel
    :initarg :ObjectArel
    :type geometry_msgs-msg:AccelWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:AccelWithCovariance))
   (ObjectDynProp
    :reader ObjectDynProp
    :initarg :ObjectDynProp
    :type cl:fixnum
    :initform 0)
   (ObjectRCS
    :reader ObjectRCS
    :initarg :ObjectRCS
    :type cl:float
    :initform 0.0)
   (ObjectMeasState
    :reader ObjectMeasState
    :initarg :ObjectMeasState
    :type cl:fixnum
    :initform 0)
   (ObjectProbOfExist
    :reader ObjectProbOfExist
    :initarg :ObjectProbOfExist
    :type cl:fixnum
    :initform 0)
   (ObjectClass
    :reader ObjectClass
    :initarg :ObjectClass
    :type cl:fixnum
    :initform 0)
   (ObjectOrientationAngle
    :reader ObjectOrientationAngle
    :initarg :ObjectOrientationAngle
    :type cl:float
    :initform 0.0)
   (ObjectLength
    :reader ObjectLength
    :initarg :ObjectLength
    :type cl:float
    :initform 0.0)
   (ObjectWidth
    :reader ObjectWidth
    :initarg :ObjectWidth
    :type cl:float
    :initform 0.0))
)

(cl:defclass radar_object_info (<radar_object_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <radar_object_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'radar_object_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_side1-msg:<radar_object_info> is deprecated: use conti_ars408_side1-msg:radar_object_info instead.")))

(cl:ensure-generic-function 'ObjectID-val :lambda-list '(m))
(cl:defmethod ObjectID-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectID-val is deprecated.  Use conti_ars408_side1-msg:ObjectID instead.")
  (ObjectID m))

(cl:ensure-generic-function 'ObjectPosn-val :lambda-list '(m))
(cl:defmethod ObjectPosn-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectPosn-val is deprecated.  Use conti_ars408_side1-msg:ObjectPosn instead.")
  (ObjectPosn m))

(cl:ensure-generic-function 'ObjectVrel-val :lambda-list '(m))
(cl:defmethod ObjectVrel-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectVrel-val is deprecated.  Use conti_ars408_side1-msg:ObjectVrel instead.")
  (ObjectVrel m))

(cl:ensure-generic-function 'ObjectArel-val :lambda-list '(m))
(cl:defmethod ObjectArel-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectArel-val is deprecated.  Use conti_ars408_side1-msg:ObjectArel instead.")
  (ObjectArel m))

(cl:ensure-generic-function 'ObjectDynProp-val :lambda-list '(m))
(cl:defmethod ObjectDynProp-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectDynProp-val is deprecated.  Use conti_ars408_side1-msg:ObjectDynProp instead.")
  (ObjectDynProp m))

(cl:ensure-generic-function 'ObjectRCS-val :lambda-list '(m))
(cl:defmethod ObjectRCS-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectRCS-val is deprecated.  Use conti_ars408_side1-msg:ObjectRCS instead.")
  (ObjectRCS m))

(cl:ensure-generic-function 'ObjectMeasState-val :lambda-list '(m))
(cl:defmethod ObjectMeasState-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectMeasState-val is deprecated.  Use conti_ars408_side1-msg:ObjectMeasState instead.")
  (ObjectMeasState m))

(cl:ensure-generic-function 'ObjectProbOfExist-val :lambda-list '(m))
(cl:defmethod ObjectProbOfExist-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectProbOfExist-val is deprecated.  Use conti_ars408_side1-msg:ObjectProbOfExist instead.")
  (ObjectProbOfExist m))

(cl:ensure-generic-function 'ObjectClass-val :lambda-list '(m))
(cl:defmethod ObjectClass-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectClass-val is deprecated.  Use conti_ars408_side1-msg:ObjectClass instead.")
  (ObjectClass m))

(cl:ensure-generic-function 'ObjectOrientationAngle-val :lambda-list '(m))
(cl:defmethod ObjectOrientationAngle-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectOrientationAngle-val is deprecated.  Use conti_ars408_side1-msg:ObjectOrientationAngle instead.")
  (ObjectOrientationAngle m))

(cl:ensure-generic-function 'ObjectLength-val :lambda-list '(m))
(cl:defmethod ObjectLength-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectLength-val is deprecated.  Use conti_ars408_side1-msg:ObjectLength instead.")
  (ObjectLength m))

(cl:ensure-generic-function 'ObjectWidth-val :lambda-list '(m))
(cl:defmethod ObjectWidth-val ((m <radar_object_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ObjectWidth-val is deprecated.  Use conti_ars408_side1-msg:ObjectWidth instead.")
  (ObjectWidth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <radar_object_info>) ostream)
  "Serializes a message object of type '<radar_object_info>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ObjectID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ObjectPosn) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ObjectVrel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ObjectArel) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ObjectDynProp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ObjectRCS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ObjectMeasState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ObjectProbOfExist)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ObjectClass)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ObjectOrientationAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ObjectLength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ObjectWidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <radar_object_info>) istream)
  "Deserializes a message object of type '<radar_object_info>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ObjectID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ObjectPosn) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ObjectVrel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ObjectArel) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ObjectDynProp) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ObjectRCS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ObjectMeasState) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ObjectProbOfExist) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ObjectClass) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ObjectOrientationAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ObjectLength) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ObjectWidth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<radar_object_info>)))
  "Returns string type for a message object of type '<radar_object_info>"
  "conti_ars408_side1/radar_object_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'radar_object_info)))
  "Returns string type for a message object of type 'radar_object_info"
  "conti_ars408_side1/radar_object_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<radar_object_info>)))
  "Returns md5sum for a message object of type '<radar_object_info>"
  "599a292f7c5e980e99c41704cbfb8d14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'radar_object_info)))
  "Returns md5sum for a message object of type 'radar_object_info"
  "599a292f7c5e980e99c41704cbfb8d14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<radar_object_info>)))
  "Returns full string definition for message of type '<radar_object_info>"
  (cl:format cl:nil "# Object (0x60A, 0x60B, 0x60C, 0x60D)~%~%uint8 ObjectID~%geometry_msgs/PoseWithCovariance ObjectPosn~%geometry_msgs/TwistWithCovariance ObjectVrel~%geometry_msgs/AccelWithCovariance ObjectArel~%int8 ObjectDynProp~%float32 ObjectRCS~%int8 ObjectMeasState~%int8 ObjectProbOfExist~%int8 ObjectClass~%float32 ObjectOrientationAngle~%float32 ObjectLength~%float32 ObjectWidth~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'radar_object_info)))
  "Returns full string definition for message of type 'radar_object_info"
  (cl:format cl:nil "# Object (0x60A, 0x60B, 0x60C, 0x60D)~%~%uint8 ObjectID~%geometry_msgs/PoseWithCovariance ObjectPosn~%geometry_msgs/TwistWithCovariance ObjectVrel~%geometry_msgs/AccelWithCovariance ObjectArel~%int8 ObjectDynProp~%float32 ObjectRCS~%int8 ObjectMeasState~%int8 ObjectProbOfExist~%int8 ObjectClass~%float32 ObjectOrientationAngle~%float32 ObjectLength~%float32 ObjectWidth~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <radar_object_info>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ObjectPosn))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ObjectVrel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ObjectArel))
     1
     4
     1
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <radar_object_info>))
  "Converts a ROS message object to a list"
  (cl:list 'radar_object_info
    (cl:cons ':ObjectID (ObjectID msg))
    (cl:cons ':ObjectPosn (ObjectPosn msg))
    (cl:cons ':ObjectVrel (ObjectVrel msg))
    (cl:cons ':ObjectArel (ObjectArel msg))
    (cl:cons ':ObjectDynProp (ObjectDynProp msg))
    (cl:cons ':ObjectRCS (ObjectRCS msg))
    (cl:cons ':ObjectMeasState (ObjectMeasState msg))
    (cl:cons ':ObjectProbOfExist (ObjectProbOfExist msg))
    (cl:cons ':ObjectClass (ObjectClass msg))
    (cl:cons ':ObjectOrientationAngle (ObjectOrientationAngle msg))
    (cl:cons ':ObjectLength (ObjectLength msg))
    (cl:cons ':ObjectWidth (ObjectWidth msg))
))
