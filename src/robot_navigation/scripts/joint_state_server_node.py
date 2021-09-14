#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState
import ros_numpy
from robot_navigation.srv import Joint_state_info, Joint_state_infoResponse

def handle_joint_state_info_server(req):
	data= JointState()
	
	data=rospy.wait_for_message("/robot_wheels/joint_states", JointState )
	
	return Joint_state_infoResponse(data.position[0])

def joint_state_info_server():
	rospy.init_node('joint_state_info_server')
	s = rospy.Service('Joint_state_info_server', Joint_state_info, handle_joint_state_info_server)
	rospy.spin()

if __name__ == "__main__":
	
	joint_state_info_server()
    
	




	

