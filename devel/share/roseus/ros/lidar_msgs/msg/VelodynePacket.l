;; Auto-generated. Do not edit!


(when (boundp 'lidar_msgs::VelodynePacket)
  (if (not (find-package "LIDAR_MSGS"))
    (make-package "LIDAR_MSGS"))
  (shadow 'VelodynePacket (find-package "LIDAR_MSGS")))
(unless (find-package "LIDAR_MSGS::VELODYNEPACKET")
  (make-package "LIDAR_MSGS::VELODYNEPACKET"))

(in-package "ROS")
;;//! \htmlinclude VelodynePacket.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_msgs::VelodynePacket
  :super ros::object
  :slots (_stamp _data ))

(defmethod lidar_msgs::VelodynePacket
  (:init
   (&key
    ((:stamp __stamp) (instance std_msgs::Time :init))
    ((:data __data) (make-array 1206 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data __data)
   self)
  (:stamp
   (&rest __stamp)
   (if (keywordp (car __stamp))
       (send* _stamp __stamp)
     (progn
       (if __stamp (setq _stamp (car __stamp)))
       _stamp)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Time _stamp
    (send _stamp :serialization-length)
    ;; uint8[1206] _data
    (* 1    1206)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Time _stamp
       (send _stamp :serialize s)
     ;; uint8[1206] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Time _stamp
     (send _stamp :deserialize buf ptr-) (incf ptr- (send _stamp :serialization-length))
   ;; uint8[1206] _data
   (setq _data (make-array 1206 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 1206)
   ;;
   self)
  )

(setf (get lidar_msgs::VelodynePacket :md5sum-) "31463a216a41d17b370dbe0e6dde888d")
(setf (get lidar_msgs::VelodynePacket :datatype-) "lidar_msgs/VelodynePacket")
(setf (get lidar_msgs::VelodynePacket :definition-)
      "# Raw Velodyne LIDAR packet.

std_msgs/Time   stamp
uint8[1206]     data

================================================================================
MSG: std_msgs/Time
time data

")



(provide :lidar_msgs/VelodynePacket "31463a216a41d17b370dbe0e6dde888d")


