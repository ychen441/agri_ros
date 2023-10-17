; Auto-generated. Do not edit!


(cl:in-package conti_ars408_back1-srv)


;//! \htmlinclude config_SortIndex-request.msg.html

(cl:defclass <config_SortIndex-request> (roslisp-msg-protocol:ros-message)
  ((sort_index
    :reader sort_index
    :initarg :sort_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass config_SortIndex-request (<config_SortIndex-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_SortIndex-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_SortIndex-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back1-srv:<config_SortIndex-request> is deprecated: use conti_ars408_back1-srv:config_SortIndex-request instead.")))

(cl:ensure-generic-function 'sort_index-val :lambda-list '(m))
(cl:defmethod sort_index-val ((m <config_SortIndex-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conti_ars408_back1-srv:sort_index-val is deprecated.  Use conti_ars408_back1-srv:sort_index instead.")
  (sort_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_SortIndex-request>) ostream)
  "Serializes a message object of type '<config_SortIndex-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sort_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_SortIndex-request>) istream)
  "Deserializes a message object of type '<config_SortIndex-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sort_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_SortIndex-request>)))
  "Returns string type for a service object of type '<config_SortIndex-request>"
  "conti_ars408_back1/config_SortIndexRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_SortIndex-request)))
  "Returns string type for a service object of type 'config_SortIndex-request"
  "conti_ars408_back1/config_SortIndexRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_SortIndex-request>)))
  "Returns md5sum for a message object of type '<config_SortIndex-request>"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_SortIndex-request)))
  "Returns md5sum for a message object of type 'config_SortIndex-request"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_SortIndex-request>)))
  "Returns full string definition for message of type '<config_SortIndex-request>"
  (cl:format cl:nil "# Selects the sorting index for the object list (ignored for~%# clusters as they are always sorted by range) ~%~%# 0x0: no sorting~%# 0x1: sorted by range~%# 0x2: sorted by RCS ~%~%uint8 sort_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_SortIndex-request)))
  "Returns full string definition for message of type 'config_SortIndex-request"
  (cl:format cl:nil "# Selects the sorting index for the object list (ignored for~%# clusters as they are always sorted by range) ~%~%# 0x0: no sorting~%# 0x1: sorted by range~%# 0x2: sorted by RCS ~%~%uint8 sort_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_SortIndex-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_SortIndex-request>))
  "Converts a ROS message object to a list"
  (cl:list 'config_SortIndex-request
    (cl:cons ':sort_index (sort_index msg))
))
;//! \htmlinclude config_SortIndex-response.msg.html

(cl:defclass <config_SortIndex-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass config_SortIndex-response (<config_SortIndex-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_SortIndex-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_SortIndex-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conti_ars408_back1-srv:<config_SortIndex-response> is deprecated: use conti_ars408_back1-srv:config_SortIndex-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_SortIndex-response>) ostream)
  "Serializes a message object of type '<config_SortIndex-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_SortIndex-response>) istream)
  "Deserializes a message object of type '<config_SortIndex-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_SortIndex-response>)))
  "Returns string type for a service object of type '<config_SortIndex-response>"
  "conti_ars408_back1/config_SortIndexResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_SortIndex-response)))
  "Returns string type for a service object of type 'config_SortIndex-response"
  "conti_ars408_back1/config_SortIndexResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_SortIndex-response>)))
  "Returns md5sum for a message object of type '<config_SortIndex-response>"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_SortIndex-response)))
  "Returns md5sum for a message object of type 'config_SortIndex-response"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_SortIndex-response>)))
  "Returns full string definition for message of type '<config_SortIndex-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_SortIndex-response)))
  "Returns full string definition for message of type 'config_SortIndex-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_SortIndex-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_SortIndex-response>))
  "Converts a ROS message object to a list"
  (cl:list 'config_SortIndex-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'config_SortIndex)))
  'config_SortIndex-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'config_SortIndex)))
  'config_SortIndex-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_SortIndex)))
  "Returns string type for a service object of type '<config_SortIndex>"
  "conti_ars408_back1/config_SortIndex")