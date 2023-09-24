#ifndef AGRI_SRC_CONTI_ARS408_SENSOR_INPUT_H_
#define AGRI_SRC_CONTI_ARS408_SENSOR_INPUT_H_

#include <iostream>
#include <cstdint>
#include <string>

namespace conti_ARS408{

    namespace input_messages{

        typedef enum def_SpeedDirection
        {
            Standstill = 0x0,
            Forward = 0x1,
            Backward = 0x2
        } def_SpeedDirection;
        
        typedef union sensor_SpeedInfo
        {
            struct
            {
                uint64_t Speed1:5;
                uint64_t ReservedField:1;
                uint64_t SpeedDirection:2;
                uint64_t Speed2:8;
            } speed_info = {};

            uint8_t speed_info_raw[2];
        }
        sensor_SpeedInfo;

        typedef union sensor_YawRateInfo
        {
            struct
            {
                uint64_t YawRate1:8;
                uint64_t YawRate2:8;
            } yaw_rate_info = {};

            uint8_t yaw_rate_info_raw[2];
        } 
        sensor_YawRateInfo;

        class conti_0x300_SpeedInfo
        {
            public:
             conti_0x300_SpeedInfo();
             ~conti_0x300_SpeedInfo();
             void set_Speed(double speed);
             void set_SpeedDirection(def_SpeedDirection speed_direction);
             sensor_SpeedInfo *get_SpeedInfo();

            private:
             sensor_SpeedInfo SpeedInfo_msgs;
        };

        class conti_0x301_YawRateInfo
        {
            public:
             conti_0x301_YawRateInfo();
             ~conti_0x301_YawRateInfo();
             void set_YawRate(double yaw_rate);
             sensor_YawRateInfo *get_YawRateInfo();

            private:
             sensor_YawRateInfo YawRateInfo_msgs;
        };
    } //namespace input_messages
}

#endif //AGRI_SRC_CONTI_ARS408_SENSOR_INPUT_H_