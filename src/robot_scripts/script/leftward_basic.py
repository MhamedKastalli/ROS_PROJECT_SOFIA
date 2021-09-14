#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
import math

def move_lwd():
	rospy.init_node('move_leftward_node')	
	velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
	where=rospy.Publisher('/jalon', String, queue_size=1)
	a=String()
	a="leftward"
	vel_msg = Twist()
	r=rospy.Rate(10)
	vel_msg.linear.x=1
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	vel_msg.angular.z = -1.5
	counter=0
	while not rospy.is_shutdown():
		velocity_publisher.publish(vel_msg)
		where.publish(a)
		r.sleep()
		counter=counter+0.05
		if (counter>1):
			vel_msg.linear.x=0
			vel_msg.linear.y = 0
			vel_msg.linear.z = 0
			vel_msg.angular.x = 0
			vel_msg.angular.y = 0
			vel_msg.angular.z = 0
			velocity_publisher.publish(vel_msg)
			break
	

if __name__ == '__main__':
	try:
		move_lwd()
	except rospy.ROSInterruptException:
		pass
	




	

