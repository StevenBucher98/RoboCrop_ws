; Auto-generated. Do not edit!


(cl:in-package controller-srv)


;//! \htmlinclude relaycontrol-request.msg.html

(cl:defclass <relaycontrol-request> (roslisp-msg-protocol:ros-message)
  ((caller
    :reader caller
    :initarg :caller
    :type cl:string
    :initform "")
   (relay1
    :reader relay1
    :initarg :relay1
    :type cl:boolean
    :initform cl:nil)
   (relay2
    :reader relay2
    :initarg :relay2
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass relaycontrol-request (<relaycontrol-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <relaycontrol-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'relaycontrol-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-srv:<relaycontrol-request> is deprecated: use controller-srv:relaycontrol-request instead.")))

(cl:ensure-generic-function 'caller-val :lambda-list '(m))
(cl:defmethod caller-val ((m <relaycontrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:caller-val is deprecated.  Use controller-srv:caller instead.")
  (caller m))

(cl:ensure-generic-function 'relay1-val :lambda-list '(m))
(cl:defmethod relay1-val ((m <relaycontrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:relay1-val is deprecated.  Use controller-srv:relay1 instead.")
  (relay1 m))

(cl:ensure-generic-function 'relay2-val :lambda-list '(m))
(cl:defmethod relay2-val ((m <relaycontrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:relay2-val is deprecated.  Use controller-srv:relay2 instead.")
  (relay2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <relaycontrol-request>) ostream)
  "Serializes a message object of type '<relaycontrol-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'caller))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'caller))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relay1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relay2) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <relaycontrol-request>) istream)
  "Deserializes a message object of type '<relaycontrol-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'caller) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'caller) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'relay1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'relay2) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<relaycontrol-request>)))
  "Returns string type for a service object of type '<relaycontrol-request>"
  "controller/relaycontrolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'relaycontrol-request)))
  "Returns string type for a service object of type 'relaycontrol-request"
  "controller/relaycontrolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<relaycontrol-request>)))
  "Returns md5sum for a message object of type '<relaycontrol-request>"
  "0b75350b18f9cacf15e795288eeb5a0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'relaycontrol-request)))
  "Returns md5sum for a message object of type 'relaycontrol-request"
  "0b75350b18f9cacf15e795288eeb5a0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<relaycontrol-request>)))
  "Returns full string definition for message of type '<relaycontrol-request>"
  (cl:format cl:nil "string caller~%bool relay1~%bool relay2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'relaycontrol-request)))
  "Returns full string definition for message of type 'relaycontrol-request"
  (cl:format cl:nil "string caller~%bool relay1~%bool relay2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <relaycontrol-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'caller))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <relaycontrol-request>))
  "Converts a ROS message object to a list"
  (cl:list 'relaycontrol-request
    (cl:cons ':caller (caller msg))
    (cl:cons ':relay1 (relay1 msg))
    (cl:cons ':relay2 (relay2 msg))
))
;//! \htmlinclude relaycontrol-response.msg.html

(cl:defclass <relaycontrol-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass relaycontrol-response (<relaycontrol-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <relaycontrol-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'relaycontrol-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-srv:<relaycontrol-response> is deprecated: use controller-srv:relaycontrol-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <relaycontrol-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-srv:status-val is deprecated.  Use controller-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <relaycontrol-response>) ostream)
  "Serializes a message object of type '<relaycontrol-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <relaycontrol-response>) istream)
  "Deserializes a message object of type '<relaycontrol-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<relaycontrol-response>)))
  "Returns string type for a service object of type '<relaycontrol-response>"
  "controller/relaycontrolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'relaycontrol-response)))
  "Returns string type for a service object of type 'relaycontrol-response"
  "controller/relaycontrolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<relaycontrol-response>)))
  "Returns md5sum for a message object of type '<relaycontrol-response>"
  "0b75350b18f9cacf15e795288eeb5a0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'relaycontrol-response)))
  "Returns md5sum for a message object of type 'relaycontrol-response"
  "0b75350b18f9cacf15e795288eeb5a0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<relaycontrol-response>)))
  "Returns full string definition for message of type '<relaycontrol-response>"
  (cl:format cl:nil "int64[] status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'relaycontrol-response)))
  "Returns full string definition for message of type 'relaycontrol-response"
  (cl:format cl:nil "int64[] status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <relaycontrol-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <relaycontrol-response>))
  "Converts a ROS message object to a list"
  (cl:list 'relaycontrol-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'relaycontrol)))
  'relaycontrol-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'relaycontrol)))
  'relaycontrol-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'relaycontrol)))
  "Returns string type for a service object of type '<relaycontrol>"
  "controller/relaycontrol")