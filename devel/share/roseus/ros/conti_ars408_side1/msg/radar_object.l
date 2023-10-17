;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408_side1::radar_object)
  (if (not (find-package "CONTI_ARS408_SIDE1"))
    (make-package "CONTI_ARS408_SIDE1"))
  (shadow 'radar_object (find-package "CONTI_ARS408_SIDE1")))
(unless (find-package "CONTI_ARS408_SIDE1::RADAR_OBJECT")
  (make-package "CONTI_ARS408_SIDE1::RADAR_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude radar_object.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass conti_ars408_side1::radar_object
  :super ros::object
  :slots (_header _object_info ))

(defmethod conti_ars408_side1::radar_object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_info __object_info) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_info __object_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_info
   (&rest __object_info)
   (if (keywordp (car __object_info))
       (send* _object_info __object_info)
     (progn
       (if __object_info (setq _object_info (car __object_info)))
       _object_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; conti_ars408_side1/radar_object_info[] _object_info
    (apply #'+ (send-all _object_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; conti_ars408_side1/radar_object_info[] _object_info
     (write-long (length _object_info) s)
     (dolist (elem _object_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; conti_ars408_side1/radar_object_info[] _object_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_info (let (r) (dotimes (i n) (push (instance conti_ars408_side1::radar_object_info :init) r)) r))
     (dolist (elem- _object_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get conti_ars408_side1::radar_object :md5sum-) "c8360e2c7cdc8ab4ae558f060a4140ee")
(setf (get conti_ars408_side1::radar_object :datatype-) "conti_ars408_side1/radar_object")
(setf (get conti_ars408_side1::radar_object :definition-)
      "# Data acquisition time and frame id
std_msgs/Header header

# Object CAN messages
conti_ars408_side1/radar_object_info[] object_info
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
MSG: conti_ars408_side1/radar_object_info
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

")



(provide :conti_ars408_side1/radar_object "c8360e2c7cdc8ab4ae558f060a4140ee")


