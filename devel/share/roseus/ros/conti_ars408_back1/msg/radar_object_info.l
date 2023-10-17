;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408_back1::radar_object_info)
  (if (not (find-package "CONTI_ARS408_BACK1"))
    (make-package "CONTI_ARS408_BACK1"))
  (shadow 'radar_object_info (find-package "CONTI_ARS408_BACK1")))
(unless (find-package "CONTI_ARS408_BACK1::RADAR_OBJECT_INFO")
  (make-package "CONTI_ARS408_BACK1::RADAR_OBJECT_INFO"))

(in-package "ROS")
;;//! \htmlinclude radar_object_info.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass conti_ars408_back1::radar_object_info
  :super ros::object
  :slots (_ObjectID _ObjectPosn _ObjectVrel _ObjectArel _ObjectDynProp _ObjectRCS _ObjectMeasState _ObjectProbOfExist _ObjectClass _ObjectOrientationAngle _ObjectLength _ObjectWidth ))

(defmethod conti_ars408_back1::radar_object_info
  (:init
   (&key
    ((:ObjectID __ObjectID) 0)
    ((:ObjectPosn __ObjectPosn) (instance geometry_msgs::PoseWithCovariance :init))
    ((:ObjectVrel __ObjectVrel) (instance geometry_msgs::TwistWithCovariance :init))
    ((:ObjectArel __ObjectArel) (instance geometry_msgs::AccelWithCovariance :init))
    ((:ObjectDynProp __ObjectDynProp) 0)
    ((:ObjectRCS __ObjectRCS) 0.0)
    ((:ObjectMeasState __ObjectMeasState) 0)
    ((:ObjectProbOfExist __ObjectProbOfExist) 0)
    ((:ObjectClass __ObjectClass) 0)
    ((:ObjectOrientationAngle __ObjectOrientationAngle) 0.0)
    ((:ObjectLength __ObjectLength) 0.0)
    ((:ObjectWidth __ObjectWidth) 0.0)
    )
   (send-super :init)
   (setq _ObjectID (round __ObjectID))
   (setq _ObjectPosn __ObjectPosn)
   (setq _ObjectVrel __ObjectVrel)
   (setq _ObjectArel __ObjectArel)
   (setq _ObjectDynProp (round __ObjectDynProp))
   (setq _ObjectRCS (float __ObjectRCS))
   (setq _ObjectMeasState (round __ObjectMeasState))
   (setq _ObjectProbOfExist (round __ObjectProbOfExist))
   (setq _ObjectClass (round __ObjectClass))
   (setq _ObjectOrientationAngle (float __ObjectOrientationAngle))
   (setq _ObjectLength (float __ObjectLength))
   (setq _ObjectWidth (float __ObjectWidth))
   self)
  (:ObjectID
   (&optional __ObjectID)
   (if __ObjectID (setq _ObjectID __ObjectID)) _ObjectID)
  (:ObjectPosn
   (&rest __ObjectPosn)
   (if (keywordp (car __ObjectPosn))
       (send* _ObjectPosn __ObjectPosn)
     (progn
       (if __ObjectPosn (setq _ObjectPosn (car __ObjectPosn)))
       _ObjectPosn)))
  (:ObjectVrel
   (&rest __ObjectVrel)
   (if (keywordp (car __ObjectVrel))
       (send* _ObjectVrel __ObjectVrel)
     (progn
       (if __ObjectVrel (setq _ObjectVrel (car __ObjectVrel)))
       _ObjectVrel)))
  (:ObjectArel
   (&rest __ObjectArel)
   (if (keywordp (car __ObjectArel))
       (send* _ObjectArel __ObjectArel)
     (progn
       (if __ObjectArel (setq _ObjectArel (car __ObjectArel)))
       _ObjectArel)))
  (:ObjectDynProp
   (&optional __ObjectDynProp)
   (if __ObjectDynProp (setq _ObjectDynProp __ObjectDynProp)) _ObjectDynProp)
  (:ObjectRCS
   (&optional __ObjectRCS)
   (if __ObjectRCS (setq _ObjectRCS __ObjectRCS)) _ObjectRCS)
  (:ObjectMeasState
   (&optional __ObjectMeasState)
   (if __ObjectMeasState (setq _ObjectMeasState __ObjectMeasState)) _ObjectMeasState)
  (:ObjectProbOfExist
   (&optional __ObjectProbOfExist)
   (if __ObjectProbOfExist (setq _ObjectProbOfExist __ObjectProbOfExist)) _ObjectProbOfExist)
  (:ObjectClass
   (&optional __ObjectClass)
   (if __ObjectClass (setq _ObjectClass __ObjectClass)) _ObjectClass)
  (:ObjectOrientationAngle
   (&optional __ObjectOrientationAngle)
   (if __ObjectOrientationAngle (setq _ObjectOrientationAngle __ObjectOrientationAngle)) _ObjectOrientationAngle)
  (:ObjectLength
   (&optional __ObjectLength)
   (if __ObjectLength (setq _ObjectLength __ObjectLength)) _ObjectLength)
  (:ObjectWidth
   (&optional __ObjectWidth)
   (if __ObjectWidth (setq _ObjectWidth __ObjectWidth)) _ObjectWidth)
  (:serialization-length
   ()
   (+
    ;; uint8 _ObjectID
    1
    ;; geometry_msgs/PoseWithCovariance _ObjectPosn
    (send _ObjectPosn :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _ObjectVrel
    (send _ObjectVrel :serialization-length)
    ;; geometry_msgs/AccelWithCovariance _ObjectArel
    (send _ObjectArel :serialization-length)
    ;; int8 _ObjectDynProp
    1
    ;; float32 _ObjectRCS
    4
    ;; int8 _ObjectMeasState
    1
    ;; int8 _ObjectProbOfExist
    1
    ;; int8 _ObjectClass
    1
    ;; float32 _ObjectOrientationAngle
    4
    ;; float32 _ObjectLength
    4
    ;; float32 _ObjectWidth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ObjectID
       (write-byte _ObjectID s)
     ;; geometry_msgs/PoseWithCovariance _ObjectPosn
       (send _ObjectPosn :serialize s)
     ;; geometry_msgs/TwistWithCovariance _ObjectVrel
       (send _ObjectVrel :serialize s)
     ;; geometry_msgs/AccelWithCovariance _ObjectArel
       (send _ObjectArel :serialize s)
     ;; int8 _ObjectDynProp
       (write-byte _ObjectDynProp s)
     ;; float32 _ObjectRCS
       (sys::poke _ObjectRCS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _ObjectMeasState
       (write-byte _ObjectMeasState s)
     ;; int8 _ObjectProbOfExist
       (write-byte _ObjectProbOfExist s)
     ;; int8 _ObjectClass
       (write-byte _ObjectClass s)
     ;; float32 _ObjectOrientationAngle
       (sys::poke _ObjectOrientationAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ObjectLength
       (sys::poke _ObjectLength (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ObjectWidth
       (sys::poke _ObjectWidth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ObjectID
     (setq _ObjectID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseWithCovariance _ObjectPosn
     (send _ObjectPosn :deserialize buf ptr-) (incf ptr- (send _ObjectPosn :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _ObjectVrel
     (send _ObjectVrel :deserialize buf ptr-) (incf ptr- (send _ObjectVrel :serialization-length))
   ;; geometry_msgs/AccelWithCovariance _ObjectArel
     (send _ObjectArel :deserialize buf ptr-) (incf ptr- (send _ObjectArel :serialization-length))
   ;; int8 _ObjectDynProp
     (setq _ObjectDynProp (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ObjectDynProp 127) (setq _ObjectDynProp (- _ObjectDynProp 256)))
   ;; float32 _ObjectRCS
     (setq _ObjectRCS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _ObjectMeasState
     (setq _ObjectMeasState (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ObjectMeasState 127) (setq _ObjectMeasState (- _ObjectMeasState 256)))
   ;; int8 _ObjectProbOfExist
     (setq _ObjectProbOfExist (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ObjectProbOfExist 127) (setq _ObjectProbOfExist (- _ObjectProbOfExist 256)))
   ;; int8 _ObjectClass
     (setq _ObjectClass (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ObjectClass 127) (setq _ObjectClass (- _ObjectClass 256)))
   ;; float32 _ObjectOrientationAngle
     (setq _ObjectOrientationAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ObjectLength
     (setq _ObjectLength (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ObjectWidth
     (setq _ObjectWidth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get conti_ars408_back1::radar_object_info :md5sum-) "599a292f7c5e980e99c41704cbfb8d14")
(setf (get conti_ars408_back1::radar_object_info :datatype-) "conti_ars408_back1/radar_object_info")
(setf (get conti_ars408_back1::radar_object_info :definition-)
      "# Object (0x60A, 0x60B, 0x60C, 0x60D)

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



(provide :conti_ars408_back1/radar_object_info "599a292f7c5e980e99c41704cbfb8d14")


