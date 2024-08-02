#!/usr/bin/env python
import rospy
from lidar_msgs.msg import VelodynePacket

class VelodyneSubscriber:
    def __init__(self):
        self.velodyne_subscriber_ = rospy.Subscriber('velodyne_points', VelodynePacket, self.listener_callback)
        rospy.loginfo('Steering Motor Control Subscriber Node has been started.')
        
    def listener_callback(self, msg):
        rospy.loginfo(f'I heard: "{msg}"')
        

def main():
    rospy.init_node('velodyne_subscriber', anonymous=True)
    velodyne_subscriber = VelodyneSubscriber()
    rospy.spin()

if __name__ == '__main__':
    main()
