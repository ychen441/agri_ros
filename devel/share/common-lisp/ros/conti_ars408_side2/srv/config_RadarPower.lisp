; Auto-generated. Do not edit!


(cl:in-package conti_ars408_side2-srv)


;//! \htmlinclude config_RadarPower-request.msg.html

(cl:defclass <config_RadarPower-request> (roslisp-msg-protocol:ros-message)
  ((radar_power
    :reader radar_power
    :initarg :radar_power
    :type cl:fixnum
    :initform 0))
)

(cl:defclass config_RadarPower-request (<config_RadarPower-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_RadarPower-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_RadarPower-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_side2-srv:<config_RadarPower-request> is deprecated: use conti_ars408_side2-srv:config_RadarPower-request instead.")))

(cl:ensure-generic-function 'radar_power-val :lambda-list '(m))
(cl:defmethod radar_power-val ((m <config_RadarPower-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side2-srv:radar_power-val is deprecated.  Use conti_ars408_side2-srv:radar_power instead.")
  (radar_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_RadarPower-request>) ostream)
  "Serializes a message object of type '<config_RadarPower-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_power)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_RadarPower-request>) istream)
  "Deserializes a message object of type '<config_RadarPower-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_power)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_RadarPower-request>)))
  "Returns string type for a service object of type '<config_RadarPower-request>"
  "conti_ars408_side2/config_RadarPowerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_RadarPower-request)))
  "Returns string type for a service object of type 'config_RadarPower-request"
  "conti_ars408_side2/config_RadarPowerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_RadarPower-request>)))
  "Returns md5sum for a message object of type '<config_RadarPower-request>"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_RadarPower-request)))
  "Returns md5sum for a message object of type 'config_RadarPower-request"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_RadarPower-request>)))
  "Returns full string definition for message of type '<config_RadarPower-request>"
  (cl:format cl:nil "# Configures the transmitted radar power (Tx~%# attenuation). The output RCS of cluster and objects~%# will be compensated for this attenuation. Reducing~%# the output power can improve detection in case of~%# close range scenarios or inside rooms.~%~%# 0x0: Standard~%# 0x1: -3dB Tx gain~%# 0x2: -6dB Tx gain~%# 0x3: -9dB Tx gain ~%~%uint8 radar_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_RadarPower-request)))
  "Returns full string definition for message of type 'config_RadarPower-request"
  (cl:format cl:nil "# Configures the transmitted radar power (Tx~%# attenuation). The output RCS of cluster and objects~%# will be compensated for this attenuation. Reducing~%# the output power can improve detection in case of~%# close range scenarios or inside rooms.~%~%# 0x0: Standard~%# 0x1: -3dB Tx gain~%# 0x2: -6dB Tx gain~%# 0x3: -9dB Tx gain ~%~%uint8 radar_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_RadarPower-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_RadarPower-request>))
  "Converts a ROS message object to a list"
  (cl:list 'config_RadarPower-request
    (cl:cons ':radar_power (radar_power msg))
))
;//! \htmlinclude config_RadarPower-response.msg.html

(cl:defclass <config_RadarPower-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass config_RadarPower-response (<config_RadarPower-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_RadarPower-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_RadarPower-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_side2-srv:<config_RadarPower-response> is deprecated: use conti_ars408_side2-srv:config_RadarPower-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_RadarPower-response>) ostream)
  "Serializes a message object of type '<config_RadarPower-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_RadarPower-response>) istream)
  "Deserializes a message object of type '<config_RadarPower-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_RadarPower-response>)))
  "Returns string type for a service object of type '<config_RadarPower-response>"
  "conti_ars408_side2/config_RadarPowerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_RadarPower-response)))
  "Returns string type for a service object of type 'config_RadarPower-response"
  "conti_ars408_side2/config_RadarPowerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_RadarPower-response>)))
  "Returns md5sum for a message object of type '<config_RadarPower-response>"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_RadarPower-response)))
  "Returns md5sum for a message object of type 'config_RadarPower-response"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_RadarPower-response>)))
  "Returns full string definition for message of type '<config_RadarPower-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_RadarPower-response)))
  "Returns full string definition for message of type 'config_RadarPower-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_RadarPower-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_RadarPower-response>))
  "Converts a ROS message object to a list"
  (cl:list 'config_RadarPower-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'config_RadarPower)))
  'config_RadarPower-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'config_RadarPower)))
  'config_RadarPower-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_RadarPower)))
  "Returns string type for a service object of type '<config_RadarPower>"
  "conti_ars408_side2/config_RadarPower")