#ifndef AGRI_SRC_CONTI_ARS408_SENSOR_CAN_H_
#define AGRI_SRC_CONTI_ARS408_SENSOR_CAN_H_

#include <iostream>
#include <cstdint>
#include <string>

#include "conti_ars408_back1/socket_can.hpp"
#include "conti_ars408_back1/conti_ars408_sensor_cluster.hpp"
#include "conti_ars408_back1/conti_ars408_sensor_config.hpp"
#include "conti_ars408_back1/conti_ars408_sensor_input.hpp"
#include "conti_ars408_back1/conti_ars408_sensor_object.hpp"
#include "conti_ars408_back1/conti_ars408_sensor_state.hpp"

namespace conti_ars408_back1{

    typedef enum def_can_msgs
    {
        RadarCfg = 0x200,
        RadarState = 0x201,
        FilterCfg = 0x202,
        FilterState_Header = 0x203,
        FilterState_Cfg = 0x204,
        CollDetCfg = 0x400,
        CollDetRegionCfg = 0x401,
        CollDetState = 0x408,
        CollDetRegionState = 0x402,
        SpeedInformation = 0x300,
        YawRateInformation = 0x301,
        Cluster_0_Status = 0x600,
        Cluster_1_General = 0x701,
        Cluster_2_Quality = 0x702,
        Obj_0_Status = 0x60A,
        Obj_1_General = 0x60B,
        Obj_2_Quality = 0x60C,
        Obj_3_Extended = 0x60D,
        Obj_4_Warning = 0x60E,
        VersionID = 0x700,
        CollDetRelayCtrl = 0x8
    } 
    def_can_msgs;

    class CONTI_ARS408_CAN
    {
        public:
            CONTI_ARS408_CAN();
            CONTI_ARS408_CAN(std::string port);
            ~CONTI_ARS408_CAN();

            virtual bool get_CAN_messages_valid();
            virtual bool send_CAN_messages_valid(uint32_t frame_id);

            config_messages::conti_0x200_RadarConfig *get_RadarConfig();
            state_messages::conti_0x201_RadarState *get_RadarState();
            input_messages::conti_0x300_SpeedInfo *get_SpeedInfo();
            input_messages::conti_0x301_YawRateInfo *get_YawRateInfo();
            cluster_messages::conti_0x600_ClusterStatus *get_ClusterStatus();
            cluster_messages::conti_0x701_ClusterGeneral *get_ClusterGeneral();
            cluster_messages::conti_0x702_ClusterQuality *get_ClusterQuality();
            object_messages::conti_0x60A_ObjectStatus *get_ObjectStatus();
            object_messages::conti_0x60B_ObjectGeneral *get_ObjectGeneral();
            object_messages::conti_0x60C_ObjectQuality *get_ObjectQuality();
            object_messages::conti_0x60D_ObjectExtended *get_ObjectExtended();

            virtual void send_RadarState() {};
            virtual void send_ClusterStatus() {};
            virtual void send_ClusterGeneral() {};
            virtual void send_ClusterQuality() {};
            virtual void send_ObjectStatus() {};
            virtual void send_ObjectGeneral() {};
            virtual void send_ObjectQuality() {};
            virtual void send_ObjectExtended() {};

        private:
            conti_ars408_back1::SocketCAN can_;
            config_messages::conti_0x200_RadarConfig RadarCfg_;
            state_messages::conti_0x201_RadarState RadarState_;
            input_messages::conti_0x300_SpeedInfo SpeedInfo_;
            input_messages::conti_0x301_YawRateInfo YawRateInfo_;
            cluster_messages::conti_0x600_ClusterStatus ClusterStatus_;
            cluster_messages::conti_0x701_ClusterGeneral ClusterGeneral_;
            cluster_messages::conti_0x702_ClusterQuality ClusterQuality_;
            object_messages::conti_0x60A_ObjectStatus ObjectStatus_;
            object_messages::conti_0x60B_ObjectGeneral ObjectGeneral_;
            object_messages::conti_0x60C_ObjectQuality ObjectQuality_;
            object_messages::conti_0x60D_ObjectExtended ObjectExtended_;
    };
}  //namespace can_messages

#endif //AGRI_SRC_CONTI_ARS408_SENSOR_CAN_H_