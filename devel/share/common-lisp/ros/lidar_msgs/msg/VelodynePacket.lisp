; Auto-generated. Do not edit!


(cl:in-package lidar_msgs-msg)


;//! \htmlinclude VelodynePacket.msg.html

(cl:defclass <VelodynePacket> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type std_msgs-msg:Time
    :initform (cl:make-instance 'std_msgs-msg:Time))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 1206 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass VelodynePacket (<VelodynePacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelodynePacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelodynePacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_msgs-msg:<VelodynePacket> is deprecated: use lidar_msgs-msg:VelodynePacket instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <VelodynePacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:stamp-val is deprecated.  Use lidar_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <VelodynePacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:data-val is deprecated.  Use lidar_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelodynePacket>) ostream)
  "Serializes a message object of type '<VelodynePacket>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stamp) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelodynePacket>) istream)
  "Deserializes a message object of type '<VelodynePacket>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stamp) istream)
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 1206))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 1206)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelodynePacket>)))
  "Returns string type for a message object of type '<VelodynePacket>"
  "lidar_msgs/VelodynePacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelodynePacket)))
  "Returns string type for a message object of type 'VelodynePacket"
  "lidar_msgs/VelodynePacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelodynePacket>)))
  "Returns md5sum for a message object of type '<VelodynePacket>"
  "31463a216a41d17b370dbe0e6dde888d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelodynePacket)))
  "Returns md5sum for a message object of type 'VelodynePacket"
  "31463a216a41d17b370dbe0e6dde888d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelodynePacket>)))
  "Returns full string definition for message of type '<VelodynePacket>"
  (cl:format cl:nil "# Raw Velodyne LIDAR packet.~%~%std_msgs/Time   stamp~%uint8[1206]     data~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelodynePacket)))
  "Returns full string definition for message of type 'VelodynePacket"
  (cl:format cl:nil "# Raw Velodyne LIDAR packet.~%~%std_msgs/Time   stamp~%uint8[1206]     data~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelodynePacket>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stamp))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelodynePacket>))
  "Converts a ROS message object to a list"
  (cl:list 'VelodynePacket
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
