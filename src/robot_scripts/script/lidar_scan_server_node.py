#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState
import math
from robot_scripts.srv import lidar_scan, lidar_scanResponse

def handle_lidar_scan_server_node(req):
	cmd_pub = rospy.Publisher('/robot_wheels/joint_lidar_position_controller/command', Float64, queue_size=10)
	Joint_cmd=Float64()
	i=0
	r=rospy.Rate(10)
	while(i<2):
		Joint_cmd=6.26
		counter=0
		while  (counter<5):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		counter=0
		Joint_cmd=0
		while (counter<5):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		i=i+1
		print("Done Scanning")
	return lidar_scanResponse(True)

def lidar_scan_server_node():
	rospy.init_node('lidar_scan_server_node')
	s = rospy.Service('lidar_scan_server_node', lidar_scan, handle_lidar_scan_server_node)
	rospy.spin()

if __name__ == "__main__":
	
	lidar_scan_server_node()

	
