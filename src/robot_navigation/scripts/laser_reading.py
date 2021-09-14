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

from math import sqrt
from math import cos
from math import acos
from math import sin

import time

#def of sky not available
#def of irregular wall not available


# ---------------TRIANGLE DISTANCE  FUNCTIONS---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

def ortho_projection(angle,a):
	return(a*sin(convert_deg_rad(angle)))
	
def slope_reading(angle, a, b,start_angle):
	c=distance_reading(angle,a,b)
	angle_inter= acos((c**2+b**2-a**2)/(2*c*b))
	return(180-convert_rad_deg(angle_inter)-(90-start_angle))
	
def distance_reading(angle, a, b):
	return (sqrt(a**2+b**2-2*(a*b*cos(convert_deg_rad(angle)))))

def convert_rad_deg(data):
	return ((data*180)/math.pi)

def convert_deg_rad(data):
	return ((data*math.pi)/180)
	
# ---------------ELEMENTS TYPES FUNCTIONS-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# ---------------FLOOR DEFINITION---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def what_is_floor(distance,slope):
	if (distance <2):
		return("Not_enough_distance")
	else:
		if (slope >7):
			return("Steep_slope_positive")
		elif (slope >2) and (slope <7):
			return ("Shallow_slope_positive")
		elif (slope <0) and (slope >-1):
			return ("Shallow_slope_negative")
		elif (slope <-2):
			return("Steep_slope_negative")
		else :
			return("Enough_Distance")
			
# ---------------WALL DEFINITION---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def what_is_wall(near,mid,far):
	if (near<2) or (mid<2)or (far<2):
		return("Wall_too_close")
	else:
		if (near>10) and (near<15) and (mid >10) and (mid < 15) and (far >8):
			return("Hallway")
		elif (near >20) and (mid >15):
			return("Enough_distance_to_wall_possibility_of_entrance")
		else:
			return("Enough_distance_to_wall")
		
# ---------------CEILING DEFINITION---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def what_is_ceiling(near,mid,far):
	if (near<0.2)and (mid <0.3) and (far<0.35):
		 if (mid >near) and (far>mid):
		 	return ("Enough_space_height-inc")
		 elif (mid <near) and (far<mid):
		 	return ("Not_enough_space_height-dec")
		 else:
		 	return ("Not_enough_space")
	elif (near>0.2) and (mid >0.3) and (far>0.35):
		if (far>mid) and (mid>near):
			return("Enough_space_height_inc")
		elif (far<mid) and (mid<near):
			return("Enough_space_height-dec")
		else:
			return("Enough_space")
	
	else:
		return ("Not_enough_space")	
