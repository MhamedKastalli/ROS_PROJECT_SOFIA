#!/usr/bin/env python3
import rospy
import ros_numpy
import math

from robot_navigation.msg import Environment
from robot_navigation.msg import Pov
from robot_navigation.srv import *

from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import JointState

from std_msgs.msg import Float64



import time

def filter():
	r=rospy.Rate(20)
	data=rospy.wait_for_message("/laser/scan", LaserScan )

def pos_lidar_callback(data):

		
def handle_laser_scan_filter_server(req):
	a=[][]
	pos_lidar= rospy.Subscriber("/robot_wheels/joint_states", JointState,pos_lidar_callback)
	i=0
	while (req.angle-0.261799<s_lidar.position[0]<req.angle+0.261799):
		laser_read=rospy.wait_for_message("/laser/scan", LaserScan )
		a=[i]=laser_read.ranges
	filter()
	
	
def laser_scan_filter_server():
	rospy.init_node('laser_scan_filter_server')
	s = rospy.Service('laser_scan_filter_server', laser_scan_filter, handle_laser_scan_filter_server)
	rospy.spin()

if __name__ == "__main__":
	
	try:
		laser_scan_filter_server()
	except rospy.ROSInterruptException:
		pass
