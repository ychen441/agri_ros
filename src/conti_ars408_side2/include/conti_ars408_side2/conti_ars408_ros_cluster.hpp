#ifndef AGRI_SRC_CONTI_ARS408_side2_ROS_CLUSTER_H_
#define AGRI_SRC_CONTI_ARS408_side2_ROS_CLUSTER_H_

#include <ros/ros.h>
#include <cstdint>

#include "conti_ars408_side2/conti_ars408_sensor_cluster.hpp"
#include "conti_ars408_side2/conti_ars408_sensor_can.hpp"
#include "conti_ars408_side2/radar_cluster.h"

namespace conti_ars408_side2{

    class cluster_ROS{

        public:
         cluster_ROS(ros::NodeHandle &nh, conti_ars408_side2::CONTI_ARS408_CAN *conti_ars408_can);
         ~cluster_ROS();
         
         void set_frame_id(std::string frame_id);
         void send_ClusterStatus();
         void send_ClusterGeneral();
         void send_ClusterQuality();

        private:
         int cluster_id_;
         std::string frame_id_;
         conti_ars408_side2::radar_cluster radar_clusters;
         CONTI_ARS408_CAN *conti_ars408_can_;
         ros::Publisher cluster_ROS_pub_;

         cluster_messages::conti_0x600_ClusterStatus *conti_0x600_ClusterStatus_;
         cluster_messages::conti_0x701_ClusterGeneral *conti_0x701_ClusterGeneral_;
         cluster_messages::conti_0x702_ClusterQuality *conti_0x702_ClusterQuality_;
    };
}

#endif //AGRI_SRC_CONTI_ARS408_side2_ROS_CLUSTER_H_