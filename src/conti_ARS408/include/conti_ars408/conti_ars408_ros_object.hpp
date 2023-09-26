#ifndef AGRI_SRC_CONTI_ARS408_ROS_OBJECT_H_
#define AGRI_SRC_CONTI_ARS408_ROS_OBJECT_H_

#include <ros/ros.h>
#include <cstdint>

#include "conti_ars408/conti_ars408_sensor_object.hpp"
#include "conti_ars408/conti_ars408_sensor_can.hpp"
#include "conti_ars408/radar_object.h"

namespace conti_ars408{

    class object_ROS{

        public:
         object_ROS(ros::NodeHandle &nh, conti_ars408::CONTI_ARS408_CAN *conti_ars408_can);
         ~object_ROS();

         void set_frame_id(std::string frame_id);
         void send_ObjectStatus();
         void send_ObjectGeneral();
         void send_ObjectQuality();
         void send_ObjectExtended();

        private:
         int object_id_;
         int object_quality_id_;
         int object_extended_id_;
         std::string frame_id_;
         conti_ars408::radar_object radar_objects;
         CONTI_ARS408_CAN *conti_ars408_can_;
         ros::Publisher object_ROS_pub_;

         object_messages::conti_0x60A_ObjectStatus *conti_0x60A_ObjectStatus_;
         object_messages::conti_0x60B_ObjectGeneral *conti_0x60B_ObjectGeneral_;
         object_messages::conti_0x60C_ObjectQuality *conti_0x60C_ObjectQuality_;
         object_messages::conti_0x60D_ObjectExtended *conti_0x60D_ObjectExtended_;
    };
}

#endif //AGRI_SRC_CONTI_ARS408_ROS_OBJECT_H_

