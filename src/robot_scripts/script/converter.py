#!/usr/bin/env python3
from sensor_msgs.msg import PointCloud2 as pc2
from sensor_msgs.msg import LaserScan
import rospy
from laser_geometry import LaserProjection



class laser2PC():
	def __init__(self):
		self.laserProj = LaserProjection()
		self.pcPub = rospy.Publisher ("/laserPointCloud" , pc2, queue_size=1 )
		self.LaserSub = rospy.Subscriber("/laser/scan", LaserScan, self.laserCallback) 
	def laserCallback(self,data):
	
		cloud_out = self.laserProj.projectLaser(data)
	
		self.pcPub.publish (cloud_out)

if  __name__ == '__main__':
	rospy.init_node('laser2PointCloud')
	l2pc=laser2PC()
	rospy.spin()
	

