#include <ros/ros.h>
#include <visualization_msgs/MarkerArray.h>
#include <visualization_msgs/Marker.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

#include "conti_ars408_side2/radar_cluster.h"
#include "conti_ars408_side2/radar_object.h"
#include "conti_ars408_side2/conti_ars408_rviz.hpp"

namespace conti_ars408_side2{

    conti_ars408_side2::conti_ars408_RViz::conti_ars408_RViz(){

        ros::NodeHandle nh;

        /*cluster_RViz_pub_ = nh.advertise<visualization_msgs::MarkerArray>("cluster_RViz", 50);
        object_RViz_pub_ = nh.advertise<visualization_msgs::MarkerArray>("object_RViz", 50);
        velocity_RViz_pub_ = nh.advertise<visualization_msgs::MarkerArray>("velocity_RViz", 50);*/
        cluster_RViz_pub_ = nh.advertise<visualization_msgs::Marker>("cluster_RViz_side2", 50);
        object_RViz_pub_ = nh.advertise<visualization_msgs::Marker>("object_RViz_side2", 50);
        velocity_RViz_pub_ = nh.advertise<visualization_msgs::Marker>("velocity_RViz_side2", 50);
        
        /*Subscribe cluster_ROS and object_ROS.nodes with clusters and objs info, perspectively*/
        cluster_RViz_sub_ = nh.subscribe("conti_ars408_side2/cluster_ROS", 50, &conti_ars408_RViz::cluster_RViz, this);
        object_RViz_sub_ = nh.subscribe("conti_ars408_side2/object_ROS", 50, &conti_ars408_RViz::object_RViz, this);
    }

    conti_ars408_side2::conti_ars408_RViz::~conti_ars408_RViz(){}

    void conti_ars408_side2::conti_ars408_RViz::cluster_RViz(conti_ars408_side2::radar_cluster radar_clusters){

        /*visualization_msgs::MarkerArray cluster_array;*/

        for (auto cluster_info_new: radar_clusters.cluster_info){

            visualization_msgs::Marker cluster;

            cluster.type = visualization_msgs::Marker::POINTS;
            cluster.header.frame_id = radar_clusters.header.frame_id;
            cluster.header.stamp = radar_clusters.header.stamp;
            cluster.action = visualization_msgs::Marker::ADD; //add/modify an object
            cluster.id = cluster_info_new.ClusterID;
            cluster.points.push_back(cluster_info_new.ClusterPosn.pose.position);

            switch (cluster_info_new.ClusterPdh0){

                case invalid:{

                    cluster.color.r = 0.0f;
                    cluster.color.g = 0.0f;
                    cluster.color.b = 0.0f;

                    cluster.ns = "invalid";
                    break;
                }

                case prob_25:{

                    cluster.color.r = 0.0f;
                    cluster.color.g = 0.0f;
                    cluster.color.b = 1.0f;

                    cluster.ns = "False alarm prob < 25%";
                    break;
                }

                case prob_50:{

                    cluster.color.r = 0.0f;
                    cluster.color.g = 1.0f;
                    cluster.color.b = 0.0f;

                    cluster.ns = "False alarm prob < 50%";
                    break;
                }

                case prob_75:{

                    cluster.color.r = 0.0f;
                    cluster.color.g = 1.0f;
                    cluster.color.b = 1.0f;

                    cluster.ns = "False alarm prob < 75%";
                    break;
                }

                case prob_90:{

                    cluster.color.r = 1.0f;
                    cluster.color.g = 0.0f;
                    cluster.color.b = 0.0f;

                    cluster.ns = "False alarm prob < 90%";
                    break;
                }

                case prob_99:{

                    cluster.color.r = 1.0f;
                    cluster.color.g = 0.0f;
                    cluster.color.b = 1.0f;

                    cluster.ns = "False alarm prob < 99%";
                    break;
                }

                case prob_99_9:{

                    cluster.color.r = 1.0f;
                    cluster.color.g = 1.0f;
                    cluster.color.b = 0.0f;

                    cluster.ns = "False alarm prob < 99.9%";
                    break;
                }

                case prob_100:{

                    cluster.color.r = 1.0f;
                    cluster.color.g = 1.0f;
                    cluster.color.b = 1.0f;

                    cluster.ns = "False alarm prob <= 100%";
                    break;
                }
            }

            cluster.scale.x = 0.1;
            cluster.scale.y = 0.1;
            cluster.color.a = 1.0; //opacity: fully opaque
            cluster.lifetime.fromSec(0.1); //dead after 0.1 sec
            /*cluster_array.markers.push_back(cluster);*/
            cluster_RViz_pub_.publish(cluster);
        }
        /*cluster_RViz_pub_.publish(cluster_array);*/
        /*cluster_RViz_pub_.publish(cluster);*/
    }

    void conti_ars408_side2::conti_ars408_RViz::object_RViz(conti_ars408_side2::radar_object radar_objects){

        /*visualization_msgs::MarkerArray object_array;
        visualization_msgs::MarkerArray velocity_array;*/

        for(auto object_info_new: radar_objects.object_info){

            visualization_msgs::Marker object;

            object.type = visualization_msgs::Marker::LINE_STRIP;
            object.header.frame_id = radar_objects.header.frame_id;
            object.header.stamp = radar_objects.header.stamp;
            object.action = visualization_msgs::Marker::ADD;
            object.id = object_info_new.ObjectID;

            geometry_msgs::Point posn1, posn2, posn3, posn4;
            tf2::Quaternion q;
            double roll, pitch,yaw;

            q.setValue(
                object_info_new.ObjectPosn.pose.orientation.x,
                object_info_new.ObjectPosn.pose.orientation.y,
                object_info_new.ObjectPosn.pose.orientation.z,
                object_info_new.ObjectPosn.pose.orientation.w
            );
            tf2::Matrix3x3 m(q);
            m.getRPY(roll, pitch, yaw);

            if(isnan(yaw)){

                continue;
            }
            
            object.pose = object_info_new.ObjectPosn.pose;
            posn1.x = object_info_new.ObjectLength/2;
            posn1.y = object_info_new.ObjectWidth/2;
            posn2.x = object_info_new.ObjectLength/2;
            posn2.y = -object_info_new.ObjectWidth/2;
            posn3.x = -object_info_new.ObjectLength/2;
            posn3.y = -object_info_new.ObjectWidth/2;
            posn4.x = -object_info_new.ObjectLength/2;
            posn4.y = object_info_new.ObjectWidth/2;

            object.points.push_back(posn1);
            object.points.push_back(posn2);
            object.points.push_back(posn3);
            object.points.push_back(posn4);
            object.points.push_back(posn1);

            object.scale.x = 0.1;

            switch (object_info_new.ObjectProbOfExist){

                case invalid:{

                    object.ns = "invalid";
                    break;
                }

                case prob_25:{

                    object.ns = "Probability of existence < 25%";
                    break;
                }

                case prob_50:{

                    object.ns = "Probability of existence < 50%";
                    break;
                }

                case prob_75:{

                    object.ns = "Probability of existence < 75%";
                    break;
                }

                case prob_90:{

                    object.ns = "Probability of existence < 90%";
                    break;
                }

                case prob_99:{

                    object.ns = "Probability of existence < 99%";
                    break;
                }

                case prob_99_9:{

                    object.ns = "Probability of existence < 99.9%";
                    break;
                }

                case prob_100:{

                    object.ns = "Probability of existence <= 100%";
                    break;
                }
            }

        object.color.a = 1.0;
        object.lifetime.fromSec(0.1);
        /*object_array.markers.push_back(object);*/

        visualization_msgs::Marker velocity;

        velocity.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
        velocity.header.frame_id = radar_objects.header.frame_id;
        velocity.header.stamp = radar_objects.header.stamp;
        velocity.action = visualization_msgs::Marker::ADD;
        velocity.id= object_info_new.ObjectID;
        velocity.text = std::to_string(hypot(object_info_new.ObjectVrel.twist.linear.x,
                                             object_info_new.ObjectVrel.twist.linear.y)); //sqrt(x^2+y^2)
        velocity.pose = object_info_new.ObjectPosn.pose;
        velocity.scale.z = 1; //scale.z specifies the height of an uppercase "A"
        velocity.color.a = 1;

        /*velocity_array.markers.push_back(velocity);*/

        object_RViz_pub_.publish(object);
        velocity_RViz_pub_.publish(velocity);
        }

    /*object_RViz_pub_.publish(object_array);
    velocity_RViz_pub_.publish(velocity_array);*/
    }
}

int main(int argc, char **argv){

    ros::init(argc, argv, "conti_ars408_RViz");
    conti_ars408_side2::conti_ars408_RViz conti_ars408_rviz;
    ros::spin();
}
