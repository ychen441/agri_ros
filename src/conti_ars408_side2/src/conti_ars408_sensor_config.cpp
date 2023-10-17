#include "conti_ars408_side2/conti_ars408_sensor_config.hpp"

namespace conti_ars408_side2{

    namespace config_messages{

        conti_0x200_RadarConfig::conti_0x200_RadarConfig(){

            RadarConfig_msgs.radar_config.MaxDistance_valid = 0;
            RadarConfig_msgs.radar_config.SensorID_valid = 0;
            RadarConfig_msgs.radar_config.RadarPower_valid = 0;
            RadarConfig_msgs.radar_config.OutputType_valid = 0;
            RadarConfig_msgs.radar_config.SendQuality_valid = 0;
            RadarConfig_msgs.radar_config.SendExtInfo_valid = 0;
            RadarConfig_msgs.radar_config.SortIndex_valid = 0;
            RadarConfig_msgs.radar_config.StoreInNVM_valid = 0;
            RadarConfig_msgs.radar_config.CtrlRelay_valid = 0;
            RadarConfig_msgs.radar_config.RCSThreshold_valid = 0;
        }

        conti_0x200_RadarConfig::~conti_0x200_RadarConfig(){}

        bool conti_0x200_RadarConfig::set_MaxDistance(uint64_t max_distance, bool valid)
        {

            if (max_distance < 96 || max_distance > 1200){

                return false;
            }

            max_distance /= 2; //Near scan maximum range
            RadarConfig_msgs.radar_config.MaxDistance1 = max_distance >> 2;
            RadarConfig_msgs.radar_config.MaxDistance2 = max_distance & 0b11;
            RadarConfig_msgs.radar_config.MaxDistance_valid = static_cast<uint64_t>(valid);
            return true;
        }

        bool conti_0x200_RadarConfig::set_SensorID(int sensor_id, bool valid){

            if (sensor_id < 0 || sensor_id > 7){

                return false;
            }

            RadarConfig_msgs.radar_config.SensorID = static_cast<uint64_t>(sensor_id);
            RadarConfig_msgs.radar_config.SensorID = static_cast<uint64_t>(valid);
            return true;
        }

        bool conti_0x200_RadarConfig::set_RadarPower(int radar_power, bool valid){

            if (radar_power < 0 || radar_power > 3){

                return false;
            }

            RadarConfig_msgs.radar_config.RadarPower = static_cast<uint64_t>(radar_power);
            RadarConfig_msgs.radar_config.RadarPower = static_cast<uint64_t>(valid);
            return true;
        }

        bool conti_0x200_RadarConfig::set_OutputType(int output_type, bool valid){

            if (output_type < 0 || output_type > 2){

                return false;
            }

            RadarConfig_msgs.radar_config.OutputType = static_cast<uint64_t>(output_type);
            RadarConfig_msgs.radar_config.OutputType = static_cast<uint64_t>(valid);
            return true;
        }

        void conti_0x200_RadarConfig::set_SendQuality(bool send_quality, bool valid){

            RadarConfig_msgs.radar_config.SendQuality = static_cast<uint64_t>(send_quality);
            RadarConfig_msgs.radar_config.SendQuality = static_cast<uint64_t>(valid);
        }

        void conti_0x200_RadarConfig::set_SendExtInfo(bool send_ext_info, bool valid){

            RadarConfig_msgs.radar_config.SendExtInfo = static_cast<uint64_t>(send_ext_info);
            RadarConfig_msgs.radar_config.SendExtInfo = static_cast<uint64_t>(valid);
        }

        bool conti_0x200_RadarConfig::set_SortIndex(int sort_index, bool valid){

            if (sort_index < 0 || sort_index > 2){

                return false;
            }

            RadarConfig_msgs.radar_config.SortIndex = static_cast<uint64_t>(sort_index);
            RadarConfig_msgs.radar_config.SortIndex = static_cast<uint64_t>(valid);
            return true;
        }

        void conti_0x200_RadarConfig::set_CtrlRelay(bool ctrl_relay, bool valid){

            RadarConfig_msgs.radar_config.CtrlRelay = static_cast<uint64_t>(ctrl_relay);
            RadarConfig_msgs.radar_config.CtrlRelay = static_cast<uint64_t>(valid);
        }

        void conti_0x200_RadarConfig::set_StoreInNVM(bool store_in_nvm, bool valid){

            RadarConfig_msgs.radar_config.StoreInNVM = static_cast<uint64_t>(store_in_nvm);
            RadarConfig_msgs.radar_config.StoreInNVM = static_cast<uint64_t>(valid);
        }

        bool conti_0x200_RadarConfig::set_RCSThreshold(int rcs_threshold, bool valid){

            if (rcs_threshold != 0 && rcs_threshold != 1){

                return false;
            }

            RadarConfig_msgs.radar_config.RCSThreshold = static_cast<uint64_t>(rcs_threshold);
            RadarConfig_msgs.radar_config.RCSThreshold = static_cast<uint64_t>(valid);
            return true;
        }

        sensor_RadarConfig *conti_0x200_RadarConfig::get_RadarConfig(){

            return &RadarConfig_msgs;
        }
    }
}