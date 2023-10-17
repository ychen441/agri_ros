    #ifndef AGRI_SRC_CONTI_ARS408_back1_ROS_CONFIG_H_
    #define AGRI_SRC_CONTI_ARS408_back1_ROS_CONFIG_H_

#include <ros/ros.h>
#include <std_srvs/SetBool.h>
#include <cstdint>

#include "conti_ars408_back1/conti_ars408_sensor_can.hpp"
#include "conti_ars408_back1/config_MaxDistance.h"
#include "conti_ars408_back1/config_SensorID.h"
#include "conti_ars408_back1/config_RadarPower.h"
#include "conti_ars408_back1/config_OutputType.h"
#include "conti_ars408_back1/config_SortIndex.h"
#include "conti_ars408_back1/config_RCSThreshold.h"

namespace conti_ars408_back1{

    class config_ROS{

        public:
         config_ROS(ros::NodeHandle &nh, conti_ars408_back1::CONTI_ARS408_CAN *conti_ars408_can);
         ~config_ROS();

         bool set_MaxDistance(conti_ars408_back1::config_MaxDistance::Request &req,
                              conti_ars408_back1::config_MaxDistance::Response &);
         bool set_SensorID(conti_ars408_back1::config_SensorID::Request &req,
                           conti_ars408_back1::config_SensorID::Response &);
         bool set_RadarPower(conti_ars408_back1::config_RadarPower::Request &req,
                             conti_ars408_back1::config_RadarPower::Response &);
         bool set_OutputType(conti_ars408_back1::config_OutputType::Request &req,
                             conti_ars408_back1::config_OutputType::Response &);
         bool set_SendQuality(std_srvs::SetBool::Request &req,
                              std_srvs::SetBool::Response &);
         bool set_SendExtInfo(std_srvs::SetBool::Request &req,
                              std_srvs::SetBool::Response &);
         bool set_SortIndex(conti_ars408_back1::config_SortIndex::Request &req,
                            conti_ars408_back1::config_SortIndex::Response &);
         bool set_CtrlRelay(std_srvs::SetBool::Request &req,
                            std_srvs::SetBool::Response &);
         bool set_StoreInNVM(std_srvs::SetBool::Request &req,
                             std_srvs::SetBool::Response &);
         bool set_RCSThreshold(conti_ars408_back1::config_RCSThreshold::Request &req,
                               conti_ars408_back1::config_RCSThreshold::Response &);

        private:
         CONTI_ARS408_CAN *conti_ars408_can_;
         config_messages::conti_0x200_RadarConfig *conti_0x200_RadarConfig_;

         ros::ServiceServer set_MaxDistance_srv_;
         ros::ServiceServer set_SensorID_srv_;
         ros::ServiceServer set_RadarPower_srv_;
         ros::ServiceServer set_OutputType_srv_;
         ros::ServiceServer set_SendQuality_srv_;
         ros::ServiceServer set_SendExtInfo_srv_;
         ros::ServiceServer set_CtrlRelay_srv_;
         ros::ServiceServer set_StoreInNVM_srv_;
         ros::ServiceServer set_RCSThreshold_srv_;
    };
}

#endif //AGRI_SRC_CONTI_ARS408_ROS_CONFIG_H_