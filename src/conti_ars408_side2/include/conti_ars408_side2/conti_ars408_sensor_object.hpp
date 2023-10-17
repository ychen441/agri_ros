#ifndef AGRI_SRC_CONTI_ARS408_SENSOR_OBJECT_H_
#define AGRI_SRC_CONTI_ARS408_SENSOR_OBJECT_H_

#include <iostream>
#include <cstdint>
#include <string>

namespace conti_ars408_side2{

    namespace object_messages{

        typedef union sensor_ObjectStatus
        {
            struct
            {
                uint64_t NofObjects:8;
                uint64_t MeasCounter1:8;
                uint64_t MeasCounter2:8;
                uint64_t ReservedField:4;
                uint64_t InterfaceVersion:4;
            } object_status = {};

            uint8_t object_status_raw[4];
        } sensor_ObjectStatus;

        typedef union sensor_ObjectGeneral
        {
            struct
            {
                uint64_t ObjID:8;
                uint64_t ObjDistLong1:8;
                uint64_t ObjDistLat1:3;
                uint64_t ObjDistLong2:5;
                uint64_t ObjDistLat2:8;
                uint64_t ObjVrelLong1:8;
                uint64_t ObjVrelLat1:6;
                uint64_t ObjVrelLong2:2;
                uint64_t ObjDynProp:3;
                uint64_t ReservedField:2;
                uint64_t ObjVrelLat2:3;
                uint64_t ObjRCS:8;
            } object_general = {};

            uint8_t object_general_raw[8];
        } sensor_ObjectGeneral;

        typedef union sensor_ObjectQuality
        {
            struct
            {
                uint64_t ObjID:8;
                uint64_t ObjDistLat_rms1:3;
                uint64_t ObjDistLong_rms:5;
                uint64_t ObjVrelLat_rms1:1;
                uint64_t ObjVrelLong_rms:5;
                uint64_t ObjDistLat_rms2:2;
                uint64_t ObjArelLong_rms1:4;
                uint64_t ObjVrelLat_rms2:4;
                uint64_t ObjOrientation_rms1:2;
                uint64_t ObjArelLat_rms:5;
                uint64_t ObjArelLong_rms2:1;
                uint64_t ReservedField1:5;
                uint64_t ObjOrientation_rms2:3;
                uint64_t ReservedField2:2;
                uint64_t ObjMeasState:3;
                uint64_t ObjProbOfExist:3;
            } object_quality = {};

            uint8_t object_quality_raw[7];
        } sensor_ObjectQuality;

        typedef union sensor_ObjectExtended
        {
            struct
            {
                uint64_t ObjID:8;
                uint64_t ObjArelLong1:8;
                uint64_t ObjArelLat1:5;
                uint64_t ObjArelLong2:3;
                uint64_t ObjClass:3;
                uint64_t ReservedField1:1;
                uint64_t ObjArelLat2:4;
                uint64_t ObjOrientationAngle1:8;
                uint64_t ReservedField2:6;
                uint64_t ObjOrientationAngle2:2;
                uint64_t ObjLength:8;
                uint64_t ObjWidth:8;
            } object_extended = {};

            uint8_t object_extended_raw[8];
        } sensor_ObjectExtended;

        class conti_0x60A_ObjectStatus
        {
            public:
             conti_0x60A_ObjectStatus();
             ~conti_0x60A_ObjectStatus();
             int get_NofObjects();
             int get_MeasCounter();
             int get_InterfaceVersion();
             sensor_ObjectStatus *get_ObjectStatus();

            private:
             sensor_ObjectStatus ObjectStatus_msgs;
        };

        class conti_0x60B_ObjectGeneral
        {
            public:
             conti_0x60B_ObjectGeneral();
             ~conti_0x60B_ObjectGeneral();
             int get_ObjID();
             double get_ObjDistLong();
             double get_ObjDistLat();
             double get_ObjVrelLong();
             int get_ObjDynProp();
             double get_ObjVrelLat();
             double get_ObjRCS();
             sensor_ObjectGeneral *get_ObjectGeneral();

            private:
             sensor_ObjectGeneral ObjectGeneral_msgs;
        };

        class conti_0x60C_ObjectQuality
        {
            public:
             conti_0x60C_ObjectQuality();
             ~conti_0x60C_ObjectQuality();
             int get_ObjID();
             double get_ObjDistLong_rms();
             double get_ObjVrelLong_rms();
             double get_ObjDistLat_rms();
             double get_ObjVrelLat_rms();
             double get_ObjArelLat_rms();
             double get_ObjArelLong_rms();
             double get_ObjOrientation_rms();
             int get_ObjMeasState();
             int get_ObjProbOfExist();
             sensor_ObjectQuality *get_ObjectQuality();

            private:
             sensor_ObjectQuality ObjectQuality_msgs;

             double standard_deviation_ObjOrientation[32] = 
             {
                0.005, 0.007, 0.010, 0.014, 
                0.020, 0.029, 0.041, 0.058, 
                0.082, 0.116, 0.165, 0.234, 
                0.332, 0.471, 0.669, 0.949, 
                1.346, 1.909, 2.709, 3.843, 
                5.451, 7.734, 10.971, 15.565, 
                22.081, 31.325, 44.439, 63.044, 
                89.437, 126.881, 180.000
             };
             double standard_deviation_ObjLongLat[32] = 
             {
                0.005, 0.006, 0.008, 0.011, 
                0.014, 0.018, 0.023, 0.029, 
                0.038, 0.049, 0.063, 0.081, 
                0.105, 0.135, 0.174, 0.224,
                0.288, 0.371, 0.478, 0.616, 
                0.794, 1.023, 1.317, 1.697, 
                2.187, 2.817, 3.630, 4.676, 
                6.025, 7.762, 10.000
             };
        };

        class conti_0x60D_ObjectExtended
        {
            public:
             conti_0x60D_ObjectExtended();
             ~conti_0x60D_ObjectExtended();
             int get_ObjID();
             double get_ObjArelLong();
             int get_ObjClass();
             double get_ObjArelLat();
             double get_ObjOrientationAngle();
             double get_ObjLength();
             double get_ObjWidth();
             sensor_ObjectExtended *get_ObjectExtended();

            private:
             sensor_ObjectExtended ObjectExtended_msgs;
        }; 
    } //namespace object_messages
}

#endif //AGRI_SRC_CONTI_ARS408_SENSOR_OBJECT_H_