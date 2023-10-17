; Auto-generated. Do not edit!


(cl:in-package conti_ars408_side1-srv)


;//! \htmlinclude config_OutputType-request.msg.html

(cl:defclass <config_OutputType-request> (roslisp-msg-protocol:ros-message)
  ((output_type
    :reader output_type
    :initarg :output_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass config_OutputType-request (<config_OutputType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_OutputType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_OutputType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_side1-srv:<config_OutputType-request> is deprecated: use conti_ars408_side1-srv:config_OutputType-request instead.")))

(cl:ensure-generic-function 'output_type-val :lambda-list '(m))
(cl:defmethod output_type-val ((m <config_OutputType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_side1-srv:output_type-val is deprecated.  Use conti_ars408_side1-srv:output_type instead.")
  (output_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_OutputType-request>) ostream)
  "Serializes a message object of type '<config_OutputType-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_OutputType-request>) istream)
  "Deserializes a message object of type '<config_OutputType-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_OutputType-request>)))
  "Returns string type for a service object of type '<config_OutputType-request>"
  "conti_ars408_side1/config_OutputTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_OutputType-request)))
  "Returns string type for a service object of type 'config_OutputType-request"
  "conti_ars408_side1/config_OutputTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_OutputType-request>)))
  "Returns md5sum for a message object of type '<config_OutputType-request>"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_OutputType-request)))
  "Returns md5sum for a message object of type 'config_OutputType-request"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_OutputType-request>)))
  "Returns full string definition for message of type '<config_OutputType-request>"
  (cl:format cl:nil "# Configures the data output to ~%# 0x0: none~%# 0x1: send objects~%# 0x2: send clusters~%~%uint8 output_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_OutputType-request)))
  "Returns full string definition for message of type 'config_OutputType-request"
  (cl:format cl:nil "# Configures the data output to ~%# 0x0: none~%# 0x1: send objects~%# 0x2: send clusters~%~%uint8 output_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_OutputType-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_OutputType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'config_OutputType-request
    (cl:cons ':output_type (output_type msg))
))
;//! \htmlinclude config_OutputType-response.msg.html

(cl:defclass <config_OutputType-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass config_OutputType-response (<config_OutputType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_OutputType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_OutputType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_side1-srv:<config_OutputType-response> is deprecated: use conti_ars408_side1-srv:config_OutputType-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_OutputType-response>) ostream)
  "Serializes a message object of type '<config_OutputType-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_OutputType-response>) istream)
  "Deserializes a message object of type '<config_OutputType-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_OutputType-response>)))
  "Returns string type for a service object of type '<config_OutputType-response>"
  "conti_ars408_side1/config_OutputTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_OutputType-response)))
  "Returns string type for a service object of type 'config_OutputType-response"
  "conti_ars408_side1/config_OutputTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_OutputType-response>)))
  "Returns md5sum for a message object of type '<config_OutputType-response>"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_OutputType-response)))
  "Returns md5sum for a message object of type 'config_OutputType-response"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_OutputType-response>)))
  "Returns full string definition for message of type '<config_OutputType-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_OutputType-response)))
  "Returns full string definition for message of type 'config_OutputType-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_OutputType-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_OutputType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'config_OutputType-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'config_OutputType)))
  'config_OutputType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'config_OutputType)))
  'config_OutputType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_OutputType)))
  "Returns string type for a service object of type '<config_OutputType>"
  "conti_ars408_side1/config_OutputType")