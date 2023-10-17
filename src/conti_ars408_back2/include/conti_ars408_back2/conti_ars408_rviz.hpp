#ifndef AGRI_SRC_CONTI_ARS408_RVIZ_H_
#define AGRI_SRC_CONTI_ARS408_RVIZ_H_

#include <ros/ros.h>
#include "conti_ars408_back2/radar_cluster.h"
#include "conti_ars408_back2/radar_object.h"

namespace conti_ars408_back2{

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

    class conti_ars408_RViz{

        public:
         conti_ars408_RViz();
         ~conti_ars408_RViz();

        private:
         void cluster_RViz(conti_ars408_back2::radar_cluster radar_clusters);
         void object_RViz(conti_ars408_back2::radar_object radar_objects);
         
         ros::Publisher cluster_RViz_pub_;
         ros::Publisher object_RViz_pub_;
         ros::Publisher velocity_RViz_pub_;
         
         ros::Subscriber cluster_RViz_sub_;
         ros::Subscriber object_RViz_sub_;
    };
}

#endif

