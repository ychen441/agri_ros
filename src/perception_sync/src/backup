#include <ros/ros.h>
#include "perception_sync/time_sync.hpp"


namespace perception_sync{

    perception_sync::time_sync::time_sync(){

        camera_sub.subscribe(nh, "/camera/color/image_raw", 1);
        lidar_sub.subscribe(nh, "/rslidar_points", 1);
        radar_cluster_sub.subscribe(nh, "/conti_ars408/cluster_ROS", 1);
        radar_object_sub.subscribe(nh, "/conti_ars408/object_ROS", 1);

        time_sync_.reset(

            new message_filters::Synchronizer<time_sync_policy>(
                
                time_sync_policy(10), camera_sub, lidar_sub, radar_cluster_sub, radar_object_sub)
        );

        time_sync_->registerCallback(boost::bind(
            
            &perception_sync::time_sync::callback, this, _1, _2, _3, _4));

        camera_pub = nh.advertise<sensor_msgs::Image>("synced/camera/image_raw", 10);
        lidar_pub = nh.advertise<sensor_msgs::PointCloud2>("synced/rslidar_points", 10);
        radar_cluster_pub = nh.advertise<conti_ars408::radar_cluster>("synced/cluster_ROS", 10);
        radar_object_pub = nh.advertise<conti_ars408::radar_object>("synced/object_ROS", 10);

    }

    void perception_sync::time_sync::callback(
        
        const sensor_msgs::ImageConstPtr & image, 
        const sensor_msgs::PointCloud2ConstPtr & pointcloud, 
        const conti_ars408::radar_cluster::ConstPtr & radar_clusters, 
        const conti_ars408::radar_object::ConstPtr & radar_objects){

            ROS_INFO("Check");
            camera_pub.publish(image);
            lidar_pub.publish(pointcloud);
            radar_cluster_pub.publish(radar_clusters);
            radar_object_pub.publish(radar_objects);
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "time_sync");
    perception_sync::time_sync perception_time_sync;
    ROS_INFO("main checked");
    ros::spin();
}