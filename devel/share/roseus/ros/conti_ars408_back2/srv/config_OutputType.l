;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408_back2::config_OutputType)
  (if (not (find-package "CONTI_ARS408_BACK2"))
    (make-package "CONTI_ARS408_BACK2"))
  (shadow 'config_OutputType (find-package "CONTI_ARS408_BACK2")))
(unless (find-package "CONTI_ARS408_BACK2::CONFIG_OUTPUTTYPE")
  (make-package "CONTI_ARS408_BACK2::CONFIG_OUTPUTTYPE"))
(unless (find-package "CONTI_ARS408_BACK2::CONFIG_OUTPUTTYPEREQUEST")
  (make-package "CONTI_ARS408_BACK2::CONFIG_OUTPUTTYPEREQUEST"))
(unless (find-package "CONTI_ARS408_BACK2::CONFIG_OUTPUTTYPERESPONSE")
  (make-package "CONTI_ARS408_BACK2::CONFIG_OUTPUTTYPERESPONSE"))

(in-package "ROS")





(defclass conti_ars408_back2::config_OutputTypeRequest
  :super ros::object
  :slots (_output_type ))

(defmethod conti_ars408_back2::config_OutputTypeRequest
  (:init
   (&key
    ((:output_type __output_type) 0)
    )
   (send-super :init)
   (setq _output_type (round __output_type))
   self)
  (:output_type
   (&optional __output_type)
   (if __output_type (setq _output_type __output_type)) _output_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _output_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _output_type
       (write-byte _output_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _output_type
     (setq _output_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conti_ars408_back2::config_OutputTypeResponse
  :super ros::object
  :slots ())

(defmethod conti_ars408_back2::config_OutputTypeResponse
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

(defclass conti_ars408_back2::config_OutputType
  :super ros::object
  :slots ())

(setf (get conti_ars408_back2::config_OutputType :md5sum-) "84258bdfadc436fc1e07d471616d0a90")
(setf (get conti_ars408_back2::config_OutputType :datatype-) "conti_ars408_back2/config_OutputType")
(setf (get conti_ars408_back2::config_OutputType :request) conti_ars408_back2::config_OutputTypeRequest)
(setf (get conti_ars408_back2::config_OutputType :response) conti_ars408_back2::config_OutputTypeResponse)

(defmethod conti_ars408_back2::config_OutputTypeRequest
  (:response () (instance conti_ars408_back2::config_OutputTypeResponse :init)))

(setf (get conti_ars408_back2::config_OutputTypeRequest :md5sum-) "84258bdfadc436fc1e07d471616d0a90")
(setf (get conti_ars408_back2::config_OutputTypeRequest :datatype-) "conti_ars408_back2/config_OutputTypeRequest")
(setf (get conti_ars408_back2::config_OutputTypeRequest :definition-)
      "# Configures the data output to 
# 0x0: none
# 0x1: send objects
# 0x2: send clusters

uint8 output_type
---
")

(setf (get conti_ars408_back2::config_OutputTypeResponse :md5sum-) "84258bdfadc436fc1e07d471616d0a90")
(setf (get conti_ars408_back2::config_OutputTypeResponse :datatype-) "conti_ars408_back2/config_OutputTypeResponse")
(setf (get conti_ars408_back2::config_OutputTypeResponse :definition-)
      "# Configures the data output to 
# 0x0: none
# 0x1: send objects
# 0x2: send clusters

uint8 output_type
---
")



(provide :conti_ars408_back2/config_OutputType "84258bdfadc436fc1e07d471616d0a90")


