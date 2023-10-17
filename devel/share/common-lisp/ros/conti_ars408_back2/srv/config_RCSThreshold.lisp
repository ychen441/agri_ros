; Auto-generated. Do not edit!


(cl:in-package conti_ars408_back2-srv)


;//! \htmlinclude config_RCSThreshold-request.msg.html

(cl:defclass <config_RCSThreshold-request> (roslisp-msg-protocol:ros-message)
  ((rcs_threshold
    :reader rcs_threshold
    :initarg :rcs_threshold
    :type cl:fixnum
    :initform 0))
)

(cl:defclass config_RCSThreshold-request (<config_RCSThreshold-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_RCSThreshold-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_RCSThreshold-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back2-srv:<config_RCSThreshold-request> is deprecated: use conti_ars408_back2-srv:config_RCSThreshold-request instead.")))

(cl:ensure-generic-function 'rcs_threshold-val :lambda-list '(m))
(cl:defmethod rcs_threshold-val ((m <config_RCSThreshold-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_back2-srv:rcs_threshold-val is deprecated.  Use conti_ars408_back2-srv:rcs_threshold instead.")
  (rcs_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_RCSThreshold-request>) ostream)
  "Serializes a message object of type '<config_RCSThreshold-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcs_threshold)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_RCSThreshold-request>) istream)
  "Deserializes a message object of type '<config_RCSThreshold-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcs_threshold)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_RCSThreshold-request>)))
  "Returns string type for a service object of type '<config_RCSThreshold-request>"
  "conti_ars408_back2/config_RCSThresholdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_RCSThreshold-request)))
  "Returns string type for a service object of type 'config_RCSThreshold-request"
  "conti_ars408_back2/config_RCSThresholdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_RCSThreshold-request>)))
  "Returns md5sum for a message object of type '<config_RCSThreshold-request>"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_RCSThreshold-request)))
  "Returns md5sum for a message object of type 'config_RCSThreshold-request"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_RCSThreshold-request>)))
  "Returns full string definition for message of type '<config_RCSThreshold-request>"
  (cl:format cl:nil "# Sets the sensitivity of the cluster detection to~%# 0x0: Standard~%# 0x1: High sensitivity~%~%uint8 rcs_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_RCSThreshold-request)))
  "Returns full string definition for message of type 'config_RCSThreshold-request"
  (cl:format cl:nil "# Sets the sensitivity of the cluster detection to~%# 0x0: Standard~%# 0x1: High sensitivity~%~%uint8 rcs_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_RCSThreshold-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_RCSThreshold-request>))
  "Converts a ROS message object to a list"
  (cl:list 'config_RCSThreshold-request
    (cl:cons ':rcs_threshold (rcs_threshold msg))
))
;//! \htmlinclude config_RCSThreshold-response.msg.html

(cl:defclass <config_RCSThreshold-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass config_RCSThreshold-response (<config_RCSThreshold-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_RCSThreshold-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_RCSThreshold-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back2-srv:<config_RCSThreshold-response> is deprecated: use conti_ars408_back2-srv:config_RCSThreshold-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_RCSThreshold-response>) ostream)
  "Serializes a message object of type '<config_RCSThreshold-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_RCSThreshold-response>) istream)
  "Deserializes a message object of type '<config_RCSThreshold-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_RCSThreshold-response>)))
  "Returns string type for a service object of type '<config_RCSThreshold-response>"
  "conti_ars408_back2/config_RCSThresholdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_RCSThreshold-response)))
  "Returns string type for a service object of type 'config_RCSThreshold-response"
  "conti_ars408_back2/config_RCSThresholdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_RCSThreshold-response>)))
  "Returns md5sum for a message object of type '<config_RCSThreshold-response>"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_RCSThreshold-response)))
  "Returns md5sum for a message object of type 'config_RCSThreshold-response"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_RCSThreshold-response>)))
  "Returns full string definition for message of type '<config_RCSThreshold-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_RCSThreshold-response)))
  "Returns full string definition for message of type 'config_RCSThreshold-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_RCSThreshold-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_RCSThreshold-response>))
  "Converts a ROS message object to a list"
  (cl:list 'config_RCSThreshold-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'config_RCSThreshold)))
  'config_RCSThreshold-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'config_RCSThreshold)))
  'config_RCSThreshold-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_RCSThreshold)))
  "Returns string type for a service object of type '<config_RCSThreshold>"
  "conti_ars408_back2/config_RCSThreshold")