#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64
import math

def convert_deg_rad(data):
	return ((data*math.pi)/180)
	

if __name__ == '__main__':
	try:
		rospy.init_node('turn_lidar')	
		
		cmd_pub = rospy.Publisher('/robot_wheels/joint_lidar_position_controller/command', Float64, queue_size=10)
		Joint_cmd=Float64()
		i=0
		r=rospy.Rate(10)
		
		Joint_cmd=-0.349066
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05

		Joint_cmd=convert_deg_rad(40)
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		Joint_cmd=convert_deg_rad(110)
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		Joint_cmd=convert_deg_rad(170)
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		Joint_cmd=convert_deg_rad(200)
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		Joint_cmd=convert_deg_rad(260)
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		Joint_cmd=convert_deg_rad(290)
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05	
		Joint_cmd=convert_deg_rad(340)
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		Joint_cmd= 6.37045
		counter=0
		while  (counter<1):
			cmd_pub.publish(Joint_cmd)
			r.sleep()
			counter=counter+0.05
		

		print("Done Scanning")
	except rospy.ROSInterruptException:
		pass
	




	

