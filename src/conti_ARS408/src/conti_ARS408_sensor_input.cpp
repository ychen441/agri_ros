#include "conti_ARS408/conti_ARS408_sensor_input.hpp"

namespace conti_ARS408{

    namespace input_messages{

        conti_0x300_SpeedInfo::conti_0x300_SpeedInfo(){}

        conti_0x300_SpeedInfo::~conti_0x300_SpeedInfo(){}

        /*It is noted that the speed and yaw rate of the radar should 
        be converted with measurement resolution and offset.*/

        void conti_0x300_SpeedInfo::set_Speed(double speed){
            
            int sensor_speed = static_cast<int>(speed / 0.02);
            SpeedInfo_msgs.speed_info.Speed1 = static_cast<uint64_t>(sensor_speed >> 8);
            SpeedInfo_msgs.speed_info.Speed2 = static_cast<uint64_t>(sensor_speed & 0b11111111);
        }

        void conti_0x300_SpeedInfo::set_SpeedDirection(def_SpeedDirection speed_direction){

            SpeedInfo_msgs.speed_info.SpeedDirection = static_cast<uint64_t>(speed_direction);
        }

        sensor_SpeedInfo *conti_0x300_SpeedInfo::get_SpeedInfo(){

            return &SpeedInfo_msgs;
        }

        conti_0x301_YawRateInfo::conti_0x301_YawRateInfo(){}

        conti_0x301_YawRateInfo::~conti_0x301_YawRateInfo(){}

        void conti_0x301_YawRateInfo::set_YawRate(double yaw_rate){

            int sensor_yaw_rate = static_cast<int>((yaw_rate + 327.8) / 0.01);
            YawRateInfo_msgs.yaw_rate_info.YawRate1 = static_cast<uint64_t>(sensor_yaw_rate >> 8);
            YawRateInfo_msgs.yaw_rate_info.YawRate2 = static_cast<uint64_t>(sensor_yaw_rate & 0b11111111);
        }

        sensor_YawRateInfo *conti_0x301_YawRateInfo::get_YawRateInfo(){

            return &YawRateInfo_msgs;
        }
    }
}   