#ifndef AGRI_SRC_CONTI_ARS408_SENSOR_CONFIG_H_
#define AGRI_SRC_CONTI_ARS408_SENSOR_CONFIG_H_

#include <iostream>
#include <cstdint>
#include <string>

namespace conti_ars408_side2{

    namespace config_messages{

        typedef union sensor_RadarConfig
        {
            struct
            {
                uint64_t MaxDistance_valid:1;
                uint64_t SensorID_valid:1;
                uint64_t RadarPower_valid:1;
                uint64_t OutputType_valid:1;
                uint64_t SendQuality_valid:1;
                uint64_t SendExtInfo_valid:1;
                uint64_t SortIndex_valid:1;
                uint64_t StoreInNVM_valid:1;
                uint64_t MaxDistance1:8;
                uint64_t ReservedField1:6;
                uint64_t MaxDistance2:2;
                uint64_t ReservedField2:8;
                uint64_t SensorID:3;
                uint64_t OutputType:2;
                uint64_t RadarPower:3;
                uint64_t CtrlRelay_valid:1;
                uint64_t CtrlRelay:1;
                uint64_t SendQuality:1;
                uint64_t SendExtInfo:1;
                uint64_t SortIndex:3;
                uint64_t StoreInNVM:1;
                uint64_t RCSThreshold_valid:1;
                uint64_t RCSThreshold:3;
                uint64_t ReservedField3:4;
                uint64_t ReservedField4:8;
            } radar_config = {};

            uint8_t radar_config_raw[8];
        } sensor_RadarConfig;


        class conti_0x200_RadarConfig
        {
            public:
             conti_0x200_RadarConfig();
             ~conti_0x200_RadarConfig();

             bool set_MaxDistance(uint64_t max_distance, bool valid = true);
             bool set_SensorID(int sensor_id, bool valid = true);
             bool set_RadarPower(int radar_power, bool valid = true);
             bool set_OutputType(int output_type, bool valid = true);
             void set_SendQuality(bool send_quality, bool valid = true);
             void set_SendExtInfo(bool send_ext_info, bool valid = true);
             bool set_SortIndex(int sort_index, bool valid = true);
             void set_CtrlRelay(bool ctrl_relay, bool valid = true);
             void set_StoreInNVM(bool store_in_nvm, bool valid = true);
             bool set_RCSThreshold(int rcs_threshold, bool valid = true);
             sensor_RadarConfig *get_RadarConfig();

            private:
             sensor_RadarConfig RadarConfig_msgs;
        };
    } //namespace config_messages
}

#endif //AGRI_SRC_CONTI_ARS408_SENSOR_CONFIG_H_