# ---------------MAIN FUNCTION-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def listener():
	rospy.init_node('listener')
	r=rospy.Rate(5)
	
	data=rospy.wait_for_message("/laser/scan", LaserScan )
	pub= rospy.Publisher('/pov_recognition', Pov, queue_size=10)
	
	enviro=Pov()
	min_angle= convert_rad_deg(data.angle_min)
	max_angle= convert_rad_deg(data.angle_max)
	inc_angle=convert_rad_deg(data.angle_increment)
	counter =1
	a=[]
	wall_near=[]
	wall_mid=[]
	wall_far=[]
	ceiling_far=[]
	ceiling_mid=[]
	ceiling_near=[]
	inter=1
					# ---------------DIRECTION OF LIDAR LASER--------------------------------------------------------------------------------------------------------------------------
	rospy.wait_for_service('Joint_state_info_server')
	try:
		Joint_state_info_server= rospy.ServiceProxy('Joint_state_info_server', Joint_state_info)
		direc = Joint_state_info_server()
		
	except rospy.ServiceException as e:
        	print("Service call failed: %s"%e)
	angle_joint=convert_rad_deg(direc.resp_data)
	if (angle_joint <2) or (angle_joint>358):
		enviro.Direction= "front"
	elif (angle_joint <92) and (angle_joint>88):
		enviro.Direction= "right"
	elif (angle_joint <182) and (angle_joint>178):
		enviro.Direction= "back"
	elif (angle_joint <272) and (angle_joint>268):
		enviro.Direction= "left"
	elif (angle_joint <47) and (angle_joint>43):
		enviro.Direction= "front_right"
	elif (angle_joint <317) and (angle_joint>313):
		enviro.Direction= "front_left"
	elif (angle_joint <137) and (angle_joint>133):
		enviro.Direction= "back_right"
	elif (angle_joint <227) and (angle_joint>233):
		enviro.Direction= "back_left"
	else:
		print("ERROR")

					# ---------------FLOOR READINGS AND PROCESSING----------------------------------------------------------------------------------------------------------------
	while (min_angle+counter*inc_angle<87 ):
		counter = counter +1
		a.append (data.ranges[counter+1]-data.ranges[counter-1])
	mean_floor=sum(a)/len(a)
	distance_floor=distance_reading(counter*inc_angle, data.ranges[counter], data.ranges[inter])
	slope=slope_reading(counter*inc_angle,data.ranges[counter], data.ranges[inter],min_angle)
	if (slope >=90):
		slope=180-slope	
					# ---------------WALL READINGS AND PROCESSING------------------------------------------------------------------------------------------------------------------
	while (min_angle+counter*inc_angle<144 ):
		counter = counter +1
		if (min_angle+counter*inc_angle<106):
			if (data.ranges[counter] <30):
				wall_near.append(data.ranges[counter])
			else:
				wall_near.append(30)
		elif (min_angle+counter*inc_angle<125) and(min_angle+counter*inc_angle>=106):
			if (data.ranges[counter] <30):
				wall_mid.append(data.ranges[counter])
			else:
				wall_mid.append(30)
		elif (min_angle+counter*inc_angle<144) and(min_angle+counter*inc_angle>=125):
			if (data.ranges[counter] <30):
				wall_far.append(data.ranges[counter])
			else:
				wall_far.append(30)
	mean_wall_near=sum(wall_near)/len(wall_near)
	mean_wall_mid=sum(wall_mid)/len(wall_mid)
	mean_wall_far=sum(wall_far)/len(wall_far)
	inter=counter
					# ---------------CEILING READINGS AND PROCESSING-------------------------------------------------------------------------------------------------------------
	while (min_angle+counter*inc_angle<=max_angle ):
		counter = counter +1
		if (data.ranges[counter] <30) and (min_angle+counter*inc_angle<158):
			ceiling_far.append(ortho_projection((min_angle+counter*inc_angle-90),data.ranges[counter] ))
		elif (data.ranges[counter] <30) and (min_angle+counter*inc_angle<173) and(min_angle+counter*inc_angle>=158):
			ceiling_mid.append(ortho_projection((min_angle+counter*inc_angle-90),data.ranges[counter] ))
		elif (data.ranges[counter] <30) and (min_angle+counter*inc_angle<max_angle) and(min_angle+counter*inc_angle>=173):
			ceiling_near.append(ortho_projection((min_angle+counter*inc_angle-90),data.ranges[counter] ))
	mean_height_ceiling_near=sum(ceiling_near)/len(ceiling_near)
	mean_height_ceiling_mid=sum(ceiling_mid)/len(ceiling_mid)
	mean_height_ceiling_far=sum(ceiling_far)/len(ceiling_far)

					# ---------------ENVIRONMENT CREATION------------------------------------------------------------------------------------------------------------------------------		
	enviro.Floor_distance=distance_floor
	enviro.Floor_slope=slope
	enviro.Wall_distance_near=mean_wall_near
	enviro.Wall_distance_mid=mean_wall_mid
	enviro.Wall_distance_far=mean_wall_far
	enviro.Ceiling_height_near=mean_height_ceiling_near
	enviro.Ceiling_height_mid=mean_height_ceiling_mid
	enviro.Ceiling_height_far=mean_height_ceiling_far
	enviro.Floor_type=what_is_floor(distance_floor,slope)
	enviro.Wall_type=what_is_wall(mean_wall_near,mean_wall_mid,mean_wall_far)
	enviro.Ceiling_type=what_is_ceiling(mean_height_ceiling_near,mean_height_ceiling_mid,mean_height_ceiling_far)
	enviro.stamp = rospy.Time.now()
	enviro.frame_id="Point of view of lidar, direction: "+ str(angle_joint) 
	print(enviro)
	pub.publish(enviro)
	print(" __________________________________________________________________________________________________________________________________")
	r.sleep()
if __name__ == '__main__':
	try:
		while not rospy.is_shutdown():
			listener()
			
	except rospy.ROSInterruptException:
		pass

