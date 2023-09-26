;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408::config_MaxDistance)
  (if (not (find-package "CONTI_ARS408"))
    (make-package "CONTI_ARS408"))
  (shadow 'config_MaxDistance (find-package "CONTI_ARS408")))
(unless (find-package "CONTI_ARS408::CONFIG_MAXDISTANCE")
  (make-package "CONTI_ARS408::CONFIG_MAXDISTANCE"))
(unless (find-package "CONTI_ARS408::CONFIG_MAXDISTANCEREQUEST")
  (make-package "CONTI_ARS408::CONFIG_MAXDISTANCEREQUEST"))
(unless (find-package "CONTI_ARS408::CONFIG_MAXDISTANCERESPONSE")
  (make-package "CONTI_ARS408::CONFIG_MAXDISTANCERESPONSE"))

(in-package "ROS")





(defclass conti_ars408::config_MaxDistanceRequest
  :super ros::object
  :slots (_max_distance ))

(defmethod conti_ars408::config_MaxDistanceRequest
  (:init
   (&key
    ((:max_distance __max_distance) 0)
    )
   (send-super :init)
   (setq _max_distance (round __max_distance))
   self)
  (:max_distance
   (&optional __max_distance)
   (if __max_distance (setq _max_distance __max_distance)) _max_distance)
  (:serialization-length
   ()
   (+
    ;; uint8 _max_distance
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _max_distance
       (write-byte _max_distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _max_distance
     (setq _max_distance (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conti_ars408::config_MaxDistanceResponse
  :super ros::object
  :slots ())

(defmethod conti_ars408::config_MaxDistanceResponse
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

(defclass conti_ars408::config_MaxDistance
  :super ros::object
  :slots ())

(setf (get conti_ars408::config_MaxDistance :md5sum-) "721f4b602fafb1f59d20d474bb2d42da")
(setf (get conti_ars408::config_MaxDistance :datatype-) "conti_ars408/config_MaxDistance")
(setf (get conti_ars408::config_MaxDistance :request) conti_ars408::config_MaxDistanceRequest)
(setf (get conti_ars408::config_MaxDistance :response) conti_ars408::config_MaxDistanceResponse)

(defmethod conti_ars408::config_MaxDistanceRequest
  (:response () (instance conti_ars408::config_MaxDistanceResponse :init)))

(setf (get conti_ars408::config_MaxDistanceRequest :md5sum-) "721f4b602fafb1f59d20d474bb2d42da")
(setf (get conti_ars408::config_MaxDistanceRequest :datatype-) "conti_ars408/config_MaxDistanceRequest")
(setf (get conti_ars408::config_MaxDistanceRequest :definition-)
      "# Maximum distance of far scan (near scan maximum
# distance is set proportionally to half of the far scan).
# The maximum distance will also change the range
# resolution proportionally.
# ARS408:
# Standard Range: 96 – 260 m
# Extended Range: 96 – 1200 m 

uint8 max_distance
---
")

(setf (get conti_ars408::config_MaxDistanceResponse :md5sum-) "721f4b602fafb1f59d20d474bb2d42da")
(setf (get conti_ars408::config_MaxDistanceResponse :datatype-) "conti_ars408/config_MaxDistanceResponse")
(setf (get conti_ars408::config_MaxDistanceResponse :definition-)
      "# Maximum distance of far scan (near scan maximum
# distance is set proportionally to half of the far scan).
# The maximum distance will also change the range
# resolution proportionally.
# ARS408:
# Standard Range: 96 – 260 m
# Extended Range: 96 – 1200 m 

uint8 max_distance
---
")



(provide :conti_ars408/config_MaxDistance "721f4b602fafb1f59d20d474bb2d42da")


