#!/usr/bin/env python3
import rospy
import time
from geometry_msgs.msg import Twist
import math
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState
import ros_numpy
from robot_navigation.srv import cmd_vel_pub, cmd_vel_pubResponse

def handle_cmd_vel_pub_server(data):
	vel_msg = Twist()
	velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
	vel_msg.linear.x=data.x
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	vel_msg.angular.z = data.z
	seconds = rospy.get_time()
	velocity_publisher.publish(vel_msg)
	rospy.sleep(1)
	vel_msg.linear.x=0
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	vel_msg.angular.z = 0
	velocity_publisher.publish(vel_msg)
	print("Robot has moved")
	return cmd_vel_pubResponse(True)

def cmd_vel_pub_server():
	rospy.init_node('cmd_vel_pub_server')
	s = rospy.Service('cmd_vel_pub_server', cmd_vel_pub, handle_cmd_vel_pub_server)
	rospy.spin()

if __name__ == "__main__":
	
	cmd_vel_pub_server()
    
	




	

