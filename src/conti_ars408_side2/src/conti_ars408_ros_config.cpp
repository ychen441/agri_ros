#include "conti_ars408_side2/conti_ars408_ros_config.hpp"

namespace conti_ars408_side2{

    conti_ars408_side2::config_ROS::config_ROS(ros::NodeHandle &nh, conti_ars408_side2::CONTI_ARS408_CAN *conti_ars408_can): 
        conti_ars408_can_(conti_ars408_can){

            conti_0x200_RadarConfig_ = conti_ars408_can->get_RadarConfig();

            set_MaxDistance_srv_ = 
                nh.advertiseService("set_MaxDistance", &config_ROS::set_MaxDistance, this);
            set_SensorID_srv_ = 
                nh.advertiseService("set_SensorID", &config_ROS::set_SensorID, this);
            set_RadarPower_srv_ = 
                nh.advertiseService("set_RadarPower", &config_ROS::set_RadarPower, this);
            set_OutputType_srv_ = 
                nh.advertiseService("set_OutputType", &config_ROS::set_OutputType, this);
            set_SendQuality_srv_ = 
                nh.advertiseService("set_SendQuality", &config_ROS::set_SendQuality, this);
            set_SendExtInfo_srv_ = 
                nh.advertiseService("set_ExtInfo", &config_ROS::set_SendExtInfo, this);
            set_CtrlRelay_srv_ = 
                nh.advertiseService("set_CtrlRelay", &config_ROS::set_CtrlRelay, this);
            set_StoreInNVM_srv_ = 
                nh.advertiseService("set_StoreInNVM", &config_ROS::set_StoreInNVM, this);
            set_RCSThreshold_srv_ = 
                nh.advertiseService("set_RCSThreshold", &config_ROS::set_RCSThreshold, this);
        }

        /*std_srvs::SetBool: &req bool data; &res bool success, string message*/

        conti_ars408_side2::config_ROS::~config_ROS(){}

        bool conti_ars408_side2::config_ROS::set_MaxDistance(
            
            config_MaxDistance::Request &req, config_MaxDistance::Response &){

                if(!conti_0x200_RadarConfig_->set_MaxDistance(static_cast<uint64_t>(req.max_distance))){

                    return false;
                };
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_SensorID(
            
            config_SensorID::Request &req, config_SensorID::Response &){

                if(!conti_0x200_RadarConfig_->set_SensorID(req.sensorID)){

                    return false;
                };
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_RadarPower(
            
            config_RadarPower::Request &req, config_RadarPower::Response &){

                if(!conti_0x200_RadarConfig_->set_RadarPower(req.radar_power)){

                    return false;
                };
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_OutputType(
            
            config_OutputType::Request &req, config_OutputType::Response &){

                if(!conti_0x200_RadarConfig_->set_OutputType(req.output_type)){

                    return false;
                };
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_SendQuality(
            
            std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &){

                conti_0x200_RadarConfig_->set_SendQuality(static_cast<bool>(req.data));
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_SendExtInfo(
            
            std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &){

                conti_0x200_RadarConfig_->set_SendExtInfo(static_cast<bool>(req.data));
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_SortIndex(
            
            config_SortIndex::Request &req, config_SortIndex::Response &){

                if(!conti_0x200_RadarConfig_->set_SortIndex(req.sort_index)){

                    return false;
                };
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_CtrlRelay(
            
            std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &){

                conti_0x200_RadarConfig_->set_CtrlRelay(static_cast<bool>(req.data));
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_StoreInNVM(
            
            std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &){

                conti_0x200_RadarConfig_->set_StoreInNVM(static_cast<bool>(req.data));
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }

        bool conti_ars408_side2::config_ROS::set_RCSThreshold(
            
            config_RCSThreshold::Request &req, config_RCSThreshold::Response &){

                if(!conti_0x200_RadarConfig_->set_RCSThreshold(req.rcs_threshold)){

                    return false;
                };
                conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::RadarCfg);
                return true;
        }
}