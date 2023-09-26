#include "conti_ars408/conti_ars408_sensor_can.hpp"

namespace conti_ars408{

    CONTI_ARS408_CAN::CONTI_ARS408_CAN():
        can_("can0"){}

    CONTI_ARS408_CAN::CONTI_ARS408_CAN(std::string port):
        can_(port.c_str()){}
    
    conti_ars408::CONTI_ARS408_CAN::~CONTI_ARS408_CAN(){}

    bool CONTI_ARS408_CAN::get_CAN_messages_valid(){

        uint32_t frame_id;
        uint8_t data_length;
        uint8_t data[8] = {0};

        /*bool read(uint32_t * can_id, uint8_t * dlc, uint8_t * data)*/

        bool ReadStatus = can_.read(&frame_id, &data_length, data);
        if(!ReadStatus){

            return false;
        }

        switch(frame_id){

            case conti_ars408::def_can_msgs::RadarState:
                memcpy(RadarState_.get_RadarState()->radar_state_raw, data, data_length);
            send_RadarState();
            break;

            case conti_ars408::def_can_msgs::Cluster_0_Status:
                memcpy(ClusterStatus_.get_ClusterStatus()->cluster_status_raw, data, data_length);
            send_ClusterStatus();
            break;

            case conti_ars408::def_can_msgs::Cluster_1_General:
                memcpy(ClusterGeneral_.get_ClusterGeneral()->cluster_general_raw, data, data_length);
            send_ClusterGeneral();
            break;

            case conti_ars408::def_can_msgs::Cluster_2_Quality:
                memcpy(ClusterQuality_.get_ClusterQuality()->cluster_quality_raw, data, data_length);
            send_ClusterQuality();
            break;

            case conti_ars408::def_can_msgs::Obj_0_Status:
                memcpy(ObjectStatus_.get_ObjectStatus()->object_status_raw, data, data_length);
            send_ObjectStatus();
            break;

            case conti_ars408::def_can_msgs::Obj_1_General:
                memcpy(ObjectGeneral_.get_ObjectGeneral()->object_general_raw, data, data_length);
            send_ClusterGeneral();
            break;

            case conti_ars408::def_can_msgs::Obj_2_Quality:
                memcpy(ObjectQuality_.get_ObjectQuality()->object_quality_raw, data, data_length);
            send_ObjectQuality();
            break;

            case conti_ars408::def_can_msgs::Obj_3_Extended:
                memcpy(ObjectExtended_.get_ObjectExtended()->object_extended_raw, data, data_length);
            send_ObjectExtended();
            break;
        }
        return true;
    }

    /*bool write(uint32_t frame_id, uint8_t dlc, uint8_t * data);
    (uint8_t*8) for set_RadarConfig and (uint8_t*2) for set_SpeedInfo and set_YawRateInfo*/

    bool CONTI_ARS408_CAN::send_CAN_messages_valid(uint32_t frame_id){

        switch(frame_id){

            case conti_ars408::def_can_msgs::RadarCfg:
                can_.write(frame_id, 8, RadarCfg_.get_RadarConfig()->radar_config_raw);
            break;

            case conti_ars408::def_can_msgs::SpeedInformation:
                can_.write(frame_id, 2, SpeedInfo_.get_SpeedInfo()->speed_info_raw);
            break;

            case conti_ars408::def_can_msgs::YawRateInformation:
                can_.write(frame_id, 2, YawRateInfo_.get_YawRateInfo()->yaw_rate_info_raw);
            break;
        }
        return true;
    }

    config_messages::conti_0x200_RadarConfig *CONTI_ARS408_CAN::get_RadarConfig(){

        return &RadarCfg_;
    }

    state_messages::conti_0x201_RadarState *CONTI_ARS408_CAN::get_RadarState(){

        return &RadarState_;
    }

    input_messages::conti_0x300_SpeedInfo *CONTI_ARS408_CAN::get_SpeedInfo(){

        return &SpeedInfo_;
    }

    input_messages::conti_0x301_YawRateInfo *CONTI_ARS408_CAN::get_YawRateInfo(){

        return &YawRateInfo_;
    }

    cluster_messages::conti_0x600_ClusterStatus *CONTI_ARS408_CAN::get_ClusterStatus(){

        return &ClusterStatus_;
    }

    cluster_messages::conti_0x701_ClusterGeneral *CONTI_ARS408_CAN::get_ClusterGeneral(){

        return &ClusterGeneral_;
    }

    cluster_messages::conti_0x702_ClusterQuality *CONTI_ARS408_CAN::get_ClusterQuality(){

        return &ClusterQuality_;
    }

    object_messages::conti_0x60A_ObjectStatus *CONTI_ARS408_CAN::get_ObjectStatus(){

        return &ObjectStatus_;
    }

    object_messages::conti_0x60B_ObjectGeneral *CONTI_ARS408_CAN::get_ObjectGeneral(){

        return &ObjectGeneral_;
    }

    object_messages:: conti_0x60C_ObjectQuality *CONTI_ARS408_CAN::get_ObjectQuality(){

        return &ObjectQuality_;
    }

    object_messages::conti_0x60D_ObjectExtended *CONTI_ARS408_CAN::get_ObjectExtended(){

        return &ObjectExtended_;
    }
}