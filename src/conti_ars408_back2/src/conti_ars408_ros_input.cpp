#include "conti_ars408_back2/conti_ars408_ros_input.hpp"

namespace conti_ars408_back2{

    conti_ars408_back2::input_ROS::input_ROS(ros::NodeHandle &nh, conti_ars408_back2::CONTI_ARS408_CAN *conti_ars408_can): 
        conti_ars408_can_(conti_ars408_can){

            conti_0x300_SpeedInfo_ = conti_ars408_can_->get_SpeedInfo();
            conti_0x301_YawRateInfo_ = conti_ars408_can_->get_YawRateInfo();
            input_ROS_sub_ = nh.subscribe("input_ROS_back2", 10, &input_ROS::inputCallback, this);
        }

    conti_ars408_back2::input_ROS::~input_ROS(){}

    void conti_ars408_back2::input_ROS::inputCallback(nav_msgs::Odometry msg){

        double long_speed = msg.twist.twist.linear.x;
        conti_0x300_SpeedInfo_->set_Speed(std::abs(long_speed));
        if (long_speed < 0){

            conti_0x300_SpeedInfo_->set_SpeedDirection(input_messages::def_SpeedDirection::Backward);
        } else if (long_speed > 0){

            conti_0x300_SpeedInfo_->set_SpeedDirection(input_messages::def_SpeedDirection::Forward);
        } else {

            conti_0x300_SpeedInfo_->set_SpeedDirection(input_messages::def_SpeedDirection::Standstill);
        }
        conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::SpeedInformation);

        double yaw_rate = msg.twist.twist.angular.z;
        conti_0x301_YawRateInfo_->set_YawRate(yaw_rate);
        conti_ars408_can_->send_CAN_messages_valid(def_can_msgs::YawRateInformation);
    }
}


