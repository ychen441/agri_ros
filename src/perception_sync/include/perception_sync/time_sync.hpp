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
            const visualization_msgs::Marker::ConstPtr & radar_clusters);
        
        private:
        ros::NodeHandle nh;
        ros::Publisher camera_pub;
        ros::Publisher radar_cluster_pub;
        
        message_filters::Subscriber<sensor_msgs::Image> camera_sub;
        message_filters::Subscriber<visualization_msgs::Marker> radar_cluster_sub;

        typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, visualization_msgs::Marker> time_sync_policy;
        typedef message_filters::Synchronizer<time_sync_policy> time_synchroniser;
        boost::shared_ptr<time_synchroniser> time_sync_;
    };
}

#endif //AGRI_SRC_PERCEPTION_SYNC_TIME_SYNC_H_