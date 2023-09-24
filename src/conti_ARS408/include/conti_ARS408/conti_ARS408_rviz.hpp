#ifndef AGRI_SRC_CONTI_ARS408_RVIZ_H_
#define AGRI_SRC_CONTI_ARS408_RVIZ_H_

#include <ros/ros.h>
#include "conti_ARS408/radar_cluster.h"
#include "conti_ARS408/radar_object.h"

namespace conti_ARS408{

    /*Define Probabilities for ClusterPdh0 and ObjectProbofExist*/

    enum def_Prob
    {
        invalid,
        prob_25,
        prob_50,
        prob_75,
        prob_90,
        prob_99,
        prob_99_9,
        prob_100
    };

    class conti_ARS408_RViz{

        public:
         conti_ARS408_RViz();
         ~conti_ARS408_RViz();

        private:
         void cluster_RViz(conti_ARS408::radar_cluster clusters);
         void object_RViz(conti_ARS408::radar_object objects);
         
         ros::Publisher cluster_RViz_pub_;
         ros::Publisher object_RViz_pub_;
         ros::Publisher velocity_RViz_pub_;
         
         ros::Subscriber cluster_RViz_sub_;
         ros::Subscriber object_RViz_sub_;
    };
}

#endif

