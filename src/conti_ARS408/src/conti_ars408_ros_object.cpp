#include <utility>
#include <string>
#include <vector>

#include <geometry_msgs/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

#include <conti_ars408/conti_ars408_ros_object.hpp>

namespace conti_ars408{

    conti_ars408::object_ROS::object_ROS(ros::NodeHandle &nh, conti_ars408::CONTI_ARS408_CAN *conti_ars408_can):
        conti_ars408_can_(conti_ars408_can){

            conti_0x60A_ObjectStatus_ = conti_ars408_can_->get_ObjectStatus();
            conti_0x60B_ObjectGeneral_ = conti_ars408_can_->get_ObjectGeneral();
            conti_0x60C_ObjectQuality_ = conti_ars408_can_->get_ObjectQuality();
            conti_0x60D_ObjectExtended_ = conti_ars408_can_->get_ObjectExtended();
            object_ROS_pub_ = nh.advertise<conti_ars408::radar_object>("conti_ars408/object_ROS", 10);
        }

    conti_ars408::object_ROS::~object_ROS(){}

    void conti_ars408::object_ROS::set_frame_id(std::string frame_id){

        frame_id_ = std::move(frame_id);
    }

    void conti_ars408::object_ROS::send_ObjectStatus(){

        radar_objects.header.stamp = ros::Time::now();
        radar_objects.header.frame_id = frame_id_;

        

        object_ROS_pub_.publish(radar_objects);

        radar_objects.object_info.clear();

        object_quality_id_ = 0;
        object_extended_id_ = 0;
    }

    void conti_ars408::object_ROS::send_ObjectGeneral(){

        radar_object_info object_info_new;

        object_info_new.ObjectID = conti_0x60B_ObjectGeneral_->get_ObjID();
        object_info_new.ObjectPosn.pose.position.x = 
            conti_0x60B_ObjectGeneral_->get_ObjDistLong();
        object_info_new.ObjectPosn.pose.position.y = 
            conti_0x60B_ObjectGeneral_->get_ObjDistLat();
        object_info_new.ObjectVrel.twist.linear.x = 
            conti_0x60B_ObjectGeneral_->get_ObjVrelLong();
        object_info_new.ObjectVrel.twist.linear.y = 
            conti_0x60B_ObjectGeneral_->get_ObjVrelLat();
        object_info_new.ObjectDynProp = conti_0x60B_ObjectGeneral_->get_ObjDynProp();
        object_info_new.ObjectRCS = conti_0x60B_ObjectGeneral_->get_ObjRCS();

        radar_objects.object_info.push_back(object_info_new);
    }

    void conti_ars408::object_ROS::send_ObjectQuality(){

        radar_objects.object_info[object_quality_id_].ObjectPosn.covariance[0] = 
            pow(conti_0x60C_ObjectQuality_->get_ObjDistLong_rms(), 2);
        radar_objects.object_info[object_quality_id_].ObjectPosn.covariance[7] = 
            pow(conti_0x60C_ObjectQuality_->get_ObjDistLat_rms(), 2);
        radar_objects.object_info[object_quality_id_].ObjectPosn.covariance[35] = 
            pow(conti_0x60C_ObjectQuality_->get_ObjOrientation_rms(), 2);
        radar_objects.object_info[object_quality_id_].ObjectVrel.covariance[0] = 
            pow(conti_0x60C_ObjectQuality_->get_ObjVrelLong_rms(), 2);
        radar_objects.object_info[object_quality_id_].ObjectVrel.covariance[7] = 
            pow(conti_0x60C_ObjectQuality_->get_ObjVrelLat_rms(), 2);
        radar_objects.object_info[object_quality_id_].ObjectArel.covariance[0] = 
            pow(conti_0x60C_ObjectQuality_->get_ObjArelLong_rms(), 2);
        radar_objects.object_info[object_quality_id_].ObjectArel.covariance[7] = 
            pow(conti_0x60C_ObjectQuality_->get_ObjArelLat_rms(), 2);
        radar_objects.object_info[object_quality_id_].ObjectMeasState = conti_0x60C_ObjectQuality_->get_ObjMeasState();
        radar_objects.object_info[object_quality_id_].ObjectProbOfExist = conti_0x60C_ObjectQuality_->get_ObjProbOfExist();

        object_quality_id_ = object_quality_id_ + 1;
    }

    void conti_ars408::object_ROS::send_ObjectExtended(){

        tf2::Quaternion q;
        q.setRPY(0, 0, conti_0x60D_ObjectExtended_->get_ObjOrientationAngle());
        radar_objects.object_info[object_extended_id_].ObjectPosn.pose.orientation.w = q.getW();
        radar_objects.object_info[object_extended_id_].ObjectPosn.pose.orientation.x = q.getX();
        radar_objects.object_info[object_extended_id_].ObjectPosn.pose.orientation.y = q.getY();
        radar_objects.object_info[object_extended_id_].ObjectPosn.pose.orientation.z = q.getZ();

        radar_objects.object_info[object_extended_id_].ObjectLength = conti_0x60D_ObjectExtended_->get_ObjLength();
        radar_objects.object_info[object_extended_id_].ObjectWidth = conti_0x60D_ObjectExtended_->get_ObjWidth();
        radar_objects.object_info[object_extended_id_].ObjectClass = conti_0x60D_ObjectExtended_->get_ObjClass();
        
        object_extended_id_ = object_extended_id_ + 1;
    }
}