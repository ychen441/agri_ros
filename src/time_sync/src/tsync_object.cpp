#include <ros/ros.h>
#include "time_sync/tsync_object.hpp"


namespace time_sync{

    time_sync::tsync_object::tsync_object(){

        camera_sub.subscribe(nh, "/camera/color/image_raw", 1);
        radar_object_sub.subscribe(nh, "/object_RViz", 1);
        radar_object_sub_side1.subscribe(nh, "/object_RViz_side1", 1);
        radar_object_sub_side2.subscribe(nh, "/object_RViz_side2", 1);
        radar_object_sub_back1.subscribe(nh, "/object_RViz_back1", 1);
        radar_object_sub_back2.subscribe(nh, "/object_RViz_back2", 1);
        lidar_sub.subscribe(nh, "/rslidar_points", 1);

        tsync_object_.reset(

            new message_filters::Synchronizer<tsync_object_policy>(
                
                tsync_object_policy(10), camera_sub, radar_object_sub, 
                                          radar_object_sub_side1, radar_object_sub_side2,
                                          radar_object_sub_back1, radar_object_sub_back2, 
                                          lidar_sub)
        );

        tsync_object_->registerCallback(boost::bind(
            
            &time_sync::tsync_object::callback, this, _1, _2, _3, _4, _5, _6, _7));

        camera_pub = nh.advertise<sensor_msgs::Image>("/synced/camera/image_raw", 10);
        radar_object_pub = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz", 10);
        radar_object_pub_side1 = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz_side1", 10);
        radar_object_pub_side2 = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz_side2", 10);
        radar_object_pub_back1 = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz_back1", 10);
        radar_object_pub_back2 = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz_back2", 10);
        lidar_pub = nh.advertise<sensor_msgs::PointCloud2>("/synced/rslidar_points", 10);

    }

    void time_sync::tsync_object::callback(
        
        const sensor_msgs::ImageConstPtr & image, 
        const visualization_msgs::Marker::ConstPtr & radar_objects,
        const visualization_msgs::Marker::ConstPtr & radar_objects_side1,
        const visualization_msgs::Marker::ConstPtr & radar_objects_side2,
        const visualization_msgs::Marker::ConstPtr & radar_objects_back1,
        const visualization_msgs::Marker::ConstPtr & radar_objects_back2,
        const sensor_msgs::PointCloud2ConstPtr & lidar_pcd){

            ROS_INFO("Check");
            camera_pub.publish(image);
            radar_object_pub.publish(radar_objects);
            radar_object_pub_side1.publish(radar_objects_side1);
            radar_object_pub_side2.publish(radar_objects_side2);
            radar_object_pub_back1.publish(radar_objects_back1);
            radar_object_pub_back2.publish(radar_objects_back2);
            lidar_pub.publish(lidar_pcd);
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "tsync_object");
    time_sync::tsync_object tsync_object_mode;
    ROS_INFO("main checked");
    ros::spin();
}