#include <ros/ros.h>
#include <math.h>
#include <string>
#include <cstdlib>

#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>

#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/PointField.h>
#include <sensor_msgs/JointState.h>

#include <std_msgs/Float64.h>
#include <std_msgs/Bool.h>
#include "robot_scripts/LidarTurn.h"

#include "robot_scripts/PointCloudsarray.h"
#include "robot_scripts/Array_laser.h"

#include <laser_geometry/laser_geometry.h>
#include "pcl_ros/point_cloud.h"
#include <pcl/point_types.h>

#include <tf2_ros/buffer.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/transform_broadcaster.h>
//----------------------------------------------------------------------------------------------------FUNCTION TRIGONOMETRY---------------------------------------------------------------------------------------------------------------
float convert_deg_rad(float data)
{
return ((data*3.14)/180);
}

int main(int argc, char **argv)

{
	ros::init(argc, argv, "create_pc");
	ros::NodeHandle n;
//----------------------------------------------------------------------------------------------------DEFINITIONS OF VARIABLES--------------------------------------------------------------------------------------------------------------
	int counter;
	float min_if;
	float max_if;
	float min_else;
	float max_else;
	bool first;

	
	
	ros::Publisher one;
	ros::Publisher two;
	ros::Publisher three;
	ros::Publisher four;
	ros::Publisher five;
	ros::Publisher six;
	ros::Publisher seven;
	ros::Publisher eight;
	
	ros::Publisher chatter_pub;
	ros::Publisher g_cloud_publisher;
	ros::Subscriber sub;
	ros::Rate rate(20.);

	sensor_msgs::PointCloud2 full_cloud;
	robot_scripts::Array_laser test;
	robot_scripts::PointCloudsarray pc_array;

	std_msgs::Float64 msg;
	std_msgs::Bool OK;


	laser_geometry::LaserProjection g_laser_projector;
	tf::TransformListener listener;

	counter = 0;
	first= true ;
	

	g_cloud_publisher = n.advertise<robot_scripts::PointCloudsarray>("/array_pc", 10);
	chatter_pub= n.advertise<std_msgs::Float64>("/robot_wheels/joint_lidar_position_controller/command", 10);
	
	one = n.advertise<sensor_msgs::PointCloud2>("/one", 10);
	two = n.advertise<sensor_msgs::PointCloud2>("/two", 10);
	three = n.advertise<sensor_msgs::PointCloud2>("/three", 10);
	four = n.advertise<sensor_msgs::PointCloud2>("/four", 10);
	five = n.advertise<sensor_msgs::PointCloud2>("/five", 10);
	six = n.advertise<sensor_msgs::PointCloud2>("/six", 10);
	seven = n.advertise<sensor_msgs::PointCloud2>("/seven", 10);
	eight = n.advertise<sensor_msgs::PointCloud2>("/eight", 10);
	
	
	msg.data=0;
	chatter_pub.publish(msg);
	ros::Duration(3).sleep();
	msg.data=-0.349066;
	chatter_pub.publish(msg);
	
	ros::Duration(3).sleep();

//-------------------------------------------------------------------------------------------------------------------------MAIN LOOP--------------------------------------------------------------------------------------------------------------	
	while (counter<8)
	{	
		msg.data=convert_deg_rad(counter*45+25);	
		chatter_pub.publish(msg);
		boost::shared_ptr<sensor_msgs::JointState const> sharedpos;
		sensor_msgs::JointState pos_lidar;
		sharedpos = ros::topic::waitForMessage<sensor_msgs::JointState>("/robot_wheels/joint_states");
		if(sharedpos != NULL)
			{pos_lidar = *sharedpos;}
		min_if=convert_deg_rad((counter*45)-15);
		max_if=convert_deg_rad((counter*45)+15);
		min_else=convert_deg_rad((counter*45)+15);
		max_else=convert_deg_rad((counter*45)+30);
//-------------------------------------------------------------------------------------------------------------------LASER READING AND SAVING--------------------------------------------------------------------------------------		
		if ((min_if<pos_lidar.position[0]) and (pos_lidar.position[0]<max_if))
			{
				ROS_INFO("done");
				boost::shared_ptr<sensor_msgs::LaserScan const> sharedscan;
				sensor_msgs::LaserScan scan;
				sharedscan = ros::topic::waitForMessage<sensor_msgs::LaserScan>("/laser/scan");
				if(sharedscan != NULL)
					{scan = *sharedscan;}
				test.Scans.push_back(scan);
				ROS_INFO("Attempting to aggregate %ld laser scans into a pointcloud", test.Scans.size());
				first=true;
				
			}
//----------------------------------------------------------------------------------------------------------CREATION OF POINT CLOUD--------------------------------------------------------------------------------------------------------	
			else if((min_else<pos_lidar.position[0]) and (pos_lidar.position[0]<max_else))
			
			{      
				if (first==true) 
					{
					ROS_WARN("starting process");
					if(!listener.waitForTransform(test.Scans[0].header.frame_id,"/base_link",test.Scans[0].header.stamp + ros::Duration().fromSec(test.Scans[0].ranges.size()*test.Scans[0].time_increment),
		ros::Duration(1.0)))
	       				 {ROS_ERROR("PCL could not concatenate pointclouds");}

					g_laser_projector.transformLaserScanToPointCloud("lidar",test.Scans[0], full_cloud,listener);
					for (unsigned int index = 1; index < test.Scans.size(); index++)
							{	sensor_msgs::PointCloud2 scan_cloud;
								if(!listener.waitForTransform(test.Scans[index].header.frame_id,"/base_link",test.Scans[index].header.stamp + ros::Duration().fromSec(test.Scans[index].ranges.size()*test.Scans[index].time_increment), ros::Duration(1.0)))
								{ROS_ERROR("PCL could not concatenate pointclouds");}
								g_laser_projector.transformLaserScanToPointCloud("lidar",test.Scans[index], scan_cloud,listener);
								bool succeded = pcl::concatenatePointCloud(full_cloud, scan_cloud, full_cloud);
								if (!succeded)
								{ROS_ERROR("PCL could not concatenate pointclouds"); }
							}
//-----------------------------------------------------------------------------------------------------------CREATION OF POINT CLOUD ARRAY-------------------------------------------------------------------------------------------       				 		
					full_cloud.header.frame_id = "lidar";
					full_cloud.header.stamp = ros::Time::now();
					test.Scans.clear();
					pc_array.Scans.push_back(full_cloud);
					
					counter+=1;
					first=false;
					}
				ROS_WARN("done process");
			}
			
			

		}
//-----------------------------------------------------------------------------------------------------------PUBLISHING POINT CLOUD ARRAY-------------------------------------------------------------------------------------------------
	msg.data=0;	
	chatter_pub.publish(msg);
	counter=0;
	
	while (counter<3 )
	
	{ 	
		counter+=0.05;
		ROS_WARN("PUBLISHING");
		ROS_INFO_STREAM(pc_array.Scans[0].header);
		ROS_INFO_STREAM(pc_array.Scans[0].height);
		ROS_INFO_STREAM(pc_array.Scans[0].width);

		g_cloud_publisher.publish(pc_array);
		one.publish(pc_array.Scans[0]);
		two.publish(pc_array.Scans[1]);
		three.publish(pc_array.Scans[2]);
		four.publish(pc_array.Scans[3]);
		five.publish(pc_array.Scans[4]);
		six.publish(pc_array.Scans[5]);
		seven.publish(pc_array.Scans[6]);
		eight.publish(pc_array.Scans[7]);
		rate.sleep();

	}
	

	return 0;
}
