#!/usr/bin/env python3
import rospy
import ros_numpy
import numpy as np
import math

from robot_navigation.msg import Environment
from robot_navigation.msg import Pov
from robot_navigation.srv import environment_process, environment_processResponse
from robot_navigation.srv import *
from robot_scripts.srv import *

from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import JointState

from nav_msgs.msg import Odometry

from std_msgs.msg import String
from std_msgs.msg import Float64


import time

# ---------------TREE & NODE CLASS DEFINITION---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class TreeNode(object):

	def __init__(self, name,data_acc):
		self.name = name
		self.parent=None
		self.accessible=data_acc
		if data_acc=="Not_Accessible":
			self.discovery="ND"
		else:
			self.discovery="UD"
		self.children=[]
		
			
	def depth(self):    # Depth of current node
		if self.name=="Root":
			return 0
		else:
			return 1 + self.parent.depth()

	def add_children(self, fnode,rnode,lnode,frnode,flnode,brnode,blnode):
			fnode.parent=self
			frnode.parent=self
			flnode.parent=self
			rnode.parent=self
			lnode.parent=self
			brnode.parent=self
			blnode.parent=self
			self.children.append(fnode)
			self.children.append(rnode)
			self.children.append(lnode)
			self.children.append(frnode)
			self.children.append(flnode)
			self.children.append(blnode)
			self.children.append(blnode)
		
	def check_discovery(self):
		if self.parent==None:
			return (True)
		else:
			i=0
			while(i<7):
				if (self.children[i].discovery=="UD"):	
					return(False)
				i=i+1
			a=self.check_discovery(self.parent)
		
						
class Tree:

	def __init__(self,root_node):
		self.root=root_node
		self.height=0
		self.nodes=[]

	def insert(self,node,parent):   # Insert a node into tree
		if parent is not None:
			parent.add_child(node)
		else:
			if self.root is None:
				self.root=node
		self.nodes.append(node)

	def search(self,data):  # Search and return index of Node in Tree
		index=-1
		for N in self.nodes:
				index+=1
				if N.name == data:
					break
		if index == len(self.nodes)-1:
			return -1  #node not found
		else:
			return index

	def getNode(self,id):
		return self.nodes[id]

	def root():
		return self.root


# ---------------ENVIRONMENT PROCESS-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def accessible(data):
	
	a=['','','','','','','']
	if (data[0]=='Not_Accessible'):
		a[0]='Not_Accessible'
	else:
		 if (( data[1]=='Not_Accessible') and (data[7]=='Not_Accessible')):
		 	a[0]='Not_Accessible'
		 else:
		 	a[0]='Accessible'
	if (data[2]=='Not_Accessible'):
		a[1]='Not_Accessible'
	else:
		 if ( data[1]=='Not_Accessible') and (data[3]=='Not_Accessible'):
		 	a[1]='Not_Accessible'
		 else:
		 	a[1]='Accessible'
	if (data[6]=='Not_Accessible'):
		a[2]='Not_Accessible'
	else:
		 if ( data[7]=='Not_Accessible') and (data[5]=='Not_Accessible'):
		 	a[2]='Not_Accessible'
		 else:
		 	a[2]='Accessible'
	if (data[1]=='Not_Accessible'):
		a[3]='Not_Accessible'
	else:
		 if ( data[0]=='Not_Accessible') and (data[2]=='Not_Accessible'):
		 	a[3]='Not_Accessible'
		 else:
		 	a[3]='Accessible'
	if (data[7]=='Not_Accessible'):
		a[4]='Not_Accessible'
	else:
		 if ( data[0]=='Not_Accessible') and (data[6]=='Not_Accessible'):
		 	a[4]='Not_Accessible'
		 else:
		 	a[4]='Accessible'
	if (data[3]=='Not_Accessible'):
		a[5]='Not_Accessible'
	else:
		 if ( data[4]=='Not_Accessible') and (data[2]=='Not_Accessible'):
		 	a[5]='Not_Accessible'
		 else:
		 	a[5]='Accessible'
	if (data[5]=='Not_Accessible'):
		a[6]='Not_Accessible'
	else:
		 if ( data[6]=='Not_Accessible') and (data[4]=='Not_Accessible'):
		 	a[6]='Not_Accessible'
		 else:
		 	a[6]='Accessible'
	return(a)
	
	
# ---------------CMD VEL PUBLISH------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def move (linear, angular):
	rospy.wait_for_service('cmd_vel_pub_server')
	x=Float64()
	z=Float64()
	x=linear
	z=angular
	cmd_vel_pub_server= rospy.ServiceProxy('cmd_vel_pub_server', Cmd_vel_pub)
	direc = cmd_vel_pub_server(x,z)
def turn_back(successive_moves):
	if successive_moves=='':
		print("ERROR")
	else:
		i=0
		while i<len(successive_moves):
			if successive_moves[i]=='f':
				linear=1.0
				angular=0.0
				move (linear, angular)
			elif successive_moves[i]=='r':
				linear=0.0
				angular=-5.0
				move (linear, angular)
				linear=1.0
				angular=0.0
				move (linear, angular)
			elif successive_moves[i]=='l':
				linear=0.0
				angular=5.0
				move (linear, angular)
				linear=1.0
				angular=0.0
				move (linear, angular)
			elif successive_moves[i]=='m':
				linear=0.0
				angular=-2.5
				move (linear, angular)
				linear=1.0
				angular=0.0
				move (linear, angular)
			elif successive_moves[i]=='n':
				linear=0.0
				angular=2.5
				move (linear, angular)
				linear=1.0
				angular=0.0
				move (linear, angular)
			elif successive_moves[i]=='p':
				linear=0.0
				angular=-9.0
				move (linear, angular)
				linear=1.0
				angular=0.0
				move (linear, angular)
			elif successive_moves[i]=='q':
				linear=0.0
				angular=9.0
				move (linear, angular)
				linear=1.0
				angular=0.0
				move (linear, angular)
			elif successive_moves[i]=='t':
				linear=0.0
				angular=12.0
				move (linear, angular)
			i=i+1
