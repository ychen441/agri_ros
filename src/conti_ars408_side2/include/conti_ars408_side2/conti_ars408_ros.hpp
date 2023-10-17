#ifndef AGRI_SRC_CONTI_ARS408_ROS_H_
#define AGRI_SRC_CONTI_ARS408_ROS_H_

#include <cstdint>
#include <thread>
#include <ros/ros.h>

#include "conti_ars408_side2/conti_ars408_sensor_can.hpp"
#include "conti_ars408_side2/conti_ars408_ros_config.hpp"
#include "conti_ars408_side2/conti_ars408_ros_state.hpp"
#include "conti_ars408_side2/conti_ars408_ros_input.hpp"
#include "conti_ars408_side2/conti_ars408_ros_cluster.hpp"
#include "conti_ars408_side2/conti_ars408_ros_object.hpp"

namespace conti_ars408_side2{

    class CONTI_ARS408_ROS: public CONTI_ARS408_CAN {

        public:
         CONTI_ARS408_ROS(ros::NodeHandle &nh);
         ~CONTI_ARS408_ROS();

         void radar_ROS_receive();
         void radar_ROS_run_thread();

         void send_RadarState();
         void send_ClusterStatus();
         void send_ClusterGeneral();
         void send_ClusterQuality();
         void send_ObjectStatus();
         void send_ObjectGeneral();
         void send_ObjectQuality();
         void send_ObjectExtended();

        private:
         ros::NodeHandle nh_;
         std::thread radar_ROS_receive_;
         config_ROS config_ROS_;
         state_ROS state_ROS_;
         input_ROS input_ROS_;
         cluster_ROS cluster_ROS_;
         object_ROS object_ROS_;
    };
}

#endif //AGRI_SRC_CONTI_ARS408_ROS_H_
