cmake_minimum_required(VERSION 3.5)
project(conti_ars408_back2)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

# Default to C99
if (NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif ()

# Default to C++14
if (NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif ()

if (CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif ()

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED 
  COMPONENTS 
  roscpp  
  message_generation
  std_msgs
)

## System dependencies are found with CMake's conventions
 find_package(std_msgs REQUIRED)
 find_package(std_srvs REQUIRED)
 find_package(nav_msgs REQUIRED)
 find_package(geometry_msgs REQUIRED)
 find_package(visualization_msgs REQUIRED)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a exec_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a exec_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
add_message_files(DIRECTORY msg
  FILES
  radar_cluster_info.msg
  radar_cluster.msg
  radar_object_info.msg
  radar_object.msg
  radar_state.msg
 )

## Generate services in the 'srv' folder
 add_service_files(
  FILES
  config_MaxDistance.srv
  config_OutputType.srv
  config_RadarPower.srv
  config_RCSThreshold.srv
  config_SensorID.srv
  config_SortIndex.srv
 )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(DEPENDENCIES std_msgs geometry_msgs)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
    INCLUDE_DIRS 
    include
    LIBRARIES 
    conti_ars408_back2_can
    conti_ars408_back2_msg
    socket_can_back2
    CATKIN_DEPENDS 
    roscpp 
    message_runtime 
)

include_directories(${catkin_INCLUDE_DIRS})

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(include)


## Declare a C++ library
 add_library(conti_ars408_back2_msg
   src/conti_ars408_sensor_state.cpp
   src/conti_ars408_sensor_config.cpp
   src/conti_ars408_sensor_input.cpp
   src/conti_ars408_sensor_cluster.cpp
   src/conti_ars408_sensor_object.cpp
 )

 add_library(conti_ars408_back2_can
    src/conti_ars408_sensor_can.cpp
 )

 add_library(socket_can_back2
    src/socket_can.cpp
 )

 target_link_libraries(conti_ars408_back2_can conti_ars408_back2_msg socket_can_back2)
 

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure


## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
add_executable(conti_ars408_back2_ros
    src/conti_ars408_ros.cpp
    src/conti_ars408_ros_config.cpp
    src/conti_ars408_ros_state.cpp
    src/conti_ars408_ros_input.cpp
    src/conti_ars408_ros_cluster.cpp
    src/conti_ars408_ros_object.cpp
 )

add_dependencies(conti_ars408_back2_ros ${catkin_EXPORTED_TARGETS} conti_ars408_back2_generate_messages_cpp)

add_executable(conti_ars408_back2_rviz
    src/conti_ars408_rviz.cpp
 )

add_dependencies(conti_ars408_back2_rviz ${catkin_EXPORTED_TARGETS} conti_ars408_back2_generate_messages_cpp)
target_link_libraries(conti_ars408_back2_rviz ${catkin_LIBRARIES})

## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
 target_link_libraries(conti_ars408_back2_ros ${catkin_LIBRARIES})
 target_link_libraries(conti_ars408_back2_ros conti_ars408_back2_can ${catkin_LIBRARIES})

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# catkin_install_python(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html
# install(TARGETS ${PROJECT_NAME}_node
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark libraries for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_libraries.html
 install(
   TARGETS
   socket_can_back2
   conti_ars408_back2_can
   conti_ars408_back2_msg
   conti_ars408_back2_ros
   conti_ars408_back2_rviz
   ARCHIVE DESTINATION lib/${PROJECT_NAME}
   LIBRARY DESTINATION lib/${PROJECT_NAME}
   RUNTIME DESTINATION lib/${PROJECT_NAME}
 )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_conti_ars408.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
