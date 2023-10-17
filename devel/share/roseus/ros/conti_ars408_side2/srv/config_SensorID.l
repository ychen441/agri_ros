;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408_side2::config_SensorID)
  (if (not (find-package "CONTI_ARS408_SIDE2"))
    (make-package "CONTI_ARS408_SIDE2"))
  (shadow 'config_SensorID (find-package "CONTI_ARS408_SIDE2")))
(unless (find-package "CONTI_ARS408_SIDE2::CONFIG_SENSORID")
  (make-package "CONTI_ARS408_SIDE2::CONFIG_SENSORID"))
(unless (find-package "CONTI_ARS408_SIDE2::CONFIG_SENSORIDREQUEST")
  (make-package "CONTI_ARS408_SIDE2::CONFIG_SENSORIDREQUEST"))
(unless (find-package "CONTI_ARS408_SIDE2::CONFIG_SENSORIDRESPONSE")
  (make-package "CONTI_ARS408_SIDE2::CONFIG_SENSORIDRESPONSE"))

(in-package "ROS")





(defclass conti_ars408_side2::config_SensorIDRequest
  :super ros::object
  :slots (_sensorID ))

(defmethod conti_ars408_side2::config_SensorIDRequest
  (:init
   (&key
    ((:sensorID __sensorID) 0)
    )
   (send-super :init)
   (setq _sensorID (round __sensorID))
   self)
  (:sensorID
   (&optional __sensorID)
   (if __sensorID (setq _sensorID __sensorID)) _sensorID)
  (:serialization-length
   ()
   (+
    ;; uint8 _sensorID
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sensorID
       (write-byte _sensorID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sensorID
     (setq _sensorID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conti_ars408_side2::config_SensorIDResponse
  :super ros::object
  :slots ())

(defmethod conti_ars408_side2::config_SensorIDResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass conti_ars408_side2::config_SensorID
  :super ros::object
  :slots ())

(setf (get conti_ars408_side2::config_SensorID :md5sum-) "8840ca3a2554fac83ff179bcc0342e2e")
(setf (get conti_ars408_side2::config_SensorID :datatype-) "conti_ars408_side2/config_SensorID")
(setf (get conti_ars408_side2::config_SensorID :request) conti_ars408_side2::config_SensorIDRequest)
(setf (get conti_ars408_side2::config_SensorID :response) conti_ars408_side2::config_SensorIDResponse)

(defmethod conti_ars408_side2::config_SensorIDRequest
  (:response () (instance conti_ars408_side2::config_SensorIDResponse :init)))

(setf (get conti_ars408_side2::config_SensorIDRequest :md5sum-) "8840ca3a2554fac83ff179bcc0342e2e")
(setf (get conti_ars408_side2::config_SensorIDRequest :datatype-) "conti_ars408_side2/config_SensorIDRequest")
(setf (get conti_ars408_side2::config_SensorIDRequest :definition-)
      "# Sensor ID 0 – 7

uint8 sensorID
---
")

(setf (get conti_ars408_side2::config_SensorIDResponse :md5sum-) "8840ca3a2554fac83ff179bcc0342e2e")
(setf (get conti_ars408_side2::config_SensorIDResponse :datatype-) "conti_ars408_side2/config_SensorIDResponse")
(setf (get conti_ars408_side2::config_SensorIDResponse :definition-)
      "# Sensor ID 0 – 7

uint8 sensorID
---
")



(provide :conti_ars408_side2/config_SensorID "8840ca3a2554fac83ff179bcc0342e2e")


