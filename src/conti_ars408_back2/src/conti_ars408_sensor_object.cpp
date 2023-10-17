#include "conti_ars408_back2/conti_ars408_sensor_object.hpp"

namespace conti_ars408_back2{

    namespace object_messages{

        conti_0x60A_ObjectStatus::conti_0x60A_ObjectStatus(){}

        conti_0x60A_ObjectStatus::~conti_0x60A_ObjectStatus(){}

        int conti_0x60A_ObjectStatus::get_NofObjects(){

            return static_cast<int>(ObjectStatus_msgs.object_status.NofObjects);
        }

        int conti_0x60A_ObjectStatus::get_MeasCounter(){

            return static_cast<int>(ObjectStatus_msgs.object_status.MeasCounter1 << 8 | 
                                    ObjectStatus_msgs.object_status.MeasCounter2);
        }

        int conti_0x60A_ObjectStatus::get_InterfaceVersion(){

            return static_cast<int>(ObjectStatus_msgs.object_status.InterfaceVersion);
        }

        sensor_ObjectStatus *conti_0x60A_ObjectStatus::get_ObjectStatus(){
            
            return &ObjectStatus_msgs;
        }

        conti_0x60B_ObjectGeneral::conti_0x60B_ObjectGeneral(){}

        conti_0x60B_ObjectGeneral::~conti_0x60B_ObjectGeneral(){}

        int conti_0x60B_ObjectGeneral::get_ObjID(){

            return static_cast<int>(ObjectGeneral_msgs.object_general.ObjID);
        }

        double conti_0x60B_ObjectGeneral::get_ObjDistLong(){

            return static_cast<double>((ObjectGeneral_msgs.object_general.ObjDistLong1 << 5 | 
                                       ObjectGeneral_msgs.object_general.ObjDistLong2) * 0.2 + 500.0);
        }

        double conti_0x60B_ObjectGeneral::get_ObjDistLat(){

            return static_cast<double>((ObjectGeneral_msgs.object_general.ObjDistLat1 << 8 | 
                                       ObjectGeneral_msgs.object_general.ObjDistLat2) * 0.2 + 204.6);
        }

        double conti_0x60B_ObjectGeneral::get_ObjVrelLong(){

            return static_cast<double>((ObjectGeneral_msgs.object_general.ObjVrelLong1 << 2 | 
                                       ObjectGeneral_msgs.object_general.ObjVrelLong2) * 0.25 + 128.0);
        }

        int conti_0x60B_ObjectGeneral::get_ObjDynProp(){
            
            return static_cast<int>(ObjectGeneral_msgs.object_general.ObjDynProp);
        }

        double conti_0x60B_ObjectGeneral::get_ObjVrelLat(){

            return static_cast<double>((ObjectGeneral_msgs.object_general.ObjVrelLat1 << 8 | 
                                       ObjectGeneral_msgs.object_general.ObjVrelLat2) * 0.25 + 64.0);
        }

        double conti_0x60B_ObjectGeneral::get_ObjRCS(){

            return static_cast<double>((ObjectGeneral_msgs.object_general.ObjRCS) * 0.5 + 64.0);
        }

        sensor_ObjectGeneral *conti_0x60B_ObjectGeneral::get_ObjectGeneral(){

            return &ObjectGeneral_msgs;
        }

        conti_0x60C_ObjectQuality::conti_0x60C_ObjectQuality(){}

        conti_0x60C_ObjectQuality::~conti_0x60C_ObjectQuality(){}

        int conti_0x60C_ObjectQuality::get_ObjID()
        {

            return static_cast<int>(ObjectQuality_msgs.object_quality.ObjID);
        }

        double conti_0x60C_ObjectQuality::get_ObjDistLong_rms(){

            return standard_deviation_ObjLongLat[ObjectQuality_msgs.object_quality.ObjDistLong_rms];
        }

        double conti_0x60C_ObjectQuality::get_ObjVrelLong_rms(){

            return standard_deviation_ObjLongLat[ObjectQuality_msgs.object_quality.ObjVrelLong_rms];
        }

