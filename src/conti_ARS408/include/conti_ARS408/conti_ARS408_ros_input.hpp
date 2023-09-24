#ifndef AGRI_SRC_CONTI_ARS408_ROS_INPUT_H_
#define AGRI_SRC_CONTI_ARS408_ROS_INPUT_H_

#include <ros/ros.h>
#include <cstdint>
#include <nav_msgs/Odometry.h>

#include "conti_ARS408/conti_ARS408_sensor_can.hpp"

namespace conti_ARS408{

    class input_ROS{

        public:
         input_ROS(ros::NodeHandle &nh, conti_ARS408::CONTI_ARS408_CAN *conti_ARS408_can);
         ~input_ROS();

        private:
         CONTI_ARS408_CAN *conti_ARS408_can_;
         input_messages::conti_0x300_SpeedInfo *conti_0x300_SpeedInfo_;
         input_messages::conti_0x301_YawRateInfo *conti_0x301_YawRateInfo_;
        
         void inputCallback(nav_msgs::Odometry msg);
         ros::Subscriber input_ROS_sub_;
    };
}

#endif //AGRI_SRC_CONTI_ARS408_ROS_INPUT_H_