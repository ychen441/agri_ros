;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408_back2::radar_cluster_info)
  (if (not (find-package "CONTI_ARS408_BACK2"))
    (make-package "CONTI_ARS408_BACK2"))
  (shadow 'radar_cluster_info (find-package "CONTI_ARS408_BACK2")))
(unless (find-package "CONTI_ARS408_BACK2::RADAR_CLUSTER_INFO")
  (make-package "CONTI_ARS408_BACK2::RADAR_CLUSTER_INFO"))

(in-package "ROS")
;;//! \htmlinclude radar_cluster_info.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass conti_ars408_back2::radar_cluster_info
  :super ros::object
  :slots (_ClusterID _ClusterPosn _ClusterVrel _ClusterDynProp _ClusterRCS _ClusterPdh0 _ClusterAmbigState _ClusterInvalidState ))

(defmethod conti_ars408_back2::radar_cluster_info
  (:init
   (&key
    ((:ClusterID __ClusterID) 0)
    ((:ClusterPosn __ClusterPosn) (instance geometry_msgs::PoseWithCovariance :init))
    ((:ClusterVrel __ClusterVrel) (instance geometry_msgs::TwistWithCovariance :init))
    ((:ClusterDynProp __ClusterDynProp) 0)
    ((:ClusterRCS __ClusterRCS) 0.0)
    ((:ClusterPdh0 __ClusterPdh0) 0)
    ((:ClusterAmbigState __ClusterAmbigState) 0)
    ((:ClusterInvalidState __ClusterInvalidState) 0)
    )
   (send-super :init)
   (setq _ClusterID (round __ClusterID))
   (setq _ClusterPosn __ClusterPosn)
   (setq _ClusterVrel __ClusterVrel)
   (setq _ClusterDynProp (round __ClusterDynProp))
   (setq _ClusterRCS (float __ClusterRCS))
   (setq _ClusterPdh0 (round __ClusterPdh0))
   (setq _ClusterAmbigState (round __ClusterAmbigState))
   (setq _ClusterInvalidState (round __ClusterInvalidState))
   self)
  (:ClusterID
   (&optional __ClusterID)
   (if __ClusterID (setq _ClusterID __ClusterID)) _ClusterID)
  (:ClusterPosn
   (&rest __ClusterPosn)
   (if (keywordp (car __ClusterPosn))
       (send* _ClusterPosn __ClusterPosn)
     (progn
       (if __ClusterPosn (setq _ClusterPosn (car __ClusterPosn)))
       _ClusterPosn)))
  (:ClusterVrel
   (&rest __ClusterVrel)
   (if (keywordp (car __ClusterVrel))
       (send* _ClusterVrel __ClusterVrel)
     (progn
       (if __ClusterVrel (setq _ClusterVrel (car __ClusterVrel)))
       _ClusterVrel)))
  (:ClusterDynProp
   (&optional __ClusterDynProp)
   (if __ClusterDynProp (setq _ClusterDynProp __ClusterDynProp)) _ClusterDynProp)
  (:ClusterRCS
   (&optional __ClusterRCS)
   (if __ClusterRCS (setq _ClusterRCS __ClusterRCS)) _ClusterRCS)
  (:ClusterPdh0
   (&optional __ClusterPdh0)
   (if __ClusterPdh0 (setq _ClusterPdh0 __ClusterPdh0)) _ClusterPdh0)
  (:ClusterAmbigState
   (&optional __ClusterAmbigState)
   (if __ClusterAmbigState (setq _ClusterAmbigState __ClusterAmbigState)) _ClusterAmbigState)
  (:ClusterInvalidState
   (&optional __ClusterInvalidState)
   (if __ClusterInvalidState (setq _ClusterInvalidState __ClusterInvalidState)) _ClusterInvalidState)
  (:serialization-length
   ()
   (+
    ;; uint8 _ClusterID
    1
    ;; geometry_msgs/PoseWithCovariance _ClusterPosn
    (send _ClusterPosn :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _ClusterVrel
    (send _ClusterVrel :serialization-length)
    ;; int8 _ClusterDynProp
    1
    ;; float32 _ClusterRCS
    4
    ;; int8 _ClusterPdh0
    1
    ;; int8 _ClusterAmbigState
    1
    ;; int8 _ClusterInvalidState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ClusterID
       (write-byte _ClusterID s)
     ;; geometry_msgs/PoseWithCovariance _ClusterPosn
       (send _ClusterPosn :serialize s)
     ;; geometry_msgs/TwistWithCovariance _ClusterVrel
       (send _ClusterVrel :serialize s)
     ;; int8 _ClusterDynProp
       (write-byte _ClusterDynProp s)
     ;; float32 _ClusterRCS
       (sys::poke _ClusterRCS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _ClusterPdh0
       (write-byte _ClusterPdh0 s)
     ;; int8 _ClusterAmbigState
       (write-byte _ClusterAmbigState s)
     ;; int8 _ClusterInvalidState
       (write-byte _ClusterInvalidState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ClusterID
     (setq _ClusterID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseWithCovariance _ClusterPosn
     (send _ClusterPosn :deserialize buf ptr-) (incf ptr- (send _ClusterPosn :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _ClusterVrel
     (send _ClusterVrel :deserialize buf ptr-) (incf ptr- (send _ClusterVrel :serialization-length))
   ;; int8 _ClusterDynProp
     (setq _ClusterDynProp (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ClusterDynProp 127) (setq _ClusterDynProp (- _ClusterDynProp 256)))
   ;; float32 _ClusterRCS
     (setq _ClusterRCS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _ClusterPdh0
     (setq _ClusterPdh0 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ClusterPdh0 127) (setq _ClusterPdh0 (- _ClusterPdh0 256)))
   ;; int8 _ClusterAmbigState
     (setq _ClusterAmbigState (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ClusterAmbigState 127) (setq _ClusterAmbigState (- _ClusterAmbigState 256)))
   ;; int8 _ClusterInvalidState
     (setq _ClusterInvalidState (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ClusterInvalidState 127) (setq _ClusterInvalidState (- _ClusterInvalidState 256)))
   ;;
   self)
  )

(setf (get conti_ars408_back2::radar_cluster_info :md5sum-) "6a7156caed52057af535274d12fd49d8")
(setf (get conti_ars408_back2::radar_cluster_info :datatype-) "conti_ars408_back2/radar_cluster_info")
(setf (get conti_ars408_back2::radar_cluster_info :definition-)
      "# Cluster (0x600, 0x701, 0x702)

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



(provide :conti_ars408_back2/radar_cluster_info "6a7156caed52057af535274d12fd49d8")


