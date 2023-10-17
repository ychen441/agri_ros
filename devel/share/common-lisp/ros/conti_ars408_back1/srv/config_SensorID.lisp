; Auto-generated. Do not edit!


(cl:in-package conti_ars408_back1-srv)


;//! \htmlinclude config_SensorID-request.msg.html

(cl:defclass <config_SensorID-request> (roslisp-msg-protocol:ros-message)
  ((sensorID
    :reader sensorID
    :initarg :sensorID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass config_SensorID-request (<config_SensorID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_SensorID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_SensorID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back1-srv:<config_SensorID-request> is deprecated: use conti_ars408_back1-srv:config_SensorID-request instead.")))

(cl:ensure-generic-function 'sensorID-val :lambda-list '(m))
(cl:defmethod sensorID-val ((m <config_SensorID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_back1-srv:sensorID-val is deprecated.  Use conti_ars408_back1-srv:sensorID instead.")
  (sensorID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_SensorID-request>) ostream)
  "Serializes a message object of type '<config_SensorID-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorID)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_SensorID-request>) istream)
  "Deserializes a message object of type '<config_SensorID-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorID)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_SensorID-request>)))
  "Returns string type for a service object of type '<config_SensorID-request>"
  "conti_ars408_back1/config_SensorIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_SensorID-request)))
  "Returns string type for a service object of type 'config_SensorID-request"
  "conti_ars408_back1/config_SensorIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_SensorID-request>)))
  "Returns md5sum for a message object of type '<config_SensorID-request>"
  "8840ca3a2554fac83ff179bcc0342e2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_SensorID-request)))
  "Returns md5sum for a message object of type 'config_SensorID-request"
  "8840ca3a2554fac83ff179bcc0342e2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_SensorID-request>)))
  "Returns full string definition for message of type '<config_SensorID-request>"
  (cl:format cl:nil "# Sensor ID 0 – 7~%~%uint8 sensorID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_SensorID-request)))
  "Returns full string definition for message of type 'config_SensorID-request"
  (cl:format cl:nil "# Sensor ID 0 – 7~%~%uint8 sensorID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_SensorID-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_SensorID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'config_SensorID-request
    (cl:cons ':sensorID (sensorID msg))
))
;//! \htmlinclude config_SensorID-response.msg.html

(cl:defclass <config_SensorID-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass config_SensorID-response (<config_SensorID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_SensorID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_SensorID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back1-srv:<config_SensorID-response> is deprecated: use conti_ars408_back1-srv:config_SensorID-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_SensorID-response>) ostream)
  "Serializes a message object of type '<config_SensorID-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_SensorID-response>) istream)
  "Deserializes a message object of type '<config_SensorID-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_SensorID-response>)))
  "Returns string type for a service object of type '<config_SensorID-response>"
  "conti_ars408_back1/config_SensorIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_SensorID-response)))
  "Returns string type for a service object of type 'config_SensorID-response"
  "conti_ars408_back1/config_SensorIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_SensorID-response>)))
  "Returns md5sum for a message object of type '<config_SensorID-response>"
  "8840ca3a2554fac83ff179bcc0342e2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_SensorID-response)))
  "Returns md5sum for a message object of type 'config_SensorID-response"
  "8840ca3a2554fac83ff179bcc0342e2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_SensorID-response>)))
  "Returns full string definition for message of type '<config_SensorID-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_SensorID-response)))
  "Returns full string definition for message of type 'config_SensorID-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_SensorID-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_SensorID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'config_SensorID-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'config_SensorID)))
  'config_SensorID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'config_SensorID)))
  'config_SensorID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_SensorID)))
  "Returns string type for a service object of type '<config_SensorID>"
  "conti_ars408_back1/config_SensorID")