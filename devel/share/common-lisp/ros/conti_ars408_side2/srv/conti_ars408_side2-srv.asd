
(cl:in-package :asdf)

(defsystem "conti_ars408_side2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "config_MaxDistance" :depends-on ("_package_config_MaxDistance"))
    (:file "_package_config_MaxDistance" :depends-on ("_package"))
    (:file "config_OutputType" :depends-on ("_package_config_OutputType"))
    (:file "_package_config_OutputType" :depends-on ("_package"))
    (:file "config_RCSThreshold" :depends-on ("_package_config_RCSThreshold"))
    (:file "_package_config_RCSThreshold" :depends-on ("_package"))
    (:file "config_RadarPower" :depends-on ("_package_config_RadarPower"))
    (:file "_package_config_RadarPower" :depends-on ("_package"))
    (:file "config_SensorID" :depends-on ("_package_config_SensorID"))
    (:file "_package_config_SensorID" :depends-on ("_package"))
    (:file "config_SortIndex" :depends-on ("_package_config_SortIndex"))
    (:file "_package_config_SortIndex" :depends-on ("_package"))
  ))