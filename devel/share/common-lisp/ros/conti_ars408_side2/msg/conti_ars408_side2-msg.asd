
(cl:in-package :asdf)

(defsystem "conti_ars408_side2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "radar_cluster" :depends-on ("_package_radar_cluster"))
    (:file "_package_radar_cluster" :depends-on ("_package"))
    (:file "radar_cluster_info" :depends-on ("_package_radar_cluster_info"))
    (:file "_package_radar_cluster_info" :depends-on ("_package"))
    (:file "radar_object" :depends-on ("_package_radar_object"))
    (:file "_package_radar_object" :depends-on ("_package"))
    (:file "radar_object_info" :depends-on ("_package_radar_object_info"))
    (:file "_package_radar_object_info" :depends-on ("_package"))
    (:file "radar_state" :depends-on ("_package_radar_state"))
    (:file "_package_radar_state" :depends-on ("_package"))
  ))