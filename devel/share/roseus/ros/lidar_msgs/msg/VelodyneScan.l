;; Auto-generated. Do not edit!


(when (boundp 'lidar_msgs::VelodyneScan)
  (if (not (find-package "LIDAR_MSGS"))
    (make-package "LIDAR_MSGS"))
  (shadow 'VelodyneScan (find-package "LIDAR_MSGS")))
(unless (find-package "LIDAR_MSGS::VELODYNESCAN")
  (make-package "LIDAR_MSGS::VELODYNESCAN"))

(in-package "ROS")
;;//! \htmlinclude VelodyneScan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_msgs::VelodyneScan
  :super ros::object
  :slots (_header _packets ))

(defmethod lidar_msgs::VelodyneScan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:packets __packets) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _packets __packets)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:packets
   (&rest __packets)
   (if (keywordp (car __packets))
       (send* _packets __packets)
     (progn
       (if __packets (setq _packets (car __packets)))
       _packets)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lidar_msgs/VelodynePacket[] _packets
    (apply #'+ (send-all _packets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lidar_msgs/VelodynePacket[] _packets
     (write-long (length _packets) s)
     (dolist (elem _packets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lidar_msgs/VelodynePacket[] _packets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _packets (let (r) (dotimes (i n) (push (instance lidar_msgs::VelodynePacket :init) r)) r))
     (dolist (elem- _packets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar_msgs::VelodyneScan :md5sum-) "959ef76e31922a901758298cc4ccbba3")
(setf (get lidar_msgs::VelodyneScan :datatype-) "lidar_msgs/VelodyneScan")
(setf (get lidar_msgs::VelodyneScan :definition-)
      "# Velodyne LIDAR scan packets.

std_msgs/Header    header
VelodynePacket[]   packets
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: lidar_msgs/VelodynePacket
# Raw Velodyne LIDAR packet.

std_msgs/Time   stamp
uint8[1206]     data

================================================================================
MSG: std_msgs/Time
time data

")



(provide :lidar_msgs/VelodyneScan "959ef76e31922a901758298cc4ccbba3")


