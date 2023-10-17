#ifndef AGRI_SRC_CONTI_ARS408_SENSOR_CLUSTER_H_
#define AGRI_SRC_CONTI_ARS408_SENSOR_CLUSTER_H_

#include <iostream>
#include <cstdint>
#include <string>

namespace conti_ars408_back1{

    namespace cluster_messages{
        
        typedef union sensor_ClusterStatus
        {
            struct
            {
                uint64_t NofClustersNear:8;
                uint64_t NofClustersFar:8;
                uint64_t MeasCounter1:8;
                uint64_t MeasCounter2:8;
                uint64_t ReservedField:4;
                uint64_t InterfaceVersion:4;
            } cluster_status = {};
            
            uint8_t cluster_status_raw[5];
        }
        sensor_ClusterStatus;

        typedef union sensor_ClusterGeneral
        {
            struct
            {
                uint64_t TargetID:8;
                uint64_t TargetDistLong1:8;
                uint64_t TargetDistLat1:2;
                uint64_t ReservedField1:1;
                uint64_t TargetDistLong2:5;
                uint64_t TargetDistLat2:8;
                uint64_t TargetVrelLong1:8;
                uint64_t TargetVrelLat1:6;
                uint64_t TargetVrelLong2:2;
                uint64_t TargetDynProp:3;
                uint64_t ReservedField2:2;
                uint64_t TargetVrelLat2:3;
                uint64_t TargetRCS:8;
            } cluster_general = {};

            uint8_t cluster_general_raw[8];
        }
        sensor_ClusterGeneral;

        typedef union sensor_ClusterQuality
        {
            struct
            {
                uint64_t TargetID:8;
                uint64_t TargetDistLat_rms1:3;
                uint64_t TargetDistLong_rms:5;
                uint64_t TargetVrelLat_rms1:1;
                uint64_t TargetVrelLong_rms:5;
                uint64_t TargetDistLat_rms2:2;
                uint64_t TargetPdH0:3;
                uint64_t ReservedField:1;
                uint64_t TargetVrelLat_rms2:4;
                uint64_t TargetAmbigState:3;
                uint64_t TargetInvalidState:5;
            } cluster_quality = {};
            
            uint8_t cluster_quality_raw[5];
        }
        sensor_ClusterQuality;


        class conti_0x600_ClusterStatus 
        {
            public:
             conti_0x600_ClusterStatus();
             ~conti_0x600_ClusterStatus();
             int get_NofClustersNear();
             int get_NofClusterFar();
             int get_MeasCounter();
             int get_InterfaceVersion();
             sensor_ClusterStatus *get_ClusterStatus();

            private:
             sensor_ClusterStatus ClusterStatus_msgs;
        };

        class conti_0x701_ClusterGeneral 
        {
            public:
             conti_0x701_ClusterGeneral();
             ~conti_0x701_ClusterGeneral();
             int get_TargetID();
             double get_TargetDistLong();
             double get_TargetDistLat();
             double get_TargetVrelLong();
             double get_TargetVrelLat();
             int get_TargetDynProp();
             double get_TargetRCS();
             sensor_ClusterGeneral *get_ClusterGeneral();

            private:
             sensor_ClusterGeneral ClusterGeneral_msgs;
        };

        class conti_0x702_ClusterQuality
        {
            public:
             conti_0x702_ClusterQuality();
             ~conti_0x702_ClusterQuality();
             int get_TargetID();
             double get_TargetDistLong_rms();
             double get_TargetDistLat_rms();
             double get_TargetVrelLong_rms();
             double get_TargetVrelLat_rms();
             int get_TargetPdH0();
             int get_TargetAmbigState();
             int get_TargetInvalidState();
             sensor_ClusterQuality *get_ClusterQuality();

            private:
             sensor_ClusterQuality ClusterQuality_msgs;
             double standard_deviation_cluster[32] = 
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
    }  //namespace cluster_messages
}

#endif //AGRI_SRC_CONTI_ARS408_SENSOR_CLUSTER_H_