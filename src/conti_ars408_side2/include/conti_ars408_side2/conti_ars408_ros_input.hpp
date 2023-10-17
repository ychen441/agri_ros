#ifndef AGRI_SRC_CONTI_ARS408_side2_ROS_INPUT_H_
#define AGRI_SRC_CONTI_ARS408_side2_ROS_INPUT_H_

#include <ros/ros.h>
#include <cstdint>
#include <nav_msgs/Odometry.h>

#include "conti_ars408_side2/conti_ars408_sensor_can.hpp"

namespace conti_ars408_side2{

    class input_ROS{

        public:
         input_ROS(ros::NodeHandle &nh, conti_ars408_side2::CONTI_ARS408_CAN *conti_ars408_can);
         ~input_ROS();

        private:
         CONTI_ARS408_CAN *conti_ars408_can_;
         input_messages::conti_0x300_SpeedInfo *conti_0x300_SpeedInfo_;
         input_messages::conti_0x301_YawRateInfo *conti_0x301_YawRateInfo_;
        
         void inputCallback(nav_msgs::Odometry msg);
         ros::Subscriber input_ROS_sub_;
    };
}

#endif //AGRI_SRC_CONTI_ARS408_side2_ROS_INPUT_H_