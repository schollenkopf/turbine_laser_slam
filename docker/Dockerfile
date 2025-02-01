FROM osrf/ros:melodic-desktop-full AS base
#FROM theasp/novnc:latest AS base
SHELL ["/bin/bash", "-c"]

#install dependency
#RUN apt update && apt install -y mesa-utils



COPY ../data/a107ac6c-305a-4208-a5a4-b4ef41c68c60/ros-bag/ /ros_bag/

# Create Colcon workspace
RUN mkdir -p /catkin_ws/src

#Copy and cmake slam code
COPY ../turbine_laser_slam/ /catkin_ws/src/turbine_laser_slam/
WORKDIR /catkin_ws
RUN source /opt/ros/melodic/setup.bash \
    && catkin_make 

RUN echo "source devel/setup.bash" >> ~/.bashrc