        double conti_0x60C_ObjectQuality::get_ObjDistLat_rms(){

            return standard_deviation_ObjLongLat[ObjectQuality_msgs.object_quality.ObjDistLat_rms1 << 2 | 
                                                 ObjectQuality_msgs.object_quality.ObjDistLat_rms2];
        }

        double conti_0x60C_ObjectQuality::get_ObjVrelLat_rms(){

            return standard_deviation_ObjLongLat[ObjectQuality_msgs.object_quality.ObjVrelLat_rms1 << 4 | 
                                                 ObjectQuality_msgs.object_quality.ObjVrelLat_rms2];
        }

        double conti_0x60C_ObjectQuality::get_ObjArelLat_rms(){
            
            return standard_deviation_ObjLongLat[ObjectQuality_msgs.object_quality.ObjArelLat_rms];
        }

        double conti_0x60C_ObjectQuality::get_ObjArelLong_rms(){

            return standard_deviation_ObjLongLat[ObjectQuality_msgs.object_quality.ObjArelLong_rms1 << 1 | 
                                                 ObjectQuality_msgs.object_quality.ObjArelLong_rms2];
        }

        double conti_0x60C_ObjectQuality::get_ObjOrientation_rms(){

            return standard_deviation_ObjOrientation[ObjectQuality_msgs.object_quality.ObjOrientation_rms1 << 3 | 
                                                     ObjectQuality_msgs.object_quality.ObjOrientation_rms2];
        }

        int conti_0x60C_ObjectQuality::get_ObjMeasState(){

            return static_cast<int>(ObjectQuality_msgs.object_quality.ObjMeasState);
        }

        int conti_0x60C_ObjectQuality::get_ObjProbOfExist(){
            
            return static_cast<int>(ObjectQuality_msgs.object_quality.ObjProbOfExist);
        }

        sensor_ObjectQuality *conti_0x60C_ObjectQuality::get_ObjectQuality(){

            return &ObjectQuality_msgs;
        }

        conti_0x60D_ObjectExtended::conti_0x60D_ObjectExtended(){}

        conti_0x60D_ObjectExtended::~conti_0x60D_ObjectExtended(){}

        int conti_0x60D_ObjectExtended::get_ObjID(){

            return static_cast<int>(ObjectExtended_msgs.object_extended.ObjID);
        }

        double conti_0x60D_ObjectExtended::get_ObjArelLong(){

            return static_cast<double>((ObjectExtended_msgs.object_extended.ObjArelLong1 << 3 | 
                                       ObjectExtended_msgs.object_extended.ObjArelLong2) * 0.01 + 10.0);
        }

        int conti_0x60D_ObjectExtended::get_ObjClass(){

            return static_cast<int>(ObjectExtended_msgs.object_extended.ObjClass);
        }

        double conti_0x60D_ObjectExtended::get_ObjArelLat(){

            return static_cast<double>((ObjectExtended_msgs.object_extended.ObjArelLat1 << 4 | 
                                       ObjectExtended_msgs.object_extended.ObjArelLat2) * 0.01 + 2.50);
        }

        double conti_0x60D_ObjectExtended::get_ObjOrientationAngle(){

            return static_cast<double>((ObjectExtended_msgs.object_extended.ObjOrientationAngle1 << 2 | 
                                        ObjectExtended_msgs.object_extended.ObjOrientationAngle2) * 0.4 + 180.0);
        }

        double conti_0x60D_ObjectExtended::get_ObjLength(){

            return static_cast<double>((ObjectExtended_msgs.object_extended.ObjLength) * 0.2);
        }

        double conti_0x60D_ObjectExtended::get_ObjWidth(){

            return static_cast<double>((ObjectExtended_msgs.object_extended.ObjWidth) * 0.2);
        }

        sensor_ObjectExtended *conti_0x60D_ObjectExtended::get_ObjectExtended(){

            return &ObjectExtended_msgs;
        }
    }
}