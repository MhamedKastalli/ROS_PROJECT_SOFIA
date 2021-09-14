#include <ros/ros.h>
#include <math.h>
#include <string>
#include <cstdlib>


#include <std_msgs/Float64.h>
#include <std_msgs/Bool.h>

#include <sensor_msgs/JointState.h>


#include "robot_scripts/LidarTurn.h"

float convert_deg_rad(float data)
{
return ((data*3.14)/180);
}

bool cmd(robot_scripts::LidarTurn::Request  &req,robot_scripts::LidarTurn::Response &res)
{
 	ros::NodeHandle nh;
	ros::Publisher chatter_pub= nh.advertise<std_msgs::Float64>("/robot_wheels/joint_lidar_position_controller/command", 10);
	chatter_pub.publish(req.cmd);
	std_msgs::Bool finished;
	finished.data=true;
	res.done=finished;
	return true;
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "LidarTurn_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("LidarTurn", cmd);
  ros::spin();
  return 0;
}