def go_to(string):
	
	if len(string)==1:
		print(string)
		turn_back(string)
	else:
		successive_moves='tf'
		while i <(len(string)-1):
			if string[i]=='f':
				successive_moves=successive_moves+'f'
			else:
				if (convert(string[i])%2==0):
					successive_moves=successive_moves+convert(convert_back(string[i]-1))
				elif (convert(string[i])%2==1):
					successive_moves=successive_moves+convert(convert_back(string[i]+1))
			print(successive_moves)
			i=i+1
		successive_moves=successive_moves+string[len(string)]
		turn_back(successive_moves)

def convert(nbr):
	if nbr==0:
		return('f')
	elif nbr==1:
		return('r')
	elif nbr==2:
		return('l')
	elif nbr==3:
		return('m')
	elif nbr==4:
		return('n')
	elif nbr==5:
		return('p')
	elif nbr==6:
		return('q')
	else:	
		print('Error')
		return('')
def convert_back(char):
	if char=='f':
		return(0)
	elif char=='r':
		return(1)
	elif char=='l':
		return(2)
	elif char=='m':
		return(3)
	elif char=='n':
		return(4)
	elif char=='p':
		return(5)
	elif char=='q':
		return(6)
	else:	
		print('Error')
		return(-1)	
		
	
def pick_direction(node,data):
	i=0
	while i<7:
		print(node.children[i].accessible)
		if (node.children[i].accessible=='Not_Accessible') or(node.children[i].discovery=="D") :
			i=i+1
		else:
			data=data+convert(i)
			return(data)
	data=data+node.name[0]
	data=pick_direction(node.parent,data)
	return(data)
	
def curr_node (node,string):
	
	if len(string)==1:
		return node.children[convert_back(string)]
	else:
		a= curr_node(node.parent, string[1:])
	return a	
def check_for_loops(node,path_record):
	if len(path_record)>3:
		if path_record[len(path_record)]=='p':
			node.children[6].discovery='D'
			node.children[1].discovery='D'
		elif path_record[len(path_record)]=='r':
			node.children[6].discovery='D'
			if  path_record[len(path_record)-1]=='r':
				node.children[1].discovery='D'	
		elif path_record[len(path_record)]=='q':
			node.children[2].discovery='D'
			node.children[7].discovery='D'
		elif path_record[len(path_record)]=='l':
			node.children[7].discovery='D'
			if  path_record[len(path_record)-1]=='l':
				node.children[2].discovery='D'	
	
		
	
	
# ---------------SCAN FUNCTION--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
def scan():
	rospy.wait_for_service('lidar_scan_server_node')
	try:
		lidar_scan_server_node= rospy.ServiceProxy('lidar_scan_server_node', lidar_scan)
		done_scan=lidar_scan_server_node()
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)
def process():
	data=Environment()
	rospy.wait_for_service('environment_process_server')
	try:
		environment_process_server= rospy.ServiceProxy('environment_process_server', environment_process)
		data=environment_process_server()
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)
	return(data)
	
	
# ---------------MAIN FUNCTION--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

def navigate():
	path_record=''
	rospy.init_node('navigate')
	r=rospy.Rate(5)
	move(1.0,0.0)
	path_record=path_record+'f'
	environment_msg=environment_processResponse()
	environment_msg=process()
	root=TreeNode('Root','Very_Accessible')
	root.discovery="D"
	a=accessible(environment_msg.accessibility)
	fwd=TreeNode('fwd',a[0])
	rwd=TreeNode('rwd',a[1])
	lwd=TreeNode('lwd',a[2])
	frwd=TreeNode('mwd',a[3])
	flwd=TreeNode('nwd',a[4])
	brwd=TreeNode('pwd',a[5])
	blwd=TreeNode('qwd',a[6])
	root.add_children(fwd,rwd,lwd,frwd,flwd,brwd,blwd)
	mvm_data=pick_direction(root,'')
	path_record=path_record+mvm_data
	current_node=curr_node(root,mvm_data)
#	scan()
	go_to(mvm_data)	
	current_node.discovery="D"
	while not rospy.is_shutdown():
		environment_msg=process()
		a=accessible(environment_msg.accessibility)
		fwd=TreeNode('fwd',a[0])
		rwd=TreeNode('rwd',a[1])
		lwd=TreeNode('lwd',a[2])
		frwd=TreeNode('mwd',a[3])
		flwd=TreeNode('nwd',a[4])
		brwd=TreeNode('pwd',a[5])
		blwd=TreeNode('qwd',a[6])
		current_node.add_children(fwd,rwd,lwd,frwd,flwd,brwd,blwd)
		check_for_loops(current_node,path_record)
		done=current_node.check_discovery()
		if done:
			print("DONE DISCOVERING")
			break
		print("NOT DONE DISCOVERING")
		mvm_data=pick_direction(current_node,'')
		if (len(mvm_data)>1):
			path_record=path_record+mvm_data[len(mvm_data)]
		else:
			path_record=path_record+mvm_data
		current_node=curr_node(current_node,mvm_data)
#		scan()
		go_to(mvm_data)	
		current_node.discovery="D"
		print(" __________________________________________________________________________________________________________________________________")

		
	

		

	
	
	r.sleep()
if __name__ == '__main__':
	navigate()

