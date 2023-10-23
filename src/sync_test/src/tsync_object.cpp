#include <ros/ros.h>
#include "time_sync/tsync_object.hpp"


namespace time_sync{

    time_sync::tsync_object::tsync_object(){

        camera_sub.subscribe(nh, "/camera/color/image_raw", 1);
        radar_object_sub.subscribe(nh, "/object_RViz", 1);
        radar_object_sub_side1.subscribe(nh, "/object_RViz_side1", 1);

        tsync_object_.reset(

            new message_filters::Synchronizer<tsync_object_policy>(
                
                tsync_object_policy(10), camera_sub, radar_object_sub, 
                                          radar_object_sub_side1)
        );

        tsync_object_->registerCallback(boost::bind(
            
            &time_sync::tsync_object::callback, this, _1, _2, _3));

        camera_pub = nh.advertise<sensor_msgs::Image>("/synced/camera/image_raw", 10);
        radar_object_pub = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz", 10);
        radar_object_pub_side1 = nh.advertise<visualization_msgs::Marker>("/synced/object_RViz_side1", 10);
    }

    void time_sync::tsync_object::callback(
        
        const sensor_msgs::ImageConstPtr & image, 
        const visualization_msgs::Marker::ConstPtr & radar_objects,
        const visualization_msgs::Marker::ConstPtr & radar_objects_side1){

            ROS_INFO("Check");
            camera_pub.publish(image);
            radar_object_pub.publish(radar_objects);
            radar_object_pub_side1.publish(radar_objects_side1);
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "tsync_object");
    time_sync::tsync_object tsync_object_mode;
    ROS_INFO("main checked");
    ros::spin();
}