#include <ros/ros.h>
#include "time_sync/tsync_cluster.hpp"


namespace time_sync{

    time_sync::tsync_cluster::tsync_cluster(){

        camera_sub.subscribe(nh, "/camera/color/image_raw", 1);
        radar_cluster_sub.subscribe(nh, "/cluster_RViz", 1);
        radar_cluster_sub_side1.subscribe(nh, "/cluster_RViz_side1", 1);

        tsync_cluster_.reset(

            new message_filters::Synchronizer<tsync_cluster_policy>(
                
                tsync_cluster_policy(10), camera_sub, radar_cluster_sub, 
                                          radar_cluster_sub_side1)
        );

        tsync_cluster_->registerCallback(boost::bind(
            
            &time_sync::tsync_cluster::callback, this, _1, _2, _3));

        camera_pub = nh.advertise<sensor_msgs::Image>("/synced/camera/image_raw", 10);
        radar_cluster_pub = nh.advertise<visualization_msgs::Marker>("/synced/cluster_RViz", 10);
        radar_cluster_pub_side1 = nh.advertise<visualization_msgs::Marker>("/synced/cluster_RViz_side1", 10);
    }

    void time_sync::tsync_cluster::callback(
        
        const sensor_msgs::ImageConstPtr & image, 
        const visualization_msgs::Marker::ConstPtr & radar_clusters,
        const visualization_msgs::Marker::ConstPtr & radar_clusters_side1){

            ROS_INFO("Check");
            camera_pub.publish(image);
            radar_cluster_pub.publish(radar_clusters);
            radar_cluster_pub_side1.publish(radar_clusters_side1);
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "tsync_cluster");
    time_sync::tsync_cluster tsync_cluster_mode;
    ROS_INFO("main checked");
    ros::spin();
}