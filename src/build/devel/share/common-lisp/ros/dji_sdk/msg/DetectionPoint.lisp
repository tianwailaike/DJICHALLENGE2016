; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude DetectionPoint.msg.html

(cl:defclass <DetectionPoint> (roslisp-msg-protocol:ros-message)
  ((x0
    :reader x0
    :initarg :x0
    :type cl:integer
    :initform 0)
   (y0
    :reader y0
    :initarg :y0
    :type cl:integer
    :initform 0)
   (x1
    :reader x1
    :initarg :x1
    :type cl:integer
    :initform 0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:integer
    :initform 0))
)

(cl:defclass DetectionPoint (<DetectionPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<DetectionPoint> is deprecated: use dji_sdk-msg:DetectionPoint instead.")))

(cl:ensure-generic-function 'x0-val :lambda-list '(m))
(cl:defmethod x0-val ((m <DetectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:x0-val is deprecated.  Use dji_sdk-msg:x0 instead.")
  (x0 m))

(cl:ensure-generic-function 'y0-val :lambda-list '(m))
(cl:defmethod y0-val ((m <DetectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:y0-val is deprecated.  Use dji_sdk-msg:y0 instead.")
  (y0 m))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <DetectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:x1-val is deprecated.  Use dji_sdk-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <DetectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:y1-val is deprecated.  Use dji_sdk-msg:y1 instead.")
  (y1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionPoint>) ostream)
  "Serializes a message object of type '<DetectionPoint>"
  (cl:let* ((signed (cl:slot-value msg 'x0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionPoint>) istream)
  "Deserializes a message object of type '<DetectionPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionPoint>)))
  "Returns string type for a message object of type '<DetectionPoint>"
  "dji_sdk/DetectionPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionPoint)))
  "Returns string type for a message object of type 'DetectionPoint"
  "dji_sdk/DetectionPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionPoint>)))
  "Returns md5sum for a message object of type '<DetectionPoint>"
  "03e03483e99199fa7bd12bfbdb79e3e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionPoint)))
  "Returns md5sum for a message object of type 'DetectionPoint"
  "03e03483e99199fa7bd12bfbdb79e3e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionPoint>)))
  "Returns full string definition for message of type '<DetectionPoint>"
  (cl:format cl:nil "int32 x0~%int32 y0~%int32 x1~%int32 y1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionPoint)))
  "Returns full string definition for message of type 'DetectionPoint"
  (cl:format cl:nil "int32 x0~%int32 y0~%int32 x1~%int32 y1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionPoint>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionPoint
    (cl:cons ':x0 (x0 msg))
    (cl:cons ':y0 (y0 msg))
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
))
