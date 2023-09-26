#ifndef AGRI_SRC_CONTI_ARS408_SENSOR_STATE_H_
#define AGRI_SRC_CONTI_ARS408_SENSOR_STATE_H_

#include <iostream>
#include <cstdint>
#include <string>

namespace conti_ars408{

    namespace state_messages{

        typedef union sensor_RadarState
        {
            struct
            {
                uint64_t ReservedField1:6;
                uint64_t NVMReadStatus:1;
                uint64_t NVMWriteStatus:1;
                uint64_t MaxDistanceCfg1:8;
                uint64_t ReservedField2:1;
                uint64_t Voltage_Error:1;
                uint64_t Temporary_Error:1;
                uint64_t Temperature_Error:1;
                uint64_t Interference:1;
                uint64_t Persistent_Error:1;
                uint64_t MaxDistanceCfg2:2;
                uint64_t RadarPowerCfg1:2;
                uint64_t ReservedField3:6;
                uint64_t SensorID:3;
                uint64_t ReservedField4:1;
                uint64_t SortIndex:3;
                uint64_t RadarPowerCfg2:1;
                uint64_t ReservedField5:1;
                uint64_t CtrlRelayCfg:1;
                uint64_t OutputTypeCfg:2;
                uint64_t SendQualityCfg:1;
                uint64_t SendExtInfoCfg:1;
                uint64_t MotionRxState:2;
                uint64_t ReservedField6:8;
                uint64_t ReservedField7:2;
                uint64_t RCSThreshold:3;
                uint64_t ReservedField8:3;
            } radar_state = {};

            uint8_t radar_state_raw[8];
        } sensor_RadarState;

        class conti_0x201_RadarState
        {
            public:
             conti_0x201_RadarState();
             ~conti_0x201_RadarState();
             
             bool get_NVMReadStatus();
             bool get_NVMWriteStatus();
             uint64_t get_MaxDistanceCfg();
             bool get_Persistent_Error();
             bool get_Interference();
             bool get_Temperature_Error();
             bool get_Temporary_Error();
             bool get_Voltage_Error();
             int get_SensorID();
             int get_SortIndex();
             int get_RadarPowerCfg();
             bool get_CtrlRelayCfg();
             int get_OutputTypeCfg();
             bool get_SendQualityCfg();
             bool get_SendExtInfoCfg();
             int get_MotionRxState();
             int get_RCSThreshold();
             sensor_RadarState *get_RadarState();

            private:
             sensor_RadarState RadarState_msgs;
        };
    } //namespace state_messages
}

#endif //AGRI_SRC_CONTI_ARS408_SENSOR_STATE_H_