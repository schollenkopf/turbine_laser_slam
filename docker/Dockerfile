FROM osrf/ros:melodic-desktop-full AS base

SHELL ["/bin/bash", "-c"]

#install dependency

#needed for ouster lib
RUN apt update && apt install libspdlog-dev 



COPY ../data/a107ac6c-305a-4208-a5a4-b4ef41c68c60/ros-bag/ /ros_bag/

# Create Colcon workspace
RUN mkdir -p /catkin_ws/src

#get ouster lib
COPY ../ouster-ros/ /catkin_ws/src/ouster_ros/

#Copy and cmake slam code
COPY ../turbine_laser_slam/ /catkin_ws/src/turbine_laser_slam/

WORKDIR /catkin_ws
RUN source /opt/ros/melodic/setup.bash \
    && catkin_make --cmake-args -DCMAKE_BUILD_TYPE=Release  
# -BUILD_PCAP=True

RUN echo "source devel/setup.bash" >> ~/.bashrc


