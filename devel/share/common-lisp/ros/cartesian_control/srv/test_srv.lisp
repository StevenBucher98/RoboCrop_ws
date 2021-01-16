; Auto-generated. Do not edit!


(cl:in-package cartesian_control-srv)


;//! \htmlinclude test_srv-request.msg.html

(cl:defclass <test_srv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass test_srv-request (<test_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_control-srv:<test_srv-request> is deprecated: use cartesian_control-srv:test_srv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_srv-request>) ostream)
  "Serializes a message object of type '<test_srv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_srv-request>) istream)
  "Deserializes a message object of type '<test_srv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_srv-request>)))
  "Returns string type for a service object of type '<test_srv-request>"
  "cartesian_control/test_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv-request)))
  "Returns string type for a service object of type 'test_srv-request"
  "cartesian_control/test_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_srv-request>)))
  "Returns md5sum for a message object of type '<test_srv-request>"
  "7a7ab05b8c54168563cc1cb286c04fa8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_srv-request)))
  "Returns md5sum for a message object of type 'test_srv-request"
  "7a7ab05b8c54168563cc1cb286c04fa8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_srv-request>)))
  "Returns full string definition for message of type '<test_srv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_srv-request)))
  "Returns full string definition for message of type 'test_srv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_srv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'test_srv-request
))
;//! \htmlinclude test_srv-response.msg.html

(cl:defclass <test_srv-response> (roslisp-msg-protocol:ros-message)
  ((desc
    :reader desc
    :initarg :desc
    :type cl:string
    :initform "")
   (response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass test_srv-response (<test_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_control-srv:<test_srv-response> is deprecated: use cartesian_control-srv:test_srv-response instead.")))

(cl:ensure-generic-function 'desc-val :lambda-list '(m))
(cl:defmethod desc-val ((m <test_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control-srv:desc-val is deprecated.  Use cartesian_control-srv:desc instead.")
  (desc m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <test_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control-srv:response-val is deprecated.  Use cartesian_control-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_srv-response>) ostream)
  "Serializes a message object of type '<test_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'desc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'desc))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_srv-response>) istream)
  "Deserializes a message object of type '<test_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'desc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_srv-response>)))
  "Returns string type for a service object of type '<test_srv-response>"
  "cartesian_control/test_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv-response)))
  "Returns string type for a service object of type 'test_srv-response"
  "cartesian_control/test_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_srv-response>)))
  "Returns md5sum for a message object of type '<test_srv-response>"
  "7a7ab05b8c54168563cc1cb286c04fa8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_srv-response)))
  "Returns md5sum for a message object of type 'test_srv-response"
  "7a7ab05b8c54168563cc1cb286c04fa8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_srv-response>)))
  "Returns full string definition for message of type '<test_srv-response>"
  (cl:format cl:nil "string desc~%bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_srv-response)))
  "Returns full string definition for message of type 'test_srv-response"
  (cl:format cl:nil "string desc~%bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'desc))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'test_srv-response
    (cl:cons ':desc (desc msg))
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'test_srv)))
  'test_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'test_srv)))
  'test_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv)))
  "Returns string type for a service object of type '<test_srv>"
  "cartesian_control/test_srv")