;; Auto-generated. Do not edit!


(when (boundp 'conti_ars408::config_SortIndex)
  (if (not (find-package "CONTI_ARS408"))
    (make-package "CONTI_ARS408"))
  (shadow 'config_SortIndex (find-package "CONTI_ARS408")))
(unless (find-package "CONTI_ARS408::CONFIG_SORTINDEX")
  (make-package "CONTI_ARS408::CONFIG_SORTINDEX"))
(unless (find-package "CONTI_ARS408::CONFIG_SORTINDEXREQUEST")
  (make-package "CONTI_ARS408::CONFIG_SORTINDEXREQUEST"))
(unless (find-package "CONTI_ARS408::CONFIG_SORTINDEXRESPONSE")
  (make-package "CONTI_ARS408::CONFIG_SORTINDEXRESPONSE"))

(in-package "ROS")





(defclass conti_ars408::config_SortIndexRequest
  :super ros::object
  :slots (_sort_index ))

(defmethod conti_ars408::config_SortIndexRequest
  (:init
   (&key
    ((:sort_index __sort_index) 0)
    )
   (send-super :init)
   (setq _sort_index (round __sort_index))
   self)
  (:sort_index
   (&optional __sort_index)
   (if __sort_index (setq _sort_index __sort_index)) _sort_index)
  (:serialization-length
   ()
   (+
    ;; uint8 _sort_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sort_index
       (write-byte _sort_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sort_index
     (setq _sort_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conti_ars408::config_SortIndexResponse
  :super ros::object
  :slots ())

(defmethod conti_ars408::config_SortIndexResponse
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

(defclass conti_ars408::config_SortIndex
  :super ros::object
  :slots ())

(setf (get conti_ars408::config_SortIndex :md5sum-) "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(setf (get conti_ars408::config_SortIndex :datatype-) "conti_ars408/config_SortIndex")
(setf (get conti_ars408::config_SortIndex :request) conti_ars408::config_SortIndexRequest)
(setf (get conti_ars408::config_SortIndex :response) conti_ars408::config_SortIndexResponse)

(defmethod conti_ars408::config_SortIndexRequest
  (:response () (instance conti_ars408::config_SortIndexResponse :init)))

(setf (get conti_ars408::config_SortIndexRequest :md5sum-) "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(setf (get conti_ars408::config_SortIndexRequest :datatype-) "conti_ars408/config_SortIndexRequest")
(setf (get conti_ars408::config_SortIndexRequest :definition-)
      "# Selects the sorting index for the object list (ignored for
# clusters as they are always sorted by range) 

# 0x0: no sorting
# 0x1: sorted by range
# 0x2: sorted by RCS 

uint8 sort_index
---
")

(setf (get conti_ars408::config_SortIndexResponse :md5sum-) "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(setf (get conti_ars408::config_SortIndexResponse :datatype-) "conti_ars408/config_SortIndexResponse")
(setf (get conti_ars408::config_SortIndexResponse :definition-)
      "# Selects the sorting index for the object list (ignored for
# clusters as they are always sorted by range) 

# 0x0: no sorting
# 0x1: sorted by range
# 0x2: sorted by RCS 

uint8 sort_index
---
")



(provide :conti_ars408/config_SortIndex "93fb6a7e64dbd2a0708217b8ad8f0eb8")


