#include <ros/ros.h>

#include "conti_ars408_side1/conti_ars408_ros.hpp"

namespace conti_ars408_side1{

    CONTI_ARS408_ROS::CONTI_ARS408_ROS(ros::NodeHandle &nh):
        nh_(nh),
        config_ROS_(nh_, this), 
        state_ROS_(nh_, this), 
        input_ROS_(nh_, this), 
        cluster_ROS_(nh_, this), 
        object_ROS_(nh_, this) {

            ros::NodeHandle private_nh("~");
            std::string frame_id;
            private_nh.param<std::string>("frame_id", frame_id, std::string("radar"));
            cluster_ROS_.set_frame_id(frame_id);
            object_ROS_.set_frame_id(frame_id);
        }

    conti_ars408_side1::CONTI_ARS408_ROS::~CONTI_ARS408_ROS(){}

    void conti_ars408_side1::CONTI_ARS408_ROS::radar_ROS_receive(){

        while (ros::ok()){

            get_CAN_messages_valid();
        }
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::radar_ROS_run_thread(){

        radar_ROS_receive_ = std::thread(std::bind(&conti_ars408_side1::CONTI_ARS408_ROS::radar_ROS_receive, this));
        radar_ROS_receive_.detach();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_RadarState(){

        state_ROS_.send_RadarState();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_ClusterStatus(){

        cluster_ROS_.send_ClusterStatus();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_ClusterGeneral(){

        cluster_ROS_.send_ClusterGeneral();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_ClusterQuality(){

        cluster_ROS_.send_ClusterQuality();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_ObjectStatus(){

        object_ROS_.send_ObjectStatus();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_ObjectGeneral(){

        object_ROS_.send_ObjectGeneral();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_ObjectQuality(){

        object_ROS_.send_ObjectQuality();
    }

    void conti_ars408_side1::CONTI_ARS408_ROS::send_ObjectExtended(){

        object_ROS_.send_ObjectExtended();
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "conti_ars408_ROS");
    ros::NodeHandle nh;
    conti_ars408_side1::CONTI_ARS408_ROS conti_ars408_ros_(nh);
    conti_ars408_ros_.radar_ROS_run_thread();
    ros::spin();
}