;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408_back1::radar_cluster)
  (if (not (find-package "CONTI_ARS408_BACK1"))
    (make-package "CONTI_ARS408_BACK1"))
  (shadow 'radar_cluster (find-package "CONTI_ARS408_BACK1")))
(unless (find-package "CONTI_ARS408_BACK1::RADAR_CLUSTER")
  (make-package "CONTI_ARS408_BACK1::RADAR_CLUSTER"))

(in-package "ROS")
;;//! \htmlinclude radar_cluster.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass conti_ars408_back1::radar_cluster
  :super ros::object
  :slots (_header _cluster_info ))

(defmethod conti_ars408_back1::radar_cluster
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cluster_info __cluster_info) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _cluster_info __cluster_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cluster_info
   (&rest __cluster_info)
   (if (keywordp (car __cluster_info))
       (send* _cluster_info __cluster_info)
     (progn
       (if __cluster_info (setq _cluster_info (car __cluster_info)))
       _cluster_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; conti_ars408_back1/radar_cluster_info[] _cluster_info
    (apply #'+ (send-all _cluster_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; conti_ars408_back1/radar_cluster_info[] _cluster_info
     (write-long (length _cluster_info) s)
     (dolist (elem _cluster_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; conti_ars408_back1/radar_cluster_info[] _cluster_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_info (let (r) (dotimes (i n) (push (instance conti_ars408_back1::radar_cluster_info :init) r)) r))
     (dolist (elem- _cluster_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get conti_ars408_back1::radar_cluster :md5sum-) "5444279405e342e25d3cc7da1fe8329e")
(setf (get conti_ars408_back1::radar_cluster :datatype-) "conti_ars408_back1/radar_cluster")
(setf (get conti_ars408_back1::radar_cluster :definition-)
      "# Data acquisition time and frame id
std_msgs/Header header

# cluster CAN messages
conti_ars408_back1/radar_cluster_info[] cluster_info
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
MSG: conti_ars408_back1/radar_cluster_info
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
")



(provide :conti_ars408_back1/radar_cluster "5444279405e342e25d3cc7da1fe8329e")


