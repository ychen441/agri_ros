#include <ros/ros.h>
#include "perception_sync/time_sync.hpp"


namespace perception_sync{

    perception_sync::time_sync::time_sync(){

        camera_sub.subscribe(nh, "/camera/color/image_raw", 1);
        radar_cluster_sub.subscribe(nh, "/cluster_RViz", 1);
        radar_object_sub.subscribe(nh, "/object_RViz", 1);
        lidar_sub.subscribe(nh, "/rslidar_points", 1);

        time_sync_.reset(

            new message_filters::Synchronizer<time_sync_policy>(
                
                time_sync_policy(10), camera_sub, radar_cluster_sub, radar_object_sub, lidar_sub)
        );

        time_sync_->registerCallback(boost::bind(
            
            &perception_sync::time_sync::callback, this, _1, _2, _3, _4));

        camera_pub = nh.advertise<sensor_msgs::Image>("/synced/camera/image_raw", 10);
        radar_cluster_pub = nh.advertise<visualization_msgs::Marker>("/synced/cluster_RViz", 10);
        radar_object_pub = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz", 10);
        lidar_pub = nh.advertise<sensor_msgs::PointCloud2>("/synced/rslidar_points", 10);

    }

    void perception_sync::time_sync::callback(
        
        const sensor_msgs::ImageConstPtr & image, 
        const visualization_msgs::Marker::ConstPtr & radar_clusters,
        const visualization_msgs::Marker::ConstPtr & radar_objects,
        const sensor_msgs::PointCloud2ConstPtr & lidar_pcd){

            ROS_INFO("Check");
            camera_pub.publish(image);
            radar_cluster_pub.publish(radar_clusters);
            radar_object_pub.publish(radar_objects);
            lidar_pub.publish(lidar_pcd);
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "time_sync");
    perception_sync::time_sync perception_time_sync;
    ROS_INFO("main checked");
    ros::spin();
}