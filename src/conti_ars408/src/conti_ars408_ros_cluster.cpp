#include <utility>
#include <string>
#include <vector>
#include <conti_ars408/conti_ars408_ros_cluster.hpp>

namespace conti_ars408{

    conti_ars408::cluster_ROS::cluster_ROS(ros::NodeHandle &nh, conti_ars408::CONTI_ARS408_CAN *conti_ars408_can):
        cluster_id_(0), conti_ars408_can_(conti_ars408_can){

            conti_0x600_ClusterStatus_ = conti_ars408_can->get_ClusterStatus();
            conti_0x701_ClusterGeneral_ = conti_ars408_can->get_ClusterGeneral();
            conti_0x702_ClusterQuality_ = conti_ars408_can->get_ClusterQuality();
            cluster_ROS_pub_ = nh.advertise<conti_ars408::radar_cluster>("conti_ars408/cluster_ROS", 10);
        }

    conti_ars408::cluster_ROS::~cluster_ROS(){}

    void conti_ars408::cluster_ROS::set_frame_id(std::string frame_id){

        frame_id_ = std::move(frame_id);
    }

    void conti_ars408::cluster_ROS::send_ClusterStatus(){

        radar_clusters.header.stamp = ros::Time::now();
        radar_clusters.header.frame_id = frame_id_;
        cluster_ROS_pub_.publish(radar_clusters);

        radar_clusters.cluster_info.clear();

        cluster_id_ = 0;
    }

    void conti_ars408::cluster_ROS::send_ClusterGeneral(){

        radar_cluster_info cluster_info_new;

        cluster_info_new.ClusterID = conti_0x701_ClusterGeneral_->get_TargetID();
        cluster_info_new.ClusterPosn.pose.position.x = conti_0x701_ClusterGeneral_->get_TargetDistLong();
        cluster_info_new.ClusterPosn.pose.position.y = conti_0x701_ClusterGeneral_->get_TargetDistLat();
        cluster_info_new.ClusterVrel.twist.linear.x = conti_0x701_ClusterGeneral_->get_TargetVrelLong();
        cluster_info_new.ClusterVrel.twist.linear.y = conti_0x701_ClusterGeneral_->get_TargetVrelLat();
        cluster_info_new.ClusterDynProp = conti_0x701_ClusterGeneral_->get_TargetDynProp();
        cluster_info_new.ClusterRCS = conti_0x701_ClusterGeneral_->get_TargetRCS();

        radar_clusters.cluster_info.push_back(cluster_info_new);
    }


    void conti_ars408::cluster_ROS::send_ClusterQuality(){

        radar_clusters.cluster_info[cluster_id_].ClusterPosn.covariance[0] = 
            pow(conti_0x702_ClusterQuality_->get_TargetDistLong_rms(), 2);
        radar_clusters.cluster_info[cluster_id_].ClusterPosn.covariance[7] = 
            pow(conti_0x702_ClusterQuality_->get_TargetDistLat_rms(), 2);
        radar_clusters.cluster_info[cluster_id_].ClusterVrel.covariance[0] = 
            pow(conti_0x702_ClusterQuality_->get_TargetVrelLong_rms(), 2);
        radar_clusters.cluster_info[cluster_id_].ClusterVrel.covariance[7] = 
            pow(conti_0x702_ClusterQuality_->get_TargetVrelLat_rms(), 2);
        radar_clusters.cluster_info[cluster_id_].ClusterPdh0 = 
            conti_0x702_ClusterQuality_->get_TargetPdH0();
        radar_clusters.cluster_info[cluster_id_].ClusterAmbigState = 
            conti_0x702_ClusterQuality_->get_TargetAmbigState();
        radar_clusters.cluster_info[cluster_id_].ClusterInvalidState = 
            conti_0x702_ClusterQuality_->get_TargetInvalidState();

        cluster_id_ = cluster_id_ + 1;
    }
}