;; Auto-generated. Do not edit!


(when (boundp 'conti_ARS408::config_RCSThreshold)
  (if (not (find-package "CONTI_ARS408"))
    (make-package "CONTI_ARS408"))
  (shadow 'config_RCSThreshold (find-package "CONTI_ARS408")))
(unless (find-package "CONTI_ARS408::CONFIG_RCSTHRESHOLD")
  (make-package "CONTI_ARS408::CONFIG_RCSTHRESHOLD"))
(unless (find-package "CONTI_ARS408::CONFIG_RCSTHRESHOLDREQUEST")
  (make-package "CONTI_ARS408::CONFIG_RCSTHRESHOLDREQUEST"))
(unless (find-package "CONTI_ARS408::CONFIG_RCSTHRESHOLDRESPONSE")
  (make-package "CONTI_ARS408::CONFIG_RCSTHRESHOLDRESPONSE"))

(in-package "ROS")





(defclass conti_ARS408::config_RCSThresholdRequest
  :super ros::object
  :slots (_rcs_threshold ))

(defmethod conti_ARS408::config_RCSThresholdRequest
  (:init
   (&key
    ((:rcs_threshold __rcs_threshold) 0)
    )
   (send-super :init)
   (setq _rcs_threshold (round __rcs_threshold))
   self)
  (:rcs_threshold
   (&optional __rcs_threshold)
   (if __rcs_threshold (setq _rcs_threshold __rcs_threshold)) _rcs_threshold)
  (:serialization-length
   ()
   (+
    ;; uint8 _rcs_threshold
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _rcs_threshold
       (write-byte _rcs_threshold s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _rcs_threshold
     (setq _rcs_threshold (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conti_ARS408::config_RCSThresholdResponse
  :super ros::object
  :slots ())

(defmethod conti_ARS408::config_RCSThresholdResponse
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

(defclass conti_ARS408::config_RCSThreshold
  :super ros::object
  :slots ())

(setf (get conti_ARS408::config_RCSThreshold :md5sum-) "2395c11d5141075461a6a21a788a2778")
(setf (get conti_ARS408::config_RCSThreshold :datatype-) "conti_ARS408/config_RCSThreshold")
(setf (get conti_ARS408::config_RCSThreshold :request) conti_ARS408::config_RCSThresholdRequest)
(setf (get conti_ARS408::config_RCSThreshold :response) conti_ARS408::config_RCSThresholdResponse)

(defmethod conti_ARS408::config_RCSThresholdRequest
  (:response () (instance conti_ARS408::config_RCSThresholdResponse :init)))

(setf (get conti_ARS408::config_RCSThresholdRequest :md5sum-) "2395c11d5141075461a6a21a788a2778")
(setf (get conti_ARS408::config_RCSThresholdRequest :datatype-) "conti_ARS408/config_RCSThresholdRequest")
(setf (get conti_ARS408::config_RCSThresholdRequest :definition-)
      "# Sets the sensitivity of the cluster detection to
# 0x0: Standard
# 0x1: High sensitivity

uint8 rcs_threshold
---
")

(setf (get conti_ARS408::config_RCSThresholdResponse :md5sum-) "2395c11d5141075461a6a21a788a2778")
(setf (get conti_ARS408::config_RCSThresholdResponse :datatype-) "conti_ARS408/config_RCSThresholdResponse")
(setf (get conti_ARS408::config_RCSThresholdResponse :definition-)
      "# Sets the sensitivity of the cluster detection to
# 0x0: Standard
# 0x1: High sensitivity

uint8 rcs_threshold
---
")



(provide :conti_ARS408/config_RCSThreshold "2395c11d5141075461a6a21a788a2778")


