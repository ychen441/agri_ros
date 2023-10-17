;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408_back2::radar_state)
  (if (not (find-package "CONTI_ARS408_BACK2"))
    (make-package "CONTI_ARS408_BACK2"))
  (shadow 'radar_state (find-package "CONTI_ARS408_BACK2")))
(unless (find-package "CONTI_ARS408_BACK2::RADAR_STATE")
  (make-package "CONTI_ARS408_BACK2::RADAR_STATE"))

(in-package "ROS")
;;//! \htmlinclude radar_state.msg.html


(defclass conti_ars408_back2::radar_state
  :super ros::object
  :slots (_ReadStatus _WriteStatus _VoltageError _TemporaryError _TemperatureError _Interference _PersistentError _MaxDistance _SensorID _SortIndex _RadarPower _CtrlRelay _OutputType _SendQuality _SendExtInfo _MotionRxState _RCSThreshold ))

(defmethod conti_ars408_back2::radar_state
  (:init
   (&key
    ((:ReadStatus __ReadStatus) nil)
    ((:WriteStatus __WriteStatus) nil)
    ((:VoltageError __VoltageError) nil)
    ((:TemporaryError __TemporaryError) nil)
    ((:TemperatureError __TemperatureError) nil)
    ((:Interference __Interference) nil)
    ((:PersistentError __PersistentError) nil)
    ((:MaxDistance __MaxDistance) 0)
    ((:SensorID __SensorID) 0)
    ((:SortIndex __SortIndex) 0)
    ((:RadarPower __RadarPower) 0)
    ((:CtrlRelay __CtrlRelay) nil)
    ((:OutputType __OutputType) 0)
    ((:SendQuality __SendQuality) nil)
    ((:SendExtInfo __SendExtInfo) nil)
    ((:MotionRxState __MotionRxState) 0)
    ((:RCSThreshold __RCSThreshold) nil)
    )
   (send-super :init)
   (setq _ReadStatus __ReadStatus)
   (setq _WriteStatus __WriteStatus)
   (setq _VoltageError __VoltageError)
   (setq _TemporaryError __TemporaryError)
   (setq _TemperatureError __TemperatureError)
   (setq _Interference __Interference)
   (setq _PersistentError __PersistentError)
   (setq _MaxDistance (round __MaxDistance))
   (setq _SensorID (round __SensorID))
   (setq _SortIndex (round __SortIndex))
   (setq _RadarPower (round __RadarPower))
   (setq _CtrlRelay __CtrlRelay)
   (setq _OutputType (round __OutputType))
   (setq _SendQuality __SendQuality)
   (setq _SendExtInfo __SendExtInfo)
   (setq _MotionRxState (round __MotionRxState))
   (setq _RCSThreshold __RCSThreshold)
   self)
  (:ReadStatus
   (&optional (__ReadStatus :null))
   (if (not (eq __ReadStatus :null)) (setq _ReadStatus __ReadStatus)) _ReadStatus)
  (:WriteStatus
   (&optional (__WriteStatus :null))
   (if (not (eq __WriteStatus :null)) (setq _WriteStatus __WriteStatus)) _WriteStatus)
  (:VoltageError
   (&optional (__VoltageError :null))
   (if (not (eq __VoltageError :null)) (setq _VoltageError __VoltageError)) _VoltageError)
  (:TemporaryError
   (&optional (__TemporaryError :null))
   (if (not (eq __TemporaryError :null)) (setq _TemporaryError __TemporaryError)) _TemporaryError)
  (:TemperatureError
   (&optional (__TemperatureError :null))
   (if (not (eq __TemperatureError :null)) (setq _TemperatureError __TemperatureError)) _TemperatureError)
  (:Interference
   (&optional (__Interference :null))
   (if (not (eq __Interference :null)) (setq _Interference __Interference)) _Interference)
  (:PersistentError
   (&optional (__PersistentError :null))
   (if (not (eq __PersistentError :null)) (setq _PersistentError __PersistentError)) _PersistentError)
  (:MaxDistance
   (&optional __MaxDistance)
   (if __MaxDistance (setq _MaxDistance __MaxDistance)) _MaxDistance)
  (:SensorID
   (&optional __SensorID)
   (if __SensorID (setq _SensorID __SensorID)) _SensorID)
  (:SortIndex
   (&optional __SortIndex)
   (if __SortIndex (setq _SortIndex __SortIndex)) _SortIndex)
  (:RadarPower
   (&optional __RadarPower)
   (if __RadarPower (setq _RadarPower __RadarPower)) _RadarPower)
  (:CtrlRelay
   (&optional (__CtrlRelay :null))
   (if (not (eq __CtrlRelay :null)) (setq _CtrlRelay __CtrlRelay)) _CtrlRelay)
  (:OutputType
   (&optional __OutputType)
   (if __OutputType (setq _OutputType __OutputType)) _OutputType)
  (:SendQuality
   (&optional (__SendQuality :null))
   (if (not (eq __SendQuality :null)) (setq _SendQuality __SendQuality)) _SendQuality)
  (:SendExtInfo
   (&optional (__SendExtInfo :null))
   (if (not (eq __SendExtInfo :null)) (setq _SendExtInfo __SendExtInfo)) _SendExtInfo)
  (:MotionRxState
   (&optional __MotionRxState)
   (if __MotionRxState (setq _MotionRxState __MotionRxState)) _MotionRxState)
  (:RCSThreshold
   (&optional (__RCSThreshold :null))
   (if (not (eq __RCSThreshold :null)) (setq _RCSThreshold __RCSThreshold)) _RCSThreshold)
  (:serialization-length
   ()
   (+
    ;; bool _ReadStatus
    1
    ;; bool _WriteStatus
    1
    ;; bool _VoltageError
    1
    ;; bool _TemporaryError
    1
    ;; bool _TemperatureError
    1
    ;; bool _Interference
    1
    ;; bool _PersistentError
    1
    ;; uint16 _MaxDistance
    2
    ;; int8 _SensorID
    1
    ;; int8 _SortIndex
    1
    ;; int8 _RadarPower
    1
    ;; bool _CtrlRelay
    1
    ;; int8 _OutputType
    1
    ;; bool _SendQuality
    1
    ;; bool _SendExtInfo
    1
    ;; int8 _MotionRxState
    1
    ;; bool _RCSThreshold
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ReadStatus
       (if _ReadStatus (write-byte -1 s) (write-byte 0 s))
     ;; bool _WriteStatus
       (if _WriteStatus (write-byte -1 s) (write-byte 0 s))
     ;; bool _VoltageError
       (if _VoltageError (write-byte -1 s) (write-byte 0 s))
     ;; bool _TemporaryError
       (if _TemporaryError (write-byte -1 s) (write-byte 0 s))
     ;; bool _TemperatureError
       (if _TemperatureError (write-byte -1 s) (write-byte 0 s))
     ;; bool _Interference
       (if _Interference (write-byte -1 s) (write-byte 0 s))
     ;; bool _PersistentError
       (if _PersistentError (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _MaxDistance
       (write-word _MaxDistance s)
     ;; int8 _SensorID
       (write-byte _SensorID s)
     ;; int8 _SortIndex
       (write-byte _SortIndex s)
     ;; int8 _RadarPower
       (write-byte _RadarPower s)
     ;; bool _CtrlRelay
       (if _CtrlRelay (write-byte -1 s) (write-byte 0 s))
     ;; int8 _OutputType
       (write-byte _OutputType s)
     ;; bool _SendQuality
       (if _SendQuality (write-byte -1 s) (write-byte 0 s))
     ;; bool _SendExtInfo
       (if _SendExtInfo (write-byte -1 s) (write-byte 0 s))
     ;; int8 _MotionRxState
       (write-byte _MotionRxState s)
     ;; bool _RCSThreshold
       (if _RCSThreshold (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ReadStatus
     (setq _ReadStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _WriteStatus
     (setq _WriteStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _VoltageError
     (setq _VoltageError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TemporaryError
     (setq _TemporaryError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TemperatureError
     (setq _TemperatureError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Interference
     (setq _Interference (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PersistentError
     (setq _PersistentError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _MaxDistance
     (setq _MaxDistance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _SensorID
     (setq _SensorID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _SensorID 127) (setq _SensorID (- _SensorID 256)))
   ;; int8 _SortIndex
     (setq _SortIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _SortIndex 127) (setq _SortIndex (- _SortIndex 256)))
   ;; int8 _RadarPower
     (setq _RadarPower (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RadarPower 127) (setq _RadarPower (- _RadarPower 256)))
   ;; bool _CtrlRelay
     (setq _CtrlRelay (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _OutputType
     (setq _OutputType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _OutputType 127) (setq _OutputType (- _OutputType 256)))
   ;; bool _SendQuality
     (setq _SendQuality (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SendExtInfo
     (setq _SendExtInfo (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _MotionRxState
     (setq _MotionRxState (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _MotionRxState 127) (setq _MotionRxState (- _MotionRxState 256)))
   ;; bool _RCSThreshold
     (setq _RCSThreshold (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get conti_ars408_back2::radar_state :md5sum-) "009d15dd11f0e87306d45f2901569726")
(setf (get conti_ars408_back2::radar_state :datatype-) "conti_ars408_back2/radar_state")
(setf (get conti_ars408_back2::radar_state :definition-)
      "# RadarState (0x201)

bool ReadStatus
bool WriteStatus
bool VoltageError
bool TemporaryError
bool TemperatureError
bool Interference
bool PersistentError
uint16 MaxDistance
int8 SensorID
int8 SortIndex
int8 RadarPower
bool CtrlRelay
int8 OutputType
bool SendQuality
bool SendExtInfo
int8 MotionRxState
bool RCSThreshold
")



(provide :conti_ars408_back2/radar_state "009d15dd11f0e87306d45f2901569726")


