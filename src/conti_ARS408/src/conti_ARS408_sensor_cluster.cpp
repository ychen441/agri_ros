#include "conti_ARS408/conti_ARS408_sensor_cluster.hpp"

namespace conti_ARS408{

    namespace cluster_messages{

        conti_0x600_ClusterStatus::conti_0x600_ClusterStatus(){}

        conti_0x600_ClusterStatus::~conti_0x600_ClusterStatus(){}

        int conti_0x600_ClusterStatus::get_NofClustersNear(){

            return static_cast<int>(ClusterStatus_msgs.cluster_status.NofClustersNear);
        }

        int conti_0x600_ClusterStatus::get_NofClusterFar()
        {

            return static_cast<int>(ClusterStatus_msgs.cluster_status.NofClustersFar);
        }

        int conti_0x600_ClusterStatus::get_MeasCounter(){

            return static_cast<int>(ClusterStatus_msgs.cluster_status.MeasCounter1 << 8 | 
                                    ClusterStatus_msgs.cluster_status.MeasCounter2);
        }

        int conti_0x600_ClusterStatus::get_InterfaceVersion(){

            return static_cast<int>(ClusterStatus_msgs.cluster_status.InterfaceVersion);
        }

        sensor_ClusterStatus *conti_0x600_ClusterStatus::get_ClusterStatus(){

            return &ClusterStatus_msgs;
        }

        conti_0x701_ClusterGeneral::conti_0x701_ClusterGeneral(){}

        conti_0x701_ClusterGeneral::~conti_0x701_ClusterGeneral(){}

        int conti_0x701_ClusterGeneral::get_TargetID(){

            return static_cast<int>(ClusterGeneral_msgs.cluster_general.TargetID);
        }

        double conti_0x701_ClusterGeneral::get_TargetDistLong(){

            return static_cast<double>((ClusterGeneral_msgs.cluster_general.TargetDistLong1 << 5 | 
                                        ClusterGeneral_msgs.cluster_general.TargetDistLong2) * 0.2 + 500.0);
        }

        double conti_0x701_ClusterGeneral::get_TargetDistLat(){

            return static_cast<double>((ClusterGeneral_msgs.cluster_general.TargetDistLat1 << 8 | 
                                        ClusterGeneral_msgs.cluster_general.TargetDistLat2) * 0.2 + 102.3);
        }

        double conti_0x701_ClusterGeneral::get_TargetVrelLong(){

            return static_cast<double>((ClusterGeneral_msgs.cluster_general.TargetVrelLong1 << 2 | 
                                        ClusterGeneral_msgs.cluster_general.TargetVrelLong2) * 0.25 + 128.0);
        }

        double conti_0x701_ClusterGeneral::get_TargetVrelLat(){

            return static_cast<double>((ClusterGeneral_msgs.cluster_general.TargetVrelLat1 << 3 | 
                                        ClusterGeneral_msgs.cluster_general.TargetVrelLat2) * 0.25 + 64.0);
        }

        int conti_0x701_ClusterGeneral::get_TargetDynProp(){

            return static_cast<int>(ClusterGeneral_msgs.cluster_general.TargetDynProp);
        }

        double conti_0x701_ClusterGeneral::get_TargetRCS(){

            return static_cast<double>((ClusterGeneral_msgs.cluster_general.TargetRCS) * 0.5 + 64.0);
        }

        sensor_ClusterGeneral *conti_0x701_ClusterGeneral::get_ClusterGeneral(){
            
            return &ClusterGeneral_msgs;
        }

        conti_0x702_ClusterQuality::conti_0x702_ClusterQuality(){}

        conti_0x702_ClusterQuality::~conti_0x702_ClusterQuality(){}

        int conti_0x702_ClusterQuality::get_TargetID(){

            return static_cast<int>(ClusterQuality_msgs.cluster_quality.TargetID);
        }

        double conti_0x702_ClusterQuality::get_TargetDistLong_rms(){

            return standard_deviation_cluster[ClusterQuality_msgs.cluster_quality.TargetDistLong_rms];
        }

        double conti_0x702_ClusterQuality::get_TargetDistLat_rms(){

            return standard_deviation_cluster[ClusterQuality_msgs.cluster_quality.TargetDistLat_rms1 << 2 | 
                                              ClusterQuality_msgs.cluster_quality.TargetDistLat_rms2];
        }

        double conti_0x702_ClusterQuality::get_TargetVrelLong_rms(){
            
            return standard_deviation_cluster[ClusterQuality_msgs.cluster_quality.TargetVrelLong_rms];
        }

        double conti_0x702_ClusterQuality::get_TargetVrelLat_rms(){

            return standard_deviation_cluster[ClusterQuality_msgs.cluster_quality.TargetVrelLat_rms1 << 4 | 
                                              ClusterQuality_msgs.cluster_quality.TargetVrelLat_rms2];
        }

        int conti_0x702_ClusterQuality::get_TargetPdH0(){

            return standard_deviation_cluster[ClusterQuality_msgs.cluster_quality.TargetPdH0];
        }

        int conti_0x702_ClusterQuality::get_TargetAmbigState(){

            return static_cast<int>(ClusterQuality_msgs.cluster_quality.TargetAmbigState);
        }

        int conti_0x702_ClusterQuality::get_TargetInvalidState(){

            return static_cast<int>(ClusterQuality_msgs.cluster_quality.TargetInvalidState);
        }

        sensor_ClusterQuality *conti_0x702_ClusterQuality::get_ClusterQuality(){

            return &ClusterQuality_msgs;
        }
    }
}