docker run  -it --rm --name=ouster  --net=ros --env="DISPLAY=novnc:0.0" --env="ROS_MASTER_URI=http://roscore:11311" ros_melodic_slam
#roslaunch ouster_ros replay.launch