#ifndef AGRI_SRC_PERCEPTION_SYNC_TIME_SYNC_H_
#define AGRI_SRC_PERCEPTION_SYNC_TIME_SYNC_H_

#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/synchronizer.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/PointCloud2.h>

#include <conti_ars408/radar_cluster.h>
#include <conti_ars408/radar_cluster_info.h>
#include <conti_ars408/radar_object.h>
#include <conti_ars408/radar_object_info.h>

#include <visualization_msgs/MarkerArray.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>


namespace perception_sync{

    class time_sync{

        public:
        time_sync();
        void callback(
            const sensor_msgs::ImageConstPtr & image, 
            const visualization_msgs::Marker::ConstPtr & radar_clusters,
            const visualization_msgs::Marker::ConstPtr & radar_objects,
            const sensor_msgs::PointCloud2ConstPtr & lidar_pcd);
        
        private:
        ros::NodeHandle nh;
        ros::Publisher camera_pub;
        ros::Publisher radar_cluster_pub;
        ros::Publisher radar_object_pub;
        ros::Publisher lidar_pub;
        
        message_filters::Subscriber<sensor_msgs::Image> camera_sub;
        message_filters::Subscriber<visualization_msgs::Marker> radar_cluster_sub;
        message_filters::Subscriber<visualization_msgs::Marker> radar_object_sub;
        message_filters::Subscriber<sensor_msgs::PointCloud2> lidar_sub;   

        typedef message_filters::sync_policies::ApproximateTime<
            sensor_msgs::Image, visualization_msgs::Marker, 
            visualization_msgs::Marker, sensor_msgs::PointCloud2> time_sync_policy;
        typedef message_filters::Synchronizer<time_sync_policy> time_synchroniser;
        boost::shared_ptr<time_synchroniser> time_sync_;
    };
}

#endif //AGRI_SRC_PERCEPTION_SYNC_TIME_SYNC_H_