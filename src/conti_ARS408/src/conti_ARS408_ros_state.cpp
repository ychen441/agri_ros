#include "conti_ARS408/conti_ARS408_ros_state.hpp"

namespace conti_ARS408{

    conti_ARS408::state_ROS::state_ROS(ros::NodeHandle &nh, conti_ARS408::CONTI_ARS408_CAN *conti_ARS408_can): 
        conti_ARS408_can_(conti_ARS408_can){

            conti_0x201_RadarState_ = conti_ARS408_can->get_RadarState();

            state_ROS_pub_ = nh.advertise<radar_state>("state_ROS", 1); 
        }
    
    conti_ARS408::state_ROS::~state_ROS(){}

    void conti_ARS408::state_ROS::send_RadarState(){

        radar_state radar_state_info;

        radar_state_info.ReadStatus = conti_0x201_RadarState_->get_NVMReadStatus();
        radar_state_info.WriteStatus = conti_0x201_RadarState_->get_NVMWriteStatus();
        radar_state_info.VoltageError = conti_0x201_RadarState_->get_Voltage_Error();
        radar_state_info.TemporaryError = conti_0x201_RadarState_->get_Temporary_Error();
        radar_state_info.TemperatureError = conti_0x201_RadarState_->get_Temperature_Error();
        radar_state_info.Interference = conti_0x201_RadarState_->get_Interference();
        radar_state_info.PersistentError = conti_0x201_RadarState_->get_Persistent_Error();
        radar_state_info.MaxDistance = conti_0x201_RadarState_->get_MaxDistanceCfg();
        radar_state_info.SensorID = conti_0x201_RadarState_->get_SensorID();
        radar_state_info.SortIndex = conti_0x201_RadarState_->get_SortIndex();
        radar_state_info.RadarPower = conti_0x201_RadarState_->get_RadarPowerCfg();
        radar_state_info.CtrlRelay = conti_0x201_RadarState_->get_CtrlRelayCfg();
        radar_state_info.OutputType = conti_0x201_RadarState_->get_OutputTypeCfg();
        radar_state_info.SendQuality = conti_0x201_RadarState_->get_SendQualityCfg();
        radar_state_info.SendExtInfo = conti_0x201_RadarState_->get_SendExtInfoCfg();
        radar_state_info.MotionRxState = conti_0x201_RadarState_->get_MotionRxState();
        radar_state_info.RCSThreshold = conti_0x201_RadarState_->get_RCSThreshold();

        state_ROS_pub_.publish(radar_state_info);
    }
}