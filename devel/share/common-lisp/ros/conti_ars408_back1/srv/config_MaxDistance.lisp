; Auto-generated. Do not edit!


(cl:in-package conti_ars408_back1-srv)


;//! \htmlinclude config_MaxDistance-request.msg.html

(cl:defclass <config_MaxDistance-request> (roslisp-msg-protocol:ros-message)
  ((max_distance
    :reader max_distance
    :initarg :max_distance
    :type cl:fixnum
    :initform 0))
)

(cl:defclass config_MaxDistance-request (<config_MaxDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_MaxDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_MaxDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back1-srv:<config_MaxDistance-request> is deprecated: use conti_ars408_back1-srv:config_MaxDistance-request instead.")))

(cl:ensure-generic-function 'max_distance-val :lambda-list '(m))
(cl:defmethod max_distance-val ((m <config_MaxDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_back1-srv:max_distance-val is deprecated.  Use conti_ars408_back1-srv:max_distance instead.")
  (max_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_MaxDistance-request>) ostream)
  "Serializes a message object of type '<config_MaxDistance-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_distance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_MaxDistance-request>) istream)
  "Deserializes a message object of type '<config_MaxDistance-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_distance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_MaxDistance-request>)))
  "Returns string type for a service object of type '<config_MaxDistance-request>"
  "conti_ars408_back1/config_MaxDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_MaxDistance-request)))
  "Returns string type for a service object of type 'config_MaxDistance-request"
  "conti_ars408_back1/config_MaxDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_MaxDistance-request>)))
  "Returns md5sum for a message object of type '<config_MaxDistance-request>"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_MaxDistance-request)))
  "Returns md5sum for a message object of type 'config_MaxDistance-request"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_MaxDistance-request>)))
  "Returns full string definition for message of type '<config_MaxDistance-request>"
  (cl:format cl:nil "# Maximum distance of far scan (near scan maximum~%# distance is set proportionally to half of the far scan).~%# The maximum distance will also change the range~%# resolution proportionally.~%# ARS408:~%# Standard Range: 96 – 260 m~%# Extended Range: 96 – 1200 m ~%~%uint8 max_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_MaxDistance-request)))
  "Returns full string definition for message of type 'config_MaxDistance-request"
  (cl:format cl:nil "# Maximum distance of far scan (near scan maximum~%# distance is set proportionally to half of the far scan).~%# The maximum distance will also change the range~%# resolution proportionally.~%# ARS408:~%# Standard Range: 96 – 260 m~%# Extended Range: 96 – 1200 m ~%~%uint8 max_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_MaxDistance-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_MaxDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'config_MaxDistance-request
    (cl:cons ':max_distance (max_distance msg))
))
;//! \htmlinclude config_MaxDistance-response.msg.html

(cl:defclass <config_MaxDistance-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass config_MaxDistance-response (<config_MaxDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_MaxDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_MaxDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back1-srv:<config_MaxDistance-response> is deprecated: use conti_ars408_back1-srv:config_MaxDistance-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_MaxDistance-response>) ostream)
  "Serializes a message object of type '<config_MaxDistance-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_MaxDistance-response>) istream)
  "Deserializes a message object of type '<config_MaxDistance-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_MaxDistance-response>)))
  "Returns string type for a service object of type '<config_MaxDistance-response>"
  "conti_ars408_back1/config_MaxDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_MaxDistance-response)))
  "Returns string type for a service object of type 'config_MaxDistance-response"
  "conti_ars408_back1/config_MaxDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_MaxDistance-response>)))
  "Returns md5sum for a message object of type '<config_MaxDistance-response>"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_MaxDistance-response)))
  "Returns md5sum for a message object of type 'config_MaxDistance-response"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_MaxDistance-response>)))
  "Returns full string definition for message of type '<config_MaxDistance-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_MaxDistance-response)))
  "Returns full string definition for message of type 'config_MaxDistance-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_MaxDistance-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_MaxDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'config_MaxDistance-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'config_MaxDistance)))
  'config_MaxDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'config_MaxDistance)))
  'config_MaxDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_MaxDistance)))
  "Returns string type for a service object of type '<config_MaxDistance>"
  "conti_ars408_back1/config_MaxDistance")