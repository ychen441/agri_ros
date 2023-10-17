; Auto-generated. Do not edit!


(cl:in-package conti_ars408_side1-msg)


;//! \htmlinclude radar_state.msg.html

(cl:defclass <radar_state> (roslisp-msg-protocol:ros-message)
  ((ReadStatus
    :reader ReadStatus
    :initarg :ReadStatus
    :type cl:boolean
    :initform cl:nil)
   (WriteStatus
    :reader WriteStatus
    :initarg :WriteStatus
    :type cl:boolean
    :initform cl:nil)
   (VoltageError
    :reader VoltageError
    :initarg :VoltageError
    :type cl:boolean
    :initform cl:nil)
   (TemporaryError
    :reader TemporaryError
    :initarg :TemporaryError
    :type cl:boolean
    :initform cl:nil)
   (TemperatureError
    :reader TemperatureError
    :initarg :TemperatureError
    :type cl:boolean
    :initform cl:nil)
   (Interference
    :reader Interference
    :initarg :Interference
    :type cl:boolean
    :initform cl:nil)
   (PersistentError
    :reader PersistentError
    :initarg :PersistentError
    :type cl:boolean
    :initform cl:nil)
   (MaxDistance
    :reader MaxDistance
    :initarg :MaxDistance
    :type cl:fixnum
    :initform 0)
   (SensorID
    :reader SensorID
    :initarg :SensorID
    :type cl:fixnum
    :initform 0)
   (SortIndex
    :reader SortIndex
    :initarg :SortIndex
    :type cl:fixnum
    :initform 0)
   (RadarPower
    :reader RadarPower
    :initarg :RadarPower
    :type cl:fixnum
    :initform 0)
   (CtrlRelay
    :reader CtrlRelay
    :initarg :CtrlRelay
    :type cl:boolean
    :initform cl:nil)
   (OutputType
    :reader OutputType
    :initarg :OutputType
    :type cl:fixnum
    :initform 0)
   (SendQuality
    :reader SendQuality
    :initarg :SendQuality
    :type cl:boolean
    :initform cl:nil)
   (SendExtInfo
    :reader SendExtInfo
    :initarg :SendExtInfo
    :type cl:boolean
    :initform cl:nil)
   (MotionRxState
    :reader MotionRxState
    :initarg :MotionRxState
    :type cl:fixnum
    :initform 0)
   (RCSThreshold
    :reader RCSThreshold
    :initarg :RCSThreshold
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass radar_state (<radar_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <radar_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'radar_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_side1-msg:<radar_state> is deprecated: use conti_ars408_side1-msg:radar_state instead.")))

(cl:ensure-generic-function 'ReadStatus-val :lambda-list '(m))
(cl:defmethod ReadStatus-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:ReadStatus-val is deprecated.  Use conti_ars408_side1-msg:ReadStatus instead.")
  (ReadStatus m))

(cl:ensure-generic-function 'WriteStatus-val :lambda-list '(m))
(cl:defmethod WriteStatus-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:WriteStatus-val is deprecated.  Use conti_ars408_side1-msg:WriteStatus instead.")
  (WriteStatus m))

(cl:ensure-generic-function 'VoltageError-val :lambda-list '(m))
(cl:defmethod VoltageError-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:VoltageError-val is deprecated.  Use conti_ars408_side1-msg:VoltageError instead.")
  (VoltageError m))

(cl:ensure-generic-function 'TemporaryError-val :lambda-list '(m))
(cl:defmethod TemporaryError-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:TemporaryError-val is deprecated.  Use conti_ars408_side1-msg:TemporaryError instead.")
  (TemporaryError m))

(cl:ensure-generic-function 'TemperatureError-val :lambda-list '(m))
(cl:defmethod TemperatureError-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:TemperatureError-val is deprecated.  Use conti_ars408_side1-msg:TemperatureError instead.")
  (TemperatureError m))

(cl:ensure-generic-function 'Interference-val :lambda-list '(m))
(cl:defmethod Interference-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:Interference-val is deprecated.  Use conti_ars408_side1-msg:Interference instead.")
  (Interference m))

(cl:ensure-generic-function 'PersistentError-val :lambda-list '(m))
(cl:defmethod PersistentError-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:PersistentError-val is deprecated.  Use conti_ars408_side1-msg:PersistentError instead.")
  (PersistentError m))

(cl:ensure-generic-function 'MaxDistance-val :lambda-list '(m))
(cl:defmethod MaxDistance-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:MaxDistance-val is deprecated.  Use conti_ars408_side1-msg:MaxDistance instead.")
  (MaxDistance m))

(cl:ensure-generic-function 'SensorID-val :lambda-list '(m))
(cl:defmethod SensorID-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:SensorID-val is deprecated.  Use conti_ars408_side1-msg:SensorID instead.")
  (SensorID m))

(cl:ensure-generic-function 'SortIndex-val :lambda-list '(m))
(cl:defmethod SortIndex-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:SortIndex-val is deprecated.  Use conti_ars408_side1-msg:SortIndex instead.")
  (SortIndex m))

(cl:ensure-generic-function 'RadarPower-val :lambda-list '(m))
(cl:defmethod RadarPower-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:RadarPower-val is deprecated.  Use conti_ars408_side1-msg:RadarPower instead.")
  (RadarPower m))

(cl:ensure-generic-function 'CtrlRelay-val :lambda-list '(m))
(cl:defmethod CtrlRelay-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:CtrlRelay-val is deprecated.  Use conti_ars408_side1-msg:CtrlRelay instead.")
  (CtrlRelay m))

(cl:ensure-generic-function 'OutputType-val :lambda-list '(m))
(cl:defmethod OutputType-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:OutputType-val is deprecated.  Use conti_ars408_side1-msg:OutputType instead.")
  (OutputType m))

(cl:ensure-generic-function 'SendQuality-val :lambda-list '(m))
(cl:defmethod SendQuality-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:SendQuality-val is deprecated.  Use conti_ars408_side1-msg:SendQuality instead.")
  (SendQuality m))

(cl:ensure-generic-function 'SendExtInfo-val :lambda-list '(m))
(cl:defmethod SendExtInfo-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:SendExtInfo-val is deprecated.  Use conti_ars408_side1-msg:SendExtInfo instead.")
  (SendExtInfo m))

(cl:ensure-generic-function 'MotionRxState-val :lambda-list '(m))
(cl:defmethod MotionRxState-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:MotionRxState-val is deprecated.  Use conti_ars408_side1-msg:MotionRxState instead.")
  (MotionRxState m))

(cl:ensure-generic-function 'RCSThreshold-val :lambda-list '(m))
(cl:defmethod RCSThreshold-val ((m <radar_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-msg:RCSThreshold-val is deprecated.  Use conti_ars408_side1-msg:RCSThreshold instead.")
  (RCSThreshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <radar_state>) ostream)
  "Serializes a message object of type '<radar_state>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ReadStatus) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'WriteStatus) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'VoltageError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TemporaryError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TemperatureError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Interference) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PersistentError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MaxDistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MaxDistance)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'SensorID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SortIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RadarPower)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CtrlRelay) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'OutputType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SendQuality) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SendExtInfo) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'MotionRxState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RCSThreshold) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <radar_state>) istream)
  "Deserializes a message object of type '<radar_state>"
    (cl:setf (cl:slot-value msg 'ReadStatus) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'WriteStatus) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'VoltageError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TemporaryError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TemperatureError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Interference) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PersistentError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MaxDistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MaxDistance)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SensorID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SortIndex) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RadarPower) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'CtrlRelay) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'OutputType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'SendQuality) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SendExtInfo) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MotionRxState) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'RCSThreshold) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<radar_state>)))
  "Returns string type for a message object of type '<radar_state>"
  "conti_ars408_side1/radar_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'radar_state)))
  "Returns string type for a message object of type 'radar_state"
  "conti_ars408_side1/radar_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<radar_state>)))
  "Returns md5sum for a message object of type '<radar_state>"
  "009d15dd11f0e87306d45f2901569726")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'radar_state)))
  "Returns md5sum for a message object of type 'radar_state"
  "009d15dd11f0e87306d45f2901569726")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<radar_state>)))
  "Returns full string definition for message of type '<radar_state>"
  (cl:format cl:nil "# RadarState (0x201)~%~%bool ReadStatus~%bool WriteStatus~%bool VoltageError~%bool TemporaryError~%bool TemperatureError~%bool Interference~%bool PersistentError~%uint16 MaxDistance~%int8 SensorID~%int8 SortIndex~%int8 RadarPower~%bool CtrlRelay~%int8 OutputType~%bool SendQuality~%bool SendExtInfo~%int8 MotionRxState~%bool RCSThreshold~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'radar_state)))
  "Returns full string definition for message of type 'radar_state"
  (cl:format cl:nil "# RadarState (0x201)~%~%bool ReadStatus~%bool WriteStatus~%bool VoltageError~%bool TemporaryError~%bool TemperatureError~%bool Interference~%bool PersistentError~%uint16 MaxDistance~%int8 SensorID~%int8 SortIndex~%int8 RadarPower~%bool CtrlRelay~%int8 OutputType~%bool SendQuality~%bool SendExtInfo~%int8 MotionRxState~%bool RCSThreshold~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <radar_state>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     2
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <radar_state>))
  "Converts a ROS message object to a list"
  (cl:list 'radar_state
    (cl:cons ':ReadStatus (ReadStatus msg))
    (cl:cons ':WriteStatus (WriteStatus msg))
    (cl:cons ':VoltageError (VoltageError msg))
    (cl:cons ':TemporaryError (TemporaryError msg))
    (cl:cons ':TemperatureError (TemperatureError msg))
    (cl:cons ':Interference (Interference msg))
    (cl:cons ':PersistentError (PersistentError msg))
    (cl:cons ':MaxDistance (MaxDistance msg))
    (cl:cons ':SensorID (SensorID msg))
    (cl:cons ':SortIndex (SortIndex msg))
    (cl:cons ':RadarPower (RadarPower msg))
    (cl:cons ':CtrlRelay (CtrlRelay msg))
    (cl:cons ':OutputType (OutputType msg))
    (cl:cons ':SendQuality (SendQuality msg))
    (cl:cons ':SendExtInfo (SendExtInfo msg))
    (cl:cons ':MotionRxState (MotionRxState msg))
    (cl:cons ':RCSThreshold (RCSThreshold msg))
))
