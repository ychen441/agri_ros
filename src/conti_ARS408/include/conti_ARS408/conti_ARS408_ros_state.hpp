#ifndef AGRI_SRC_CONTI_ARS408_ROS_STATE_H_
#define AGRI_SRC_CONTI_ARS408_ROS_STATE_H_

#include <ros/ros.h>
#include <cstdint>

#include "conti_ARS408/conti_ARS408_sensor_can.hpp"
#include "conti_ARS408/radar_state.h"

namespace conti_ARS408{

    class state_ROS{

        public:
         state_ROS(ros::NodeHandle &nh, conti_ARS408::CONTI_ARS408_CAN *conti_ARS408_can);
         ~state_ROS();

         void send_RadarState();

        private:
         CONTI_ARS408_CAN *conti_ARS408_can_;
         ros::Publisher state_ROS_pub_;
         state_messages::conti_0x201_RadarState *conti_0x201_RadarState_;
    };
}

#endif //AGRI_SRC_CONTI_ARS408_ROS_STATE_H_