#include "conti_ars408_side2/conti_ars408_sensor_state.hpp"

namespace conti_ars408_side2{

    namespace state_messages{

        conti_0x201_RadarState::conti_0x201_RadarState(){}

        conti_0x201_RadarState::~conti_0x201_RadarState(){}

        bool conti_0x201_RadarState::get_NVMReadStatus(){

            return static_cast<bool>(RadarState_msgs.radar_state.NVMReadStatus);
        }

        bool conti_0x201_RadarState::get_NVMWriteStatus(){

            return static_cast<bool>(RadarState_msgs.radar_state.NVMWriteStatus);
        }

        uint64_t conti_0x201_RadarState::get_MaxDistanceCfg(){

            /*return (RadarState_msgs.radar_state.MaxDistanceCfg1 >> 2 | 
                    RadarState_msgs.radar_state.MaxDistanceCfg2); //Far scan maximum range*/

            return (RadarState_msgs.radar_state.MaxDistanceCfg1 << 2 | 
                    RadarState_msgs.radar_state.MaxDistanceCfg2) * 2; //Near scan maximum range
        }

        bool conti_0x201_RadarState::get_Persistent_Error(){

            return static_cast<bool>(RadarState_msgs.radar_state.Persistent_Error);
        }

        bool conti_0x201_RadarState::get_Interference(){

            return static_cast<bool>(RadarState_msgs.radar_state.Interference);
        }

        bool conti_0x201_RadarState::get_Temperature_Error(){

            return static_cast<bool>(RadarState_msgs.radar_state.Temperature_Error);
        }

        bool conti_0x201_RadarState::get_Temporary_Error(){

            return static_cast<bool>(RadarState_msgs.radar_state.Temporary_Error);
        }

        bool conti_0x201_RadarState::get_Voltage_Error(){

            return static_cast<bool>(RadarState_msgs.radar_state.Voltage_Error);
        }

        int conti_0x201_RadarState::get_SensorID(){

            return static_cast<int>(RadarState_msgs.radar_state.SensorID);
        }

        int conti_0x201_RadarState::get_SortIndex(){

            return static_cast<int>(RadarState_msgs.radar_state.SortIndex);
        }

        int conti_0x201_RadarState::get_RadarPowerCfg(){

            return static_cast<int>(RadarState_msgs.radar_state.RadarPowerCfg1 << 1 | 
                                    RadarState_msgs.radar_state.RadarPowerCfg2);
        }

        bool conti_0x201_RadarState::get_CtrlRelayCfg(){
            
            return static_cast<bool>(RadarState_msgs.radar_state.CtrlRelayCfg);
        }

        int conti_0x201_RadarState::get_OutputTypeCfg(){

            return static_cast<int>(RadarState_msgs.radar_state.OutputTypeCfg);
        }

        bool conti_0x201_RadarState::get_SendQualityCfg(){

            return static_cast<bool>(RadarState_msgs.radar_state.SendQualityCfg);
        }

        bool conti_0x201_RadarState::get_SendExtInfoCfg(){

            return static_cast<bool>(RadarState_msgs.radar_state.SendExtInfoCfg);
        }

        int conti_0x201_RadarState::get_MotionRxState(){

            return static_cast<int>(RadarState_msgs.radar_state.MotionRxState);
        }

        int conti_0x201_RadarState::get_RCSThreshold(){

            return static_cast<int>(RadarState_msgs.radar_state.RCSThreshold);
        }

        sensor_RadarState *conti_0x201_RadarState::get_RadarState(){

            return &RadarState_msgs;
        }
    }
}