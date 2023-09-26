;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408::config_RadarPower)
  (if (not (find-package "CONTI_ARS408"))
    (make-package "CONTI_ARS408"))
  (shadow 'config_RadarPower (find-package "CONTI_ARS408")))
(unless (find-package "CONTI_ARS408::CONFIG_RADARPOWER")
  (make-package "CONTI_ARS408::CONFIG_RADARPOWER"))
(unless (find-package "CONTI_ARS408::CONFIG_RADARPOWERREQUEST")
  (make-package "CONTI_ARS408::CONFIG_RADARPOWERREQUEST"))
(unless (find-package "CONTI_ARS408::CONFIG_RADARPOWERRESPONSE")
  (make-package "CONTI_ARS408::CONFIG_RADARPOWERRESPONSE"))

(in-package "ROS")





(defclass conti_ars408::config_RadarPowerRequest
  :super ros::object
  :slots (_radar_power ))

(defmethod conti_ars408::config_RadarPowerRequest
  (:init
   (&key
    ((:radar_power __radar_power) 0)
    )
   (send-super :init)
   (setq _radar_power (round __radar_power))
   self)
  (:radar_power
   (&optional __radar_power)
   (if __radar_power (setq _radar_power __radar_power)) _radar_power)
  (:serialization-length
   ()
   (+
    ;; uint8 _radar_power
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _radar_power
       (write-byte _radar_power s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _radar_power
     (setq _radar_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conti_ars408::config_RadarPowerResponse
  :super ros::object
  :slots ())

(defmethod conti_ars408::config_RadarPowerResponse
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

(defclass conti_ars408::config_RadarPower
  :super ros::object
  :slots ())

(setf (get conti_ars408::config_RadarPower :md5sum-) "1729e07afca5fdcd752c0c577b4694e3")
(setf (get conti_ars408::config_RadarPower :datatype-) "conti_ars408/config_RadarPower")
(setf (get conti_ars408::config_RadarPower :request) conti_ars408::config_RadarPowerRequest)
(setf (get conti_ars408::config_RadarPower :response) conti_ars408::config_RadarPowerResponse)

(defmethod conti_ars408::config_RadarPowerRequest
  (:response () (instance conti_ars408::config_RadarPowerResponse :init)))

(setf (get conti_ars408::config_RadarPowerRequest :md5sum-) "1729e07afca5fdcd752c0c577b4694e3")
(setf (get conti_ars408::config_RadarPowerRequest :datatype-) "conti_ars408/config_RadarPowerRequest")
(setf (get conti_ars408::config_RadarPowerRequest :definition-)
      "# Configures the transmitted radar power (Tx
# attenuation). The output RCS of cluster and objects
# will be compensated for this attenuation. Reducing
# the output power can improve detection in case of
# close range scenarios or inside rooms.

# 0x0: Standard
# 0x1: -3dB Tx gain
# 0x2: -6dB Tx gain
# 0x3: -9dB Tx gain 

uint8 radar_power
---
")

(setf (get conti_ars408::config_RadarPowerResponse :md5sum-) "1729e07afca5fdcd752c0c577b4694e3")
(setf (get conti_ars408::config_RadarPowerResponse :datatype-) "conti_ars408/config_RadarPowerResponse")
(setf (get conti_ars408::config_RadarPowerResponse :definition-)
      "# Configures the transmitted radar power (Tx
# attenuation). The output RCS of cluster and objects
# will be compensated for this attenuation. Reducing
# the output power can improve detection in case of
# close range scenarios or inside rooms.

# 0x0: Standard
# 0x1: -3dB Tx gain
# 0x2: -6dB Tx gain
# 0x3: -9dB Tx gain 

uint8 radar_power
---
")



(provide :conti_ars408/config_RadarPower "1729e07afca5fdcd752c0c577b4694e3")


