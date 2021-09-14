#include <ros/ros.h>
#include <math.h>
#include <string>
#include <cstdlib>


#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_datatypes.h>

#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/PointField.h>

#include <nav_msgs/Odometry.h>

#include <std_msgs/Float64.h>
#include <std_msgs/Bool.h>


#include "robot_navigation/Environment.h"
#include "robot_scripts/PointCloudsarray.h"
#include "robot_scripts/Array_laser.h"


#include "pcl_ros/point_cloud.h"
#include "pcl_conversions/pcl_conversions.h"
#include <pcl/point_types.h>

#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/crop_box.h>


//-------------------------------------------------------------------------------------------------------------FILTERING FUNCTIONS---------------------------------------------------------------------------------------------------------------
/*
	--------------------------------------------box-------------------------------------
pcl::VoxelGrid<pcl::PCLPointCloud2> filter_box;
	filter_box.setInputCloud (cloud);
	filter_box.setLeafSize (0.01f, 0.01f, 0.01f);
	filter_box.filter (*cloud_filtered);
void cloud_cb(const sensor_msgs::PointCloud2ConstPtr& cloud_msg)
	{
	// Container for original & filtered data
	pcl::PCLPointCloud2* cloud = new pcl::PCLPointCloud2;
	pcl::PCLPointCloud2ConstPtr cloudPtr(cloud);
	pcl::PCLPointCloud2 cloud_filtered;

	// Convert to PCL data type
	pcl_conversions::toPCL(*cloud_msg, *cloud);

	// Perform the actual filtering
	pcl::VoxelGrid<pcl::PCLPointCloud2> filter_box;
	filter_box.setInputCloud (cloudPtr);
	filter_box.setLeafSize (0.1, 0.1, 0.1);
	filter_box.removeInside=0;
	filter_box.filter (cloud_filtered);

	// Convert to ROS data type
	sensor_msgs::PointCloud2 output;
	pcl_conversions::moveFromPCL(cloud_filtered, output);

	// Publish the data
	pub.publish (output);
	}
	--------------------------------------------passthrough-------------------------------------


//-----------------------------------------------------------------------------------------------------------------PROCESS SERVICE-----------------------------------------------------------------------------------------------------------------

bool cmd(robot_scripts::Pcl_process::Request  &req,robot_scripts::Pcl_process::Response &res)
{
 	
 	counter=0;
 	
 	double quatx;
	double quaty;
	double quatz;
	double quatw;
	
	double x_robot;
	double y_robot;
	double z_robot;
	
	double r_robot;
	double p_robot;
	double y_robot;
	
 	sensor_msgs::PointCloud2 floor;
	sensor_msgs::PointCloud2 wall;
	sensor_msgs::PointCloud2 ceiling;
	
	boost::shared_ptr<nav_msgs/Odometry const> sharedodom;
	nav_msgs/Odometry.  curr_odom;
	sharedodom = ros::topic::waitForMessage<nav_msgs/Odometry. >("/odom");
	if(sharedodom != NULL)
		{curr_odom = *sharedodom;}
	
	x_robot=curr_odom.pose.pose.position.x;
	y_robot=curr_odom.pose.pose.position.y;
	z_robot=curr_odom.pose.pose.position.z;
	
	double quatx= curr_odom.pose.pose.orientation.x;
	double quaty= curr_odom.pose.pose.orientation.y;
	double quatz= curr_odom.pose.pose.orientation.z;
	double quatw= curr_odom.pose.pose.orientation.w;
	
	tf::Quaternion q(quatx, quaty, quatz, quatw);
	tf::Matrix3x3 m(q);
	m.getRPY( r_robot, p_robot, y_robot);
	
 	while (counter<8)
	{	floor.clear();
		wall.clear();
		ceiling.clear();
		
		
		req.data[counter].
		if (counter==4)
		{
			counter+=1;
		}
	}
	
	
	return true;
}*/

int main (int argc, char** argv)
{	ros::init(argc, argv, "process_pc");
	ros::NodeHandle n;
	ros::Publisher eight;
	eight = n.advertise<sensor_msgs::PointCloud2>("/eight", 10);
	
	sensor_msgs::PointCloud2 full_cloud;
	sensor_msgs::PointCloud2 filtered_cloud;
	
	
	
	boost::shared_ptr<sensor_msgs::PointCloud2 const> sharedpoint;
	sensor_msgs::PointCloud2 point;
	sharedpoint = ros::topic::waitForMessage<sensor_msgs::PointCloud2>("/laserPointCloud");
	if(sharedpoint != NULL)
		{point = *sharedpoint;}
	pcl::PCLPointCloud2::Ptr filtered (new pcl::PCLPointCloud2);
	pcl::PCLPointCloud2::Ptr cloud_box (new pcl::PCLPointCloud2);
	pcl_conversions::toPCL(point, *cloud_box);
	pcl::CropBox<pcl::PCLPointCloud2> cropBoxFilter;
	Eigen::Vector4f min_pt (-10, 1.0, -10 ,0);
	Eigen::Vector4f max_pt (10, 3.05, 10 ,0);

	// Cropbox slighlty bigger then bounding box of points
	cropBoxFilter.setMin (min_pt);
	cropBoxFilter.setMax (max_pt);
	cropBoxFilter.setNegative(false);

	cropBoxFilter.setInputCloud(cloud_box);
	cropBoxFilter.filter(*filtered);
	pcl_conversions::moveFromPCL(*filtered, filtered_cloud);
	ros::Rate rate(20.);
	int counter;
	counter=0;
	
	while (counter<3 )
	
		{counter+=0.05;
		ROS_WARN("PUBLISHING");
		eight.publish(filtered_cloud);
		rate.sleep();}
	return 0;
	



	
/*	pcl::PCLPointCloud2::Ptr cloud (new pcl::PCLPointCloud2 ());
	pcl::PCLPointCloud2::Ptr cloud_filtered (new pcl::PCLPointCloud2 ());

	// Fill in the cloud data
	pcl::PCDReader reader;
	// Replace the path below with the path where you saved your file
	reader.read ("table_scene_lms400.pcd", *cloud); // Remember to download the file first!

	std::cerr << "PointCloud before filtering: " << cloud->width * cloud->height 
	<< " data points (" << pcl::getFieldsList (*cloud) << ")." << std::endl;

	// Create the filtering object
	
	std::cerr << "PointCloud after filtering: " << cloud_filtered->width * cloud_filtered->height 
	<< " data points (" << pcl::getFieldsList (*cloud_filtered) << ")." << std::endl;

	pcl::PCDWriter writer;
	writer.write ("table_scene_lms400_downsampled.pcd", *cloud_filtered, 
	 Eigen::Vector4f::Zero (), Eigen::Quaternionf::Identity (), false);

	return (0);*/
}
