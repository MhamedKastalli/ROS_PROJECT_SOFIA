#!/usr/bin/env python3
import rospy
import ros_numpy
import numpy as np
import math

from robot_navigation.msg import Environment
from robot_navigation.msg import Pov
from robot_navigation.srv import *
from robot_navigation.srv import environment_process, environment_processResponse

from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import JointState

from nav_msgs.msg import Odometry

from std_msgs.msg import String
from std_msgs.msg import Float64

from math import sqrt
from math import cos
from math import acos
from math import sin

from tf.transformations import euler_from_quaternion, quaternion_from_euler

import time

def convert_rad_deg(data):
	return ((data*180)/math.pi)
	
def convert_deg_rad(data):
	return ((data*math.pi)/180)

# ---------------ENVIRONMENT PROCESS-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def is_accessible (floor,wall,ceiling):
	accesibility=np.empty(8, dtype="U50") 
	i=0
	while(i<8):
		if (floor[i] =="Not_enough_distance") or (floor[i] =="Steep_slope_positive") or (floor[i] =="Steep_slope_negative") or (wall[i]== "Wall_too_close") or (ceiling[i] == "Not_enough_space_height-dec") or (ceiling[i] == "Not_enough_space"):
			accesibility[i]="Not_Accessible"
		else:
			if  ( (floor[i] =="Enough_Distance") and ((wall[i]=="Enough_distance_to_wall_possibility_of_entrance") )or (wall[i]== "Hallway")) and( (ceiling[i] =="Enough_space_height-inc") or (ceiling[i] == "Enough_space") or (ceiling[i] == "Enough_space_height-dec")):
				accesibility[i]="Very_Accessible"
				
			else:
				accesibility[i]="Accessible"
		i=i+1
	return(accesibility)



# ---------------MAIN FUNCTION-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def handle_environment_process_server(req):
	enviro_recog=Environment()
	pub= rospy.Publisher('/environment_recognition', Environment, queue_size=10)
	odom_data=rospy.wait_for_message('/odom', Odometry )
	orientation_q=odom_data.pose.pose.orientation
	orientation_list = [orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w]
	(robot_roll, robot_pitch, robot_yaw) = euler_from_quaternion (orientation_list)
	
	enviro_recog.x=odom_data.pose.pose.position.x
	enviro_recog.y=odom_data.pose.pose.position.y
	enviro_recog.z=odom_data.pose.pose.position.z
	
	enviro_recog.roll=robot_roll
	enviro_recog.pitch=robot_pitch
	enviro_recog.yaw=robot_yaw
	
	enviro_recog.floor=np.empty(8, dtype="U50") 
	enviro_recog.wall=np.empty(8, dtype="U50") 
	enviro_recog.ceiling=np.empty(8, dtype="U50") 
	
	lidar_state=rospy.Publisher("/robot_wheels/joint_lidar_position_controller/command", Float64, queue_size=10)
	lidar_state.publish(convert_def_rad(-20))
	counter=Float64()
	counter =-0.785398
	i=0
	while (i<8):
		rospy.wait_for_service('Joint_state_info_server')
		try:
			Joint_state_info_server= rospy.ServiceProxy('Joint_state_info_server', Joint_state_info)
			direc = Joint_state_info_server()
			pos_data=convert_rad_deg(direc.resp_data)
		except rospy.ServiceException as e:
			print("Service call failed: %s"%e)
		if (pos_data <(15+i*45)):
			print ("check")
			pov=rospy.wait_for_message('/pov_recognition', Pov )
			enviro_recog.floor[i] =pov.Floor_type
			enviro_recog.wall[i] =pov.Wall_type
			enviro_recog.ceiling[i] =pov.Ceiling_type
			i=i+1
		
	lidar_state.publish(convert_def_rad(-20))	
	
	enviro_recog.accessibility=is_accessible(enviro_recog.floor,enviro_recog.wall,enviro_recog.ceiling)
	enviro_recog.stamp = rospy.Time.now()
	enviro_recog.frame_id="Environment analysis"
	pub.publish(enviro_recog)
	print(enviro_recog)
	print(" __________________________________________________________________________________________________________________________________")
	resp=environment_processResponse()
	resp.x=enviro_recog.x
	resp.y=enviro_recog.y
	resp.z=enviro_recog.z
	resp.pitch=enviro_recog.pitch
	resp.yaw=enviro_recog.yaw
	resp.roll=enviro_recog.roll
	resp.floor=enviro_recog.floor
	resp.wall=enviro_recog.wall
	resp.ceiling=enviro_recog.ceiling
	resp.accessibility=enviro_recog.accessibility
	return resp


def environment_process_server():
	rospy.init_node('environment_process_server')
	s = rospy.Service('environment_process_server', environment_process, handle_environment_process_server)
	rospy.spin()

if __name__ == "__main__":
	
	environment_process_server()

