##!/bin/bash

# Copy Modified Files to modified git folder
cp -rf /opt/ros/humble/share/nav2_collision_monitor/launch ./nav2_collision_monitor
cp -rf /opt/ros/humble/share/nav2_collision_monitor/params ./nav2_collision_monitor

cp -rf /opt/ros/humble/share/nav2_bringup/launch ./nav2_bringup
cp -rf /opt/ros/humble/share/nav2_bringup/params ./nav2_bringup

cp -rf /opt/ros/humble/share/slam_toolbox/launch/localization_launch.py ./slam_toolbox/launch/localization_launch.py
cp -rf /opt/ros/humble/share/pointcloud_to_laserscan/launch ./pointcloud_to_laserscan

cp -rf /home/orin/lidar_ws/src/rslidar_sdk-v.1.5.13/config/config.yaml ./rslidar_sdk/config.yaml
cp -rf /home/orin/scout_ws/src/scout_ros2-humble/scout_description/urdf ./scout_description